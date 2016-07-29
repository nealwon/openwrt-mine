require("nixio.fs")
module("luci.controller.vlmcsd", package.seeall)

function index()
    if not nixio.fs.access("/etc/config/vlmcsd") then
        return
    end
    entry({"admin", "services", "vlmcsd"}, cbi("vlmcsd"), _("KMS Server"), 2)
end
