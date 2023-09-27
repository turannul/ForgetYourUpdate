export FINALPACKAGE=1
export ARCHS = arm64 arm64e
export THEOS_PACKAGE_SCHEME = rootless

INSTALL_TARGET_PROCESSES = Preferences
TWEAK_NAME = ForgetYourUpdate

$(TWEAK_NAME)_FILES = ForgetYourUpdate.xm updatek1ller.mm
$(TWEAK_NAME)_LIBRARIES = MobileGestalt
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

c:
	find . -name ".DS_Store" -delete
	rm -rfv .theos/ build/ Packages/
#Clean up using 'make c'
