module("luci.controller.myapp.mymodule", package.seeall)

function index()
	entry({"click", "here", "now"}, call("action_tryme"), "Click here", 10).dependent=false
	entry({"path", "to", "template"}, template("myapp-mymodule/reboot"), "Reboot", 20).dependent=false
	entry({"admin", "network", "interfaces"}, cbi("myapp-mymodule/netifaces"), "Network Interfaces", 30).dependent=false
end

function action_tryme()
	luci.http.prepare_content("plain/text")
	luci.http.write("Haha, rebooting now...")
	luci.sys.reboot()
end
