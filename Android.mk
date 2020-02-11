LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),d5170_blu_gmo)
ifeq ($(MTKPATH),)

# Proprietary Modules go here
include $(CLEAR_VARS)
LOCAL_MODULE := MTKLogger
LOCAL_MODULE_OWNER := mts
LOCAL_SRC_FILES := proprietary/app/MTKLogger/MTKLogger.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := YGPS
LOCAL_MODULE_OWNER := mts
LOCAL_SRC_FILES := proprietary/app/YGPS/YGPS.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

endif
endif

include $(call first-makefiles-under,$(LOCAL_PATH))

