CVPROJ_VERSION:= master
CVPROJ_SITE:= git://github.com/jmare/cvproj 
CVPROJ_INSTALL_TARGET:=YES

define CVPROJ_BUILD_CMDS
        $(MAKE) CC="$(TARGET_CC)"  LD="$(TARGET_LD)" -C $(@D) all 
endef

define CVPROJ_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/bin/cvproj $(TARGET_DIR)/bin
endef

define CVPROJ_PERMISSIONS
       /bin/cvproj f 4755 0 0 - - - - - 
endef

$(eval $(generic-package))
