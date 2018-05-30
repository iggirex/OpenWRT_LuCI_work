# module("luci.controller.admin.index", package.seeall)

function getRadioAPI()
	local fs = require"nixio.fs"
#	fs.writefile("/usr/lib/lua/luci/controller/zl", "this is test file!")
end

getRadioAPI()
