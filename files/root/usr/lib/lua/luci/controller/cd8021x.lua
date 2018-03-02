module("luci.controller.cd8021x", package.seeall)

function index()
        entry({"admin", "network", "cd8021x"}, cbi("cd8021x"), _("cd802.1x client"), 100)
        end
