include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-cd8021x
PKG_VERSION=1.2.0
PKG_RELEASE:=1

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=max0y <askmaxwork@gmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-cd8021x
	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=a wired IEEE 802.1x client for Luci
	PKGARCH:=all
endef

define Package/luci-app-cd8021x/description
	This package contains LuCI configuration pages for wired IEEE 802.1x authentication.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-cd8021x/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/cbi
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	
	$(INSTALL_CONF) ./files/root/etc/config/cd8021x $(1)/etc/config/cd8021x
	$(INSTALL_BIN) ./files/root/etc/init.d/cd8021x $(1)/etc/init.d/cd8021x
	$(INSTALL_DATA) ./files/root/usr/lib/lua/luci/model/cbi/cd8021x.lua $(1)/usr/lib/lua/luci/model/cbi/cd8021x.lua
	$(INSTALL_DATA) ./files/root/usr/lib/lua/luci/controller/cd8021x.lua $(1)/usr/lib/lua/luci/controller/cd8021x.lua
endef

$(eval $(call BuildPackage,luci-app-cd8021x))
