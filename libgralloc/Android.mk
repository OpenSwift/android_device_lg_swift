ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),swift)
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# HAL module implemenation, not prelinked and stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libGLESv1_CM

LOCAL_SRC_FILES := 	\
	allocator.cpp 	\
	gralloc.cpp 	\
	framebuffer.cpp \
	mapper.cpp
	
LOCAL_MODULE := gralloc.$(TARGET_BOARD_PLATFORM)
LOCAL_CFLAGS:= -DLOG_TAG=\"$(TARGET_BOARD_PLATFORM).gralloc\"
ifeq ($(BOARD_NO_CACHED_BUFFERS),true)
    LOCAL_CFLAGS += -DBOARD_NO_CACHED_BUFFERS
endif
include $(BUILD_SHARED_LIBRARY)
endif
