TARGET := macosx:clang:latest
INSTALL_TARGET_PROCESSES = com.majicjungle.BlockheadsServer
ARCHS = x86_64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FreightcarPatch

FreightcarPatch_FILES = Tweak.xm
FreightcarPatch_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
