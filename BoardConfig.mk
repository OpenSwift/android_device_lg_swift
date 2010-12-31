#
# Swift Config
#

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := swift

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIO := true

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WLAN_DEVICE           := bcm4325
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "wireless"

# Use HTC USB Function Switch to enable tethering via USB
BOARD_USE_HTC_USB_FUNCTION_SWITCH := true

#BOARD_USES_OLD_CAMERA_HACK := true
#BOARD_USES_ECLAIR_LIBCAMERA := true
USE_CAMERA_STUB := false

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true
TINY_TOOLBOX:=true
# BOARD_GL_TEX_POW2_DIMENSION_REQUIRED := true
# BOARD_NO_GL2 := true

# Use the audio profile hack
# WITH_DS_HTCACOUSTIC_HACK := true

BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_FM_RADIO := true
BOARD_GPS_LIBRARIES :=  libloc_api

TARGET_HARDWARE_3D := false
USE_PV_WINDOWS_MEDIA := false

TARGET_HARDWARE_3D := false
BOARD_USES_GENERIC_AUDIO := false
BOARD_USE_HTC_LIBSENSORS := false


BOARD_EGL_CFG := device/lg/swift/egl.cfg

