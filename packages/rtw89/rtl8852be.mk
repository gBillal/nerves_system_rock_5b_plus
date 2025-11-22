################################################################################
#
# rtl8852be - Realtek RTL8852BE out-of-tree driver
#
################################################################################

RTW89_VERSION = 6.6-lts
RTW89_SITE    = https://github.com/a5a5aa555oo/rtw89
RTW89_SITE_METHOD = git

# License info from the repo
RTW89_LICENSE = unknown
RTW89_LICENSE_FILES =

# Tell Buildroot this is a kernel-module-style package
RTW89_MODULE_SUBDIRS = .

define RTW89_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0644 $(RTW89_BUILDDIR)firmware/rtw8852b_fw-1.bin \
        $(TARGET_DIR)/lib/firmware/rtw89/rtw8852b_fw-1.bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
