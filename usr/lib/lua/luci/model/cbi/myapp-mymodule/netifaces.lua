m = Map("network", "Network")

s = m:section(TypedSection, "interface", "Interfaces")
s.addremove = true
function s:filter(value)
	return value ~= "loopback" and value
end
s:depends("proto", "static")
s:depends("proto", "dhcp")

p = s:option(ListValue, "proto", "Protocol")
p:value("static", "static")
p:value("dhcp", "DHCP")
p.default = "static"

s:option(Value, "ifname", "interface", "the physical interface to be used")

s:option(Value, "ipaddr", translate("IP Address"))

s:option(Value, "netmask", "Netmask"):depends("proto", "static")

mtu = s:option(Value, "mtu", "MTU")
mtu.optional = true

dns = s:option(Value, "dns", "DNS-Server")
dns:depends("proto", "static")
dns.optional = true
function dns:validate(value)
	return value:match("[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+")
end

gw = s:option(Value, "gateway", "Gateway")
gw:depends("proto", "static")
gw.rmempty = true

return m
