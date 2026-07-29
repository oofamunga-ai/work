################################################################################
#
# gcc target build...
#
################################################################################

RODOS_SOURCE = glibc-2.39.tar.gz
RODOS_SITE = https://ftp.gnu.org/gnu/glibc
RODOS_DEPENDENCIES += libusb host-libusb


define GLIBC_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define GLIBC_INSTALL_TARGET_CMDS
#        $(INSTALL) -D -m 0755 $(@D)/gcc $(TARGET_DIR)/usr/bin/gcc


$(foreach f,$(GLIBC_INSTALL_TARGET_CMDS),\
		$(INSTALL) -D -m 0755 $(@D)/build/bin/$(f) $(TARGET_DIR)/usr/bin
	)
endef
################################
#Add bleow dierecrtoires are the install directories for all files in gcc
#################################
#bindir = ${exec_prefix}/bin
#sbindir = ${exec_prefix}/sbin
#libexecdir = ${exec_prefix}/libexec
#datadir = ${datarootdir}
#sysconfdir = ${prefix}/etc
#sharedstatedir = ${prefix}/com
#localstatedir = ${prefix}/var
#libdir = ${exec_prefix}/lib
#includedir = ${prefix}/include
#oldincludedir = /usr/include
#infodir = ${datarootdir}/info
#datarootdir = ${prefix}/share
#docdir = ${datarootdir}/doc/${PACKAGE}
#pdfdir = ${docdir}
#htmldir = ${docdir}
#mandir = ${datarootdir}/man
#man1dir = $(mandir)/man1
#man2dir = $(mandir)/man2
#man3dir = $(mandir)/man3
#man4dir = $(mandir)/man4
#man5dir = $(mandir)/man5
#man6dir = $(mandir)/man6
#man7dir = $(mandir)/man7
#man8dir = $(mandir)/man8
#man9dir = $(mandir)/man9

#define HCXDUMPTOOL_BUILD_CMDS
#    make
#endef

$(eval $(generic-package))
