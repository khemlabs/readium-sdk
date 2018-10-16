APP_PLATFORM := android-19

ifneq ($(READIUM_SKIPARM),true)

APP_ABI := armeabi-v7a

ifneq ($(READIUM_SKIPX86),true)
APP_ABI += x86
endif

else

APP_ABI := x86

endif

ifeq ($(READIUM_CLANG),true)
#NDK_TOOLCHAIN := clang
NDK_TOOLCHAIN_VERSION := clang
APP_STL := c++_shared
else
#NDK_TOOLCHAIN := gcc
#NDK_TOOLCHAIN_VERSION := 4.9
APP_STL := c++_shared
endif