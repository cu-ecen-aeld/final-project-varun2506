
##############################################################
#
# TEMPSENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference my camera app
TEMPSENSOR_VERSION = '3c85058c8bc55a0cd0c7785eceaea175dec3fa7d'
TEMPSENSOR_SITE = 'https://github.com/cu-ecen-aeld/final-project-Amey2904dash.git'
TEMPSENSOR_SITE_METHOD = git


define TEMPSENSOR_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/tmp102/ all
endef

#TODO: Add required executables or scripts below
define TEMPSENSOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/tmp102/i2ctemp $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
