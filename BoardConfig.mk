# Data from https://github.com/TeamWin/android_device_samsung_serranoveltexx/blob/android-4.4/BoardConfig.mk

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

DEVICE_RESOLUTION := 720x1280

# Data from https://github.com/TheSSJ/device_asus_zenfone2/blob/master/BoardConfig.mk
HAVE_SELINUX := true
ANDROID_COMMON_BUILD_MK := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
USE_OPENGL_RENDERER := true
TARGET_BOOTLOADER_IS_2ND := true 
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

TARGET_PREBUILT_KERNEL := device/asus/ze500kl/kernel
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_NO_BOOTLOADER := true
BOARD_FLASH_BLOCK_SIZE := 2048

BOARD_KERNEL_BASE := 0x80078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk

#adb fix (?)
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

#change this to "twrp" to make a TWRP recovery, or any other recovery which might be released
RECOVERY_VARIANT := twrp

# TWRP
ifeq ($(RECOVERY_VARIANT),twrp)
	TARGET_RECOVERY_FSTAB := device/asus/ze500kl/twrp.fstab
else
	TARGET_RECOVERY_FSTAB := device/asus/ze500kl/recovery.fstab
endif

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_INCLUDE_CRYPTO := true
TW_NTFS_WA := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
TW_EXCLUDE_SUPERSU := true
TWRP_EVENT_LOGGING := false
TW_NO_USB_STORAGE := true
TW_NO_USB_STORAGE := true