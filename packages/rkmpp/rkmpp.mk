################################################################################
#
# rk-mpp - RK-MPP installation
#
################################################################################

RKMPP_VERSION = 1.0.11
RKMPP_SITE = $(call github,rockchip-linux,mpp,$(RKMPP_VERSION))
RKMPP_LICENCE_FILES = LICENSES
RKMPP_INSTALL_STAGING = YES

$(eval $(cmake-package))
