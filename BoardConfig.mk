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

# inherit from common msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/matissewifi

# Assert
TARGET_OTA_ASSERT_DEVICE := xt1031,xt1032,xt1033,xt1034,matissewifi_umts,matissewifi_umtsds,matissewifi_cdma,matissewifi_retuaws,matissewifi,matissewifi_gpe

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := matissewifi_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_PATH)/init/init_matisse.cpp
TARGET_UNIFIED_DEVICE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1023410176
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5930598400 # 5930614784 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 546944

# Properties
TARGET_SYSTEM_PROP += device/samsung/matissewifi/system.prop

# inherit from the proprietary version
-include vendor/samsung/matissewifi/BoardConfigVendor.mk
