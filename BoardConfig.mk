USE_CAMERA_STUB := true

# Inherit from the proprietary version
-include vendor/samsung/baffinlite/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := java

# CPU
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_ARMV7A          := true
ARCH_ARM_HAVE_VFP             := true
ARCH_ARM_HAVE_NEON            := true
ARCH_ARM_HAVE_TLS_REGISTER    := true

TARGET_GLOBAL_CFLAGS     += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS   += -mtune=cortex-a7 -mfpu=neon -mfloat-abi=softfp

BOARD_VENDOR := samsung

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := java

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/baffinlite
TARGET_KERNEL_CONFIG := cyanogenmod_baffinlite_defconfig
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096

# Force GCC 4 for Linux 3.4.5 kernel
# Kernel toolchain
KERNEL_TOOLCHAIN                            := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX                     := arm-eabi-
TARGET_KERNEL_CUSTOM_TOOLCHAIN              := arm-eabi-4.8

# File system
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
# TEMP: Change size to fit recovery; it won't be flashed anyways
# Not anymore (it will be in the ROM), but let's keep this size for recovery.

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610334208
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5767168000

BOARD_CACHEIMAGE_PARTITION_SIZE := 1308622848
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/baffinlite/rootdir/fstab.java_ss_baffinlite
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_DENSITY := hdpi
# Add the recovery image into the zip

# Clang
USE_CLANG_PLATFORM_BUILD := true

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DCAPRI_HWC -DJAVA_HWC -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING

# For any future devlopers, no, we don't need to add the JB Compact Symbols flag, unless you wanna suffer for 6 hours asking yourself "Why do I even exist?"... (So, don't do it, please :) (Proof: This tree))

# CMHW

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/baffinlite/ril/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/baffinlite/include

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/baffinlite/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/baffinlite/configs/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI             := true
BOARD_WLAN_DEVICE                   := bcmdhd
BOARD_WLAN_DEVICE_REV               := bcm4330_1
WPA_SUPPLICANT_VERSION              := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER         := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB    := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                := NL80211
BOARD_HOSTAPD_PRIVATE_LIB           := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_NAME             := "dhd"
WIFI_DRIVER_MODULE_PATH             := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_PARAM           := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP              := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_STA             := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_MODULE_AP_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_ARG              := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                           := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.java

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/baffinlite/sepolicy

# (Well, there is a man here.)
