ifneq ($(TRUSTONIC_TEE_SUPPORT),yes)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libcurl
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SRC_FILES_arm := libcurl_32.so
LOCAL_SRC_FILES_arm64 := libcurl_64.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

endif