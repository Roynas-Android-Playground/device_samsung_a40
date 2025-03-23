# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a40/device.mk)

BUILD_FINGERPRINT := "samsung/a40skt/a40:11/RP1A.200720.012/A405SKSU5CVB1:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="a40skt-user 11 RP1A.200720.012 A405SKSU5CVB1 release-keys"

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a40
PRODUCT_NAME := lineage_a40
PRODUCT_MODEL := SM-A405F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
