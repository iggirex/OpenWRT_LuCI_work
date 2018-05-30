module("luci.controller.zl.example_sysinfo", package.seeall)

function index()
	entry({"zl", "test", "info"}, template("zl_templates/sysinfo_template")).dependent=false
end
