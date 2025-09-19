# Copyright (C) 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit LineageOS common device config
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a40/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a40
PRODUCT_NAME := lineage_a40
PRODUCT_MODEL := SM-A405F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a40xx-user 11 RP1A.200720.012 A405FNXXU4CWC3 release-keys" \
    BuildFingerprint=samsung/a40xx/a40:11/RP1A.200720.012/A405FNXXU4CWC3:user/release-keys
