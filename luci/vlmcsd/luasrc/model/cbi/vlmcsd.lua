m=Map("vlmcsd", translate("vlmcsd"),
    translate("Configure vlmcsd service."))

s=m:section(TypedSection, "vlmcsd", translate("Settings"))
s.annonymous=true
s:option(Flag, "enabled", translate("Enable"))
port =s:option(Value, "port", translate("Port"))
port.rmempty = true

return m
