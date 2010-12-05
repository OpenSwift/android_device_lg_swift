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

## OMX proprietaries
PRODUCT_COPY_FILES += \
    device/lg/swift/proprietary/omx/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    device/lg/swift/proprietary/omx/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    device/lg/swift/proprietary/omx/libOmxAacDec.so:system/lib/libmm-omxcore.so \
    device/lg/swift/proprietary/omx/libOmxAmrRtpDec.so:system/lib/libOmxAacEnc.so \
    device/lg/swift/proprietary/omx/libOmxH264Dec.so:system/lib/libOmxAmrDec.so \
    device/lg/swift/proprietary/omx/libOmxQcelpDec.so:system/lib/libOmxAmrEnc.so \
    device/lg/swift/proprietary/omx/libOmxAacEnc.so:system/lib/libOmxAmrRtpDec.so \
    device/lg/swift/proprietary/omx/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    device/lg/swift/proprietary/omx/libOmxMp3Dec.so:system/lib/libOmxCore.so \
    device/lg/swift/proprietary/omx/libOmxVidEnc.so:system/lib/libOmxEvrcDec.so \
    device/lg/swift/proprietary/omx/libOmxAmrDec.so:system/lib/libOmxEvrcEnc.so \
    device/lg/swift/proprietary/omx/libOmxEvrcDec.so:system/lib/libOmxH264Dec.so \
    device/lg/swift/proprietary/omx/libOmxMpeg4Dec.so:system/lib/libOmxMp3Dec.so \
    device/lg/swift/proprietary/omx/libOmxWmaDec.so:system/lib/libOmxMpeg4Dec.so \
    device/lg/swift/proprietary/omx/libOmxAmrEnc.so:system/lib/libOmxQcelp13Enc.so \
    device/lg/swift/proprietary/omx/libOmxEvrcEnc.so:system/lib/libOmxQcelpDec.so \
    device/lg/swift/proprietary/omx/libOmxQcelp13Enc.so:system/lib/libOmxVidEnc.so \
    device/lg/swift/proprietary/omx/libOmxWmvDec.so:system/lib/libOmxWmaDec.so \
    device/lg/swift/proprietary/omx/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Camera proprietaries
PRODUCT_COPY_FILES += \
    device/lg/swift/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
    device/lg/swift/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
    device/lg/swift/proprietary/libmmipl.so:system/lib/libmmipl.so \
    device/lg/swift/proprietary/libcamera.so:obj/lib/libcamera.so \
    device/lg/swift/proprietary/libcamera.so:system/lib/libcamera.so  

PRODUCT_COPY_FILES += \
    device/lg/swift/media_profiles.xml:/system/etc/media_profiles.xml \
    device/lg/swift/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lg/swift/prebuilt/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lg/swift/prebuilt/apns-conf.xml:system/etc/apns-conf.xml 

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_COPY_FILES += \
    device/lg/swift/proprietary/libgps.so:obj/lib/libgps.so \
    device/lg/swift/prebuilt/build.prop:system/build.prop \
    device/lg/swift/prebuilt/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lg/swift/prebuilt/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/lg/swift/proprietary/lgdrmserver:system/bin/lgdrmserver \
    device/lg/swift/proprietary/lgesystemd:system/bin/lgesystemd \
    device/lg/swift/proprietary/akmd2:system/bin/akmd2  \
    device/lg/swift/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

#GSM
PROPRIETARY := lib/liblgdrmwbxml.so lib/libdll.so lib/libril-qcril-hook-oem.so  lib/libwms.so \
               lib/libnv.so lib/libril_log.so lib/liblgerft.so \
               lib/liboem_rapi.so lib/libdss.so lib/libqmi.so lib/libmmgsdilib.so lib/libcm.so lib/liboncrpc.so lib/libdsm.so lib/libqueue.so \
	       lib/libril-qc-1.so lib/libdiag.so lib/libgsdi_exp.so lib/libgsdi_exp.so lib/libgstk_exp.so lib/libwmsts.so lib/libpbmlib.so \
	       lib/liblgeat.so lib/liblgdrm.so lib/libbcmwl.so lib/libauth.so /bin/port-bridge /bin/qmuxd

#Wifi
PROPRIETARY += etc/wl/rtecdc.bin etc/wl/nvram.txt etc/wl/rtecdc-mfgtest.bin lib/modules/wireless.ko bin/wl bin/wpa_supplicant

#Linker
PROPRIETARY += bin/linker
PRODUCT_COPY_FILES += device/lg/swift/proprietary/linker:system/bin/linker

#Bluetooth
PROPRIETARY += bin/BCM4325D1_004.002.004.0262.0270.hcd lib/libbluetooth.so lib/libbluetoothd.so bin/bcmtool bin/btld bin/bluetoothd bin/brcm_patchram_plus lib/libbluedroid.so bin/hciattach bin/logwrapper

#OpenGL
PROPRIETARY += lib/egl/libEGL_adreno200.so lib/egl/libGLESv2_adreno200.so lib/egl/libGLESv1_CM_adreno200.so lib/egl/libq3dtools_adreno200.so lib/libgsl.so

#HW
PROPRIETARY += lib/hw/copybit.msm7k.so lib/hw/gralloc.default.so lib/hw/gralloc.msm7k.so lib/hw/lights.swift.so lib/hw/sensors.swift.so

PRODUCT_COPY_FILES += $(foreach i,$(PROPRIETARY),$(LOCAL_PATH)/proprietary/$(notdir $i):system/$i)


