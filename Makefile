TARGET := iphone:clang:16.5:13.0
# TARGET = simulator:clang::16.0

export SYSROOT = $(THEOS)/sdks/iPhoneOS16.5.sdk
export ARCHS = arm64 arm64e

# export TARGET := simulator:clang:13.0:13.0
# SYSROOT=$(THEOS)/sdks/iPhoneSimulator17.2.sdk
# export ARCHS = arm64 x86_64

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PopOutButtons

PopOutButtons_FILES = $(wildcard *.x *.m *.c )
PopOutButtons_CFLAGS = -fobjc-arc
PopOutButtons_LIBRARIES = gcuniversal 

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += popoutbuttonsPrefs

include $(THEOS_MAKE_PATH)/aggregate.mk

