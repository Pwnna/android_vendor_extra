LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := F-Droid
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PACKAGE_NAME := F-Droid

LOCAL_SRC_FILES := org.fdroid.fdroid.apk
LOCAL_CERTIFICATE := PRESIGNED

include $(BUILD_PREBUILT)
