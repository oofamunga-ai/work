################################################################################
#
# hcxdumptool ...
#
################################################################################

RODOS_SOURCE = main.zip
RODOS_SITE = https://github.com/sysprog21/vwifi/archive/refs/heads/main.zip
RODOS_DEPENDENCIES += libusb host-libusb


define VWIFI_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define VWIFI_INSTALL_TARGET_CMDS
		$(INSTALL) -D -m 0755 $(@D)/vwifi.mod $(TARGET_DIR)/root/vwifi.mod
		$(INSTALL) -D -m 0755 $(@D)/vwifi.ko $(TARGET_DIR)/root/vwifi.ko
                $(INSTALL) -D -m 0755 $(@D)/vwifi-tool $(TARGET_DIR)/usr/bin/vwifi-tool
endef

#define HCXDUMPTOOL_BUILD_CMDS
#    make
#endef

$(eval $(generic-package))
