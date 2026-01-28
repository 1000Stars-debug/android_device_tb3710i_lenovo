LOCAL_PATH := device/lenovo/tb3710i_lenovo

# Platform
TARGET_BOARD_PLATFORM := mt6580
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_LDPRELOAD := libxlog.so

BOARD_HAS_NO_SELECT_BUTTON := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6580

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Partitions
# We need the partitions size in decimal
# Use cat proc/partitions via adb, then block size * 1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1996488704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13175881728
# For the following line, do KERNEL_PAGE_SIZE * 64 (Most of time it is 2048 * 64)
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4:=true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# You can get the following info by unpacking your boot.img file

BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32S1,32S1 \
	androidboot.selinux=permissive
	
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# We use prebuilt kernel to compile because no kernel source code

TARGET_PREBUILT_KERNEL := device/lenovo/tb3710i_lenovo/kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board 1441186574
BOARD_CUSTOM_BOOTIMG := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/lenovo/tb3710i_lenovo/kernel

TARGET_RECOVERY_FSTAB := device/lenovo/tb3710i_lenovo/rootdir/root/fstab.mt6580

TARGET_OTA_ASSERT_DEVICE := "TB3-710i,tb3710i,TB3-710I"
# This is what we need to compile TWRP
BOARD_HAS_NO_REAL_SDCARD := true
TW_THEME := landscape_mdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FB2PNG := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_REBOOT_BOOTLOADER := true
TW_REBOOT_RECOVERY := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_TOOLBOX := false
TW_INCLUDE_CRYPTO := true
#BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
#RECOVERY_TOUCHSCREEN_FLIP_X := true

# Deodex
WITH_DEXPREOPT := false
DISABLE_DEXPREOPT := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/tb3710i_lenovo/bluetooth

# EGL settings
BOARD_EGL_CFG := device/lenovo/tb3710i_lenovo/rootdir/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# SELINUX
BOARD_SEPOLICY_DIRS := \
       device/lenovo/tb3710i_lenovo/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       netd.te \
       file_contexts

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"



BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# We use this to fix Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/lenovo/tb3710i_lenovo/include
