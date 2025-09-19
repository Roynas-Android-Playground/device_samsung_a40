# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/samsung/a40

# Inherit common board flags
include device/samsung/exynos7885-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := a40,a40dd

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := exynos7885_defconfig
TARGET_KERNEL_CONFIG += a40.config

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5158993920
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_VENDORIMAGE_PARTITION_SIZE := 452984832

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SPL
VENDOR_SECURITY_PATCH := 2022-02-01

