module("luci.controller.zl.sysinfo", package.seeall)

local socket = require("socket")
local http = require("socket.http")
local fs = require("nixio.fs")

function callRadioAPI()
	local body, headers, code = http.request("http://192.168.2.50")
	print("this is body: ", body, "this is headers: ", headers)
	fs.write("/usr/lib/lua/luci/zl_template_config/zl_config", body)
end

function index()
	entry({"zl", "system", "callRadio"}, call("callRadioAPI")).dependent=false
	entry({"zl", "system", "info"}, template("zl_templates/sysinfo_template")).dependent=false
end

