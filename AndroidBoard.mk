LOCAL_PATH := $(call my-dir)
USE_CAMERA_STUB := false
include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := vold.fstab
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# Install the features available on this device.
## OMX proprietaries
PRODUCT_COPY_FILES += \
        device/lg/swift/proprietary/omx/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
        device/lg/swift/proprietary/omx/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
        device/lg/swift/proprietary/omx/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
        device/lg/swift/proprietary/omx/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
        device/lg/swift/proprietary/omx/libomx_wmadec_sharedlibrary.so:system/lib/libomx_wmadec_sharedlibrary.so \
        device/lg/swift/proprietary/omx/libomx_wmvdec_sharedlibrary.so:system/lib/libomx_wmvdec_sharedlibrary.so  \
	device/lg/swift/proprietary/omx/libOmxAacDec.so:system/lib/libOmxAacDec.so \
	device/lg/swift/proprietary/omx/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
	device/lg/swift/proprietary/omx/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
	device/lg/swift/proprietary/omx/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
	device/lg/swift/proprietary/omx/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
	device/lg/swift/proprietary/omx/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
	device/lg/swift/proprietary/omx/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	device/lg/swift/proprietary/omx/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
	device/lg/swift/proprietary/omx/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
	device/lg/swift/proprietary/omx/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
	device/lg/swift/proprietary/omx/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
	device/lg/swift/proprietary/omx/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \
	device/lg/swift/proprietary/omx/libaomx_mp4dec_sharedlibrary.so:system/lib/libaomx_mp4dec_sharedlibrary.so \
	device/lg/swift/proprietary/omx/libaomx_mp3dec_sharedlibrary.so:system/lib/libaomx_mp3dec_sharedlibrary.so

## Camera proprietaries
PRODUCT_COPY_FILES += \
device/lg/swift/proprietary/liboemcamera.so:system/lib/liboemcamera.so \
device/lg/swift/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \
device/lg/swift/proprietary/libmmipl.so:system/lib/libmmipl.so 

PRODUCT_COPY_FILES += \
    device/lg/swift/prebuilt/media_profiles.xml:/system/etc/media_profiles.xml \
    device/lg/swift/prebuilt/vold.fstab:/system/etc/vold.fstab \
    device/lg/swift/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/lg/swift/prebuilt/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/lg/swift/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/lg/swift/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf  \
    device/lg/swift/prebuilt/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/lg/swift/prebuilt/msm_touchscreen.kcm.bin:system/usr/keychars/msm_touchscreen.kcm.bin \
    device/lg/swift/prebuilt/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/lg/swift/prebuilt/AVRCP.kl:system/usr/keylayout/AVRCP.kll 

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml 

PRODUCT_COPY_FILES += \
    device/lg/swift/proprietary/libgps.so:obj/lib/libgps.so \
    device/lg/swift/proprietary/libloc_api.so:obj/lib/libloc_api.so \
    device/lg/swift/proprietary/libloc.so:obj/lib/libloc.so \
    device/lg/swift/proprietary/libloc-rpc.so:obj/lib/libloc-rpc.so \
    device/lg/swift/prebuilt/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lg/swift/prebuilt/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/lg/swift/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lg/swift/proprietary/akmd2:system/bin/akmd2  
    
# Copy DS specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

#GSM
PROPRIETARY += lib/liblgdrmwbxml.so lib/libdll.so lib/libril-qcril-hook-oem.so  lib/libwms.so \
               lib/libnv.so lib/libril_log.so lib/liblgerft.so \
               lib/liboem_rapi.so lib/libdss.so lib/libqmi.so lib/libmmgsdilib.so lib/libcm.so lib/liboncrpc.so lib/libdsm.so lib/libqueue.so \
	       lib/libril-qc-1.so lib/libdiag.so lib/libgsdi_exp.so lib/libgsdi_exp.so lib/libgstk_exp.so lib/libwmsts.so lib/libpbmlib.so \
	       lib/liblgeat.so lib/liblgdrm.so lib/libbcmwl.so lib/libauth.so /bin/port-bridge /bin/qmuxd lib/libril.so

#GPS
PROPRIETARY += lib/libcommondefs.so lib/libgps.so lib/libloc.so  lib/libloc_api.so lib/libloc-rpc.so 

#Wifi
PROPRIETARY += etc/wl/rtecdc.bin etc/wl/nvram.txt etc/wl/rtecdc-mfgtest.bin etc/wifi/wpa_supplicant.conf bin/wl bin/wpa_supplicant 

#Linker
PROPRIETARY += bin/linker #bin/lgesystemd  bin/lgdrmserver

#Bluetooth
PROPRIETARY += bin/BCM4325D1.hcd 

#OpenGL
PROPRIETARY += lib/egl/libEGL_adreno200.so lib/egl/libGLESv2_adreno200.so lib/egl/libGLESv1_CM_adreno200.so lib/egl/libq3dtools_adreno200.so lib/libgsl.so

#HW
PROPRIETARY +=  lib/hw/lights.swift.so lib/hw/sensors.swift.so

PRODUCT_COPY_FILES += $(foreach i,$(PROPRIETARY),$(LOCAL_PATH)/proprietary/$(notdir $i):system/$i)
