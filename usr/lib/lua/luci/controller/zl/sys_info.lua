module("luci.controller.zl.sys_info", package.seeall)

function index()
	entry({"zl", "system", "info"}, template("zl_templates/sys_info")).dependent=false
	entry({"zl", "local", "diagnostics"}, template("zl_templates/loc_diagnostics")).dependent=false
end

