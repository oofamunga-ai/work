################################################################################
#
# hcxdumptool ...
#
################################################################################

RODOS_SOURCE = hcxdumptool-6.3.4.tar.gz
RODOS_SITE = https://github.com/ZerBea/hcxdumptool/archive/refs/tags/6.3.4.tar.gz
RODOS_DEPENDENCIES += libusb host-libusb


define HCXDUMPTOOL_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define HCXDUMPTOOL_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/hcxdumptool $(TARGET_DIR)/usr/bin/hcxdumptool
endef

#define HCXDUMPTOOL_BUILD_CMDS
#    make
#endef

$(eval $(generic-package))
