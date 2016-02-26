include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-vmlcsd
PKG_VERSION=0.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-vlmcsd
    SECTION:=luci
    CATEGORY:=LuCI
    SUBMENU:=3. Applications
    TITLE:=vlmcsd windows/office activation service
    PKGARCH:=all
	MAINTAINER:=nealwon
endef

define Package/luci-app-vlmcsd/description
    LuCI configuration for vlmcsd(kms service).
endef

define Build/Compile
endef

define Package/luci-app-vlmcsd/install
    $(CP) ./lucsrc/* $(1)/usr/lib/lua/luci/
endef

$(eval $(call BuildPackage,luci-app-vlmcsd))
