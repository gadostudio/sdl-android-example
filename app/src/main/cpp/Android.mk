CURRENT_PATH := $(call my-dir)

# https://developer.android.com/ndk/guides/cpp-support
#APP_STL := c++_shared

APP_ABI := armeabi-v7a arm64-v8a x86 x86_64

# Min runtime API level
#APP_PLATFORM=android-16

include $(CLEAR_VARS)
include $(CURRENT_PATH)/../../../../dependencies/SDL/SDL2/Android.mk \
        $(CURRENT_PATH)/../../../../dependencies/SDL/SDL2_image/Android.mk

include $(CLEAR_VARS)
LOCAL_MODULE := main

SDL_PATH := ../../../../dependencies/SDL

LOCAL_C_INCLUDES := $(CURRENT_PATH)/$(SDL_PATH)/SDL2/include \
                    $(CURRENT_PATH)/$(SDL_PATH)/SDL2_image

LOCAL_SRC_FILES := $(CURRENT_PATH)/main.cpp \
                   $(CURRENT_PATH)/$(SDL_PATH)/SDL2/src/main/android/SDL_android_main.c

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
