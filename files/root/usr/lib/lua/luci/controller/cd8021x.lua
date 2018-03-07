-- Copyright (C) 2018 max0y <askmaxwork@gmail.com>
-- Licensed to the public under the GNU General Public License v3.

module("luci.controller.cd8021x", package.seeall)

function index()
        entry({"admin", "network", "cd8021x"}, cbi("cd8021x"), _("cd802.1x client"), 100).dependent = true
        end
