require("luci.sys")

m=Map("vlmcsd", translate("vlmcsd"),
    translate("Configure vlmcsd service (Windows/Office KMS activation service)."))

s=m:section(TypedSection, "vlmcsd", translate("Settings"))
s.annonymous=true
s:option(Flag, "enabled", translate("Enable"))
port =s:option(Value, "port", translate("Port"))
port.rmempty = true
s:option(Flag, "useepifile", translate("Use File"), translate("Use vlmcsd.ini file, not required"))

local apply = luci.http.formvalue("cbi.apply")
if apply then
        io.popen("/etc/init.d/vlmcsd restart")
end

return m
