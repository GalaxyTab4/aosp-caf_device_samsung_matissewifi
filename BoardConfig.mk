#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from common msm8226-common
-include device/qcom/msm8226/BoardConfig.mk

# inherit from the proprietary version
-include vendor/samsung/matissewifi/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/matissewifi/include

# Assert
TARGET_OTA_ASSERT_DEVICE := matissewifi, matissewifiue

# Board
TARGET_BOARD_INFO_FILE := 

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/matissewifi/mkbootimg.mk
KERNEL_DEFCONFIG := cyanogenmod_matissewifi_defconfig
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000

# Architecture
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_BOARD_PLATFORM := msm8226

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Audio
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
BOARD_USES_ALSA_AUDIO := true
TARGET_USES_QCOM_MM_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/matissewifi/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Block based OTA
BLOCK_BASED_OTA := false

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# FM Radio
TARGET_QCOM_NO_FM_FIRMWARE := true

# Graphics
TARGET_USES_C2D_COMPOSITION := true

# Init
TARGET_LIBINIT_DEFINES_FILE := device/samsung/matissewifi/init/init_matisse.cpp
TARGET_UNIFIED_DEVICE := false

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400 # 5930614784 - 16384
BOARD_FLASH_BLOCK_SIZE := 131072

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := false

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB := device/samsung/matissewifi/ramdisk/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/matissewifi

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += device/samsung/matissewifi/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WPA_SUPPLICANT_VERSION := VER_0_8_X


