module("luci.controller.zl.sysinfo", package.seeall)

local socket = require("socket")
local http = require("socket.http")
local fs = require("nixio.fs")

function index()
	callRadioAPI()
	print("doing something")
	entry({"zl", "system", "info"}, template("zl_templates/sysinfo_template")).dependent=false
end

function callRadioAPI()
	local body, headers, code = http.request("http://192.168.2.50")
	print("this is body: ", body, "this is headers: ", headers, " this is status code: ", code)
	fs.writefile("/usr/lib/lua/luci/controller/zl/justwrotethis.txt", body)
end

callRadioAPI()
