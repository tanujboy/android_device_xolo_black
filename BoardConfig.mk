USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/xolo/black/BoardConfigVendor.mk

# architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_BOOTLOADER_BOARD_NAME := black

# kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_SOURCE := kernel/xolo/black
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true
TARGET_KERNEL_CONFIG := mirageplus01a_msm_defconfig

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 17000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 30000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1500000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14453000000
BOARD_FLASH_BLOCK_SIZE := 131072

# twrp
RECOVERY_VARIANT:= twrp
TW_THEME:= portrait_hdpi
RECOVERY_SDCARD_ON_DATA:= true
DEVICE_RESOLUTION:= 1080x1920
BOARD_KERNEL_CMDLINE:= androidboot.selinux=permissive

TARGET_PREBUILT_KERNEL := device/xolo/black/kernel

BOARD_HAS_NO_SELECT_BUTTON := true