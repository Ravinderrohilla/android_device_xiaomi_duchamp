

DEVICE_PATH := device/xiaomi/duchamp

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_PREBUILT_ELF_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Assert
TARGET_OTA_ASSERT_DEVICE := duchamp

# Platform
TARGET_BOARD_PLATFORM := $(PRODUCT_PLATFORM)
PRODUCT_PLATFORM := mt6897

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(TARGET_OTA_ASSERT_DEVICE)
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Kernel
TARGET_NO_KERNEL := true
BOARD_RAMDISK_USE_LZ4 := true
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
TARGET_KERNEL_HEADER_ARCH := $(TARGET_ARCH)
BOARD_PAGE_SIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x3fff8000
BOARD_RAMDISK_OFFSET := 0x26f08000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_TAGS_OFFSET := 0x07c88000
BOARD_DTB_SIZE := 396043
BOARD_DTB_OFFSET := 0x07c88000
BOARD_HEADER_SIZE := 2128

# Vendor CMD
BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2

# Args
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --vendor_cmdline $(BOARD_VENDOR_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE) --board ""
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)

# Prebuilt
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SUPER_PARTITION_SIZE := 9126805504

# Dynamic Partition
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 9122611200
BOARD_MAIN_PARTITION_LIST := system \
                             system_ext \
                             vendor \
                             product \
                             odm \
                             vendor_dlkm \
                             odm_dlkm


 # File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Android Verified Boot
# Verified Boot
BOARD_AVB_ENABLE := true


# TWRP Configuration
TW_FRAMERATE := 60
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TARGET_USES_MKE2FS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_NO_FASTBOOT_BOOT := true

# Include some binaries
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true

# Set brightness path and level
TW_DEFAULT_BRIGHTNESS := 400
TW_MAX_BRIGHTNESS := 2047
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# Excludes
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRPAPP := true

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_METADATA_PARTITION := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Vendor_boot recovery ramdisk
BOARD_USES_RECOVERY_AS_BOOT := 
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := 
BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := 

