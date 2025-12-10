################################################################################
#
# librga - prebuilt headers + shared libs from GitHub Release assets
#
################################################################################

RGA_VERSION = 1.10.0
RGA_SITE = https://github.com/airockchip/librga/archive/refs/tags
RGA_SOURCE = v$(RGA_VERSION).tar.gz
RGA_LICENSE = Apache-2.0
RGA_LICENSE_FILES = COPYING

RGA_INSTALL_STAGING = YES

define RGA_INSTALL_STAGING_CMDS
	$(INSTALL) -d $(STAGING_DIR)/usr/include
	cp -a $(@D)/include/* $(STAGING_DIR)/usr/include/

	$(INSTALL) -d $(STAGING_DIR)/usr/lib
	cp -a $(@D)/libs/Linux/gcc-$(BR2_ARCH)/*.so* $(STAGING_DIR)/usr/lib/
endef

define RGA_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/usr/lib
	cp -a $(@D)/libs/Linux/gcc-aarch64/*.so* $(TARGET_DIR)/usr/lib/
endef

$(eval $(generic-package))
