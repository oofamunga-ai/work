################################################################################
#
# Hashcat ...
#
################################################################################

RODOS_SOURCE = hashcat-6.2.6.tar.gz
RODOS_SITE = https://codeload.github.com/hashcat/hashcat/
#RODOS_DEPENDENCIES += libusb host-libusb


define HASHCAT_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define HASHCAT_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/hashcat $(TARGET_DIR)/usr/bin/hashcat
endef

#define HCXDUMPTOOL_BUILD_CMDS
#    make
#endef

$(eval $(generic-package))
