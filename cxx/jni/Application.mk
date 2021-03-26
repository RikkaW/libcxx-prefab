APP_ABI := arm64-v8a armeabi-v7a x86 x86_64
APP_PROJECT_PATH := $(call my-dir)/../../cxx-source
APP_PLATFORM := android-16
APP_CPPFLAGS := -std=c++17
APP_STL := none
APP_CFLAGS := -Wno-builtin-macro-redefined -D__FILE__=__FILE_NAME__