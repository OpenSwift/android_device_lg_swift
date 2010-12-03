LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_KERNEL_CONFIG),)
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif # TARGET_PREBUILT_KERNEL
endif # TARGET_KERNEL_CONFIG

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE := vold.fstab
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libmm-adspsvc.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxH264Dec.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxMpeg4Dec.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxVidEnc.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
#  	device/lg/swift/prebuilt/15checkgapps:system/etc/init.d/15checkgapps \
#	device/lg/swift/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kll \
#	device/lg/swift/prebuilt/swift.kl:system/usr/keylayout/swift.kl \
#	device/lg/swift/prebuilt/qwerty.kl:system/usr/keylayout/qwerty.kl \
#	device/lg/swift/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
#   $(LOCAL_PATH)/proprietary/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so\
#   $(LOCAL_PATH)/proprietary/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so

# Install the features available on this device.

# media configuration xml file

PRODUCT_COPY_FILES += \
    device/lg/swift/media_profiles.xml:/system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_COPY_FILES := \
    device/lg/swift/proprietary/libgps.so:obj/lib/libgps.so \
    device/lg/swift/proprietary/libcamera.so:obj/lib/libcamera.so \
    device/lg/swift/prebuilt/build.prop:system/build.prop \
    device/lg/swift/proprietary/libcamera.so:system/lib/libcamera.so  \
    device/lg/swift/prebuilt/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lg/swift/prebuilt/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/lg/swift/proprietary/lgdrmserver:system/bin/lgdrmserver \
    device/lg/swift/proprietary/lgesystemd:system/bin/lgesystemd \
    device/lg/swift/proprietary/akmd2:system/bin/akmd2  \
    device/lg/swift/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

#GSM
PROPRIETARY := lib/liblgdrmwbxml.so lib/libdll.so lib/libril-qcril-hook-oem.so  lib/libwms.so \
               lib/libnv.so lib/libril_log.so lib/liblgerft.so lib/libc.so  \
               lib/liboem_rapi.so lib/libdss.so lib/libqmi.so lib/libmmgsdilib.so lib/libcm.so lib/liboncrpc.so lib/libdsm.so lib/libqueue.so \
	       lib/libril-qc-1.so lib/libdiag.so lib/libgsdi_exp.so lib/libgsdi_exp.so lib/libgstk_exp.so lib/libwmsts.so lib/libpbmlib.so \
	       lib/liblgeat.so lib/liblgdrm.so lib/libbcmwl.so lib/libauth.so

#Wifi
PROPRIETARY += etc/wl/rtecdc.bin etc/wl/nvram.txt etc/wl/rtecdc-mfgtest.bin lib/modules/wireless.ko bin/wl

#Bluetooth
PROPRIETARY += bin/BCM4325D1_004.002.004.0262.0270.hcd lib/libbluedroid.so lib/libbluetooth.so lib/libbluetoothd.so bin/bcmtool bin/btld bin/bluetoothd bin/brcm_patchram_plus

#OpenGL
PROPRIETARY += lib/egl/libEGL_adreno200.so lib/egl/libGLESv2_adreno200.so lib/egl/libGLESv1_CM_adreno200.so lib/egl/libq3dtools_adreno200.so lib/libgsl.so

#HW
PROPRIETARY += lib/hw/copybit.msm7k.so lib/hw/gralloc.default.so lib/hw/gralloc.msm7k.so lib/hw/lights.swift.so lib/hw/sensors.swift.so

PRODUCT_COPY_FILES += $(foreach i,$(PROPRIETARY),$(LOCAL_PATH)/proprietary/$(notdir $i):system/$i)


