CPPTEST_VERSION:= 2a045c3
CPPTEST_SITE:= git://github.com/jmare/cvproj 
CPPTEST_INSTALL_TARGET:=YES

define CVPROJ_BUILD_CMDS
        $(MAKE) CC="$(TARGET_CC)"  LD="$(TARGET_LD)" -C $(@D) all 
endef

define CVPROJ_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/cvproj $(TARGET_DIR)/bin
endef

define CPPTEST_PERMISSIONS
       /bin/cvproj f 4755 0 0 - - - - - 
endef

$(eval $(generic-package))
