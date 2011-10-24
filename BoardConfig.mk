USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/htc/ruby/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/ruby/include 

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := ruby
TARGET_HAVE_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Wifi related defines
BOARD_WLAN_DEVICE           := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := tiwlan_drv
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wifi/firmware.bin"
WIFI_FIRMWARE_LOADER        := wlan_loader
PRODUCT_WIRELESS_TOOLS      := true
BOARD_SOFTAP_DEVICE         := wl1271
AP_CONFIG_DRIVER_WILINK     := true
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wifi/firmware_ap.bin"
WPA_SUPPL_APPROX_USE_RSSI   := true

# Audio 
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := false

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

# Define egl.cfg location
BOARD_EGL_CFG := device/htc/ruby/egl.cfg

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_HAVE_HTC_FFC := true
#BOARD_USE_REVERSE_FFC := true


BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_USES_ADRENO_200 := true
#BOARD_NO_RGBX_8888 := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_BOOTLOADER_BOARD_NAME := ruby

BOARD_USE_NEW_LIBRIL_HTC := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := ruby
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_USES_GPSSHIM := false

TARGET_USES_C2D_COMPOSITION := true
TARGET_HAVE_HDMI_OUT := true
#TARGET_HARDWARE_3D := true

# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/ruby/kernel

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p24: 00fff600 00000200 "misc"
# mmcblk0p23: 00fffc00 00000200 "recovery"
# mmcblk0p22: 01000000 00000200 "boot"
# mmcblk0p29: 5ffffc00 00000200 "system"
# mmcblk0p30: 13fffe00 00000200 "cache"
# mmcblk0p31: 9ffffe00 00000200 "userdata"


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354560
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/ruby/recovery/graphics.c
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/ruby/recovery/recovery_kernel
TARGET_RECOVERY_INITRC := device/htc/ruby/recovery/init.rc
#TARGET_PROVIDES_LIBRIL := vendor/htc/ruby/proprietary/lib/libril.so

BOARD_NEEDS_CUTILS_LOG := true
