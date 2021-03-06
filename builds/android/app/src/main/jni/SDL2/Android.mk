LOCAL_PATH := $(call my-dir)

EASYRPG_TOOLCHAIN_DIR = $(EASYDEV_ANDROID)/$(TARGET_ARCH_ABI)-toolchain

# SDL2
include $(CLEAR_VARS)
LOCAL_MODULE := SDL2
LOCAL_SRC_FILES := $(EASYRPG_TOOLCHAIN_DIR)/lib/lib$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

# hidapi (since SDL 2.0.9)
include $(CLEAR_VARS)
LOCAL_MODULE := hidapi
LOCAL_SRC_FILES := $(EASYRPG_TOOLCHAIN_DIR)/lib/libhidapi.so
include $(PREBUILT_SHARED_LIBRARY)
