#
# Copyright (C) 2020-2025 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from the common tree
include device/samsung/exynos850-common/BoardConfigCommon.mk

# Inherit from the proprietary configuration
include vendor/samsung/a13/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a13

# Camera
$(call soong_config_set,samsungCameraVars,needs_sec_reserved_field,true)
$(call soong_config_set,samsungCameraVars,extra_ids,52,54) # ID=52 is depth camera and ID=54 is macro

# DTBO
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_DTBO_CFG := $(DEVICE_PATH)/configs/kernel/$(TARGET_DEVICE).cfg

# OTA TARGET
TARGET_OTA_ASSERT_DEVICE := a13

# Kernel
TARGET_KERNEL_CONFIG := exynos850-a13nsxx_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security
VENDOR_SECURITY_PATCH := 2025-11-01
