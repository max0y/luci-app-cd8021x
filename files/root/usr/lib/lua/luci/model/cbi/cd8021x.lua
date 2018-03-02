require("luci.sys")

m = Map("cd8021x", translate("cd802.1x client"), translate("Configure IEEE 802.1x wired authentication using wpa_supplicant, you should change your WAN interface protocol as \"<span style=\"color:red;\">DHCP client</span>\" first. <a href=\"network/wan\">click here to change</a>"))

s = m:section(TypedSection, "login", "")
s.addremove = false
s.anonymous = true

enable = s:option(Flag, "enable", translate("Enable"))
name = s:option(Value, "username", translate("Username"))
pass = s:option(Value, "password", translate("Password"))
pass.password = true

ifname = s:option(ListValue, "ifname", translate("Interfaces"))
for k, v in ipairs(luci.sys.net.devices()) do
    if v ~= "lo" then
        ifname:value(v)
    end
end

local apply = luci.http.formvalue("cbi.apply")
if apply then
    io.popen("/etc/init.d/cd8021x restart")
end

return m
