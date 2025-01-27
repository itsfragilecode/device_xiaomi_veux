#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Google
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Product
PRODUCT_NAME := lineage_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi

# Branding: POCO X4 Pro 5G
PRODUCT_SYSTEM_NAME := veux_p_global
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2201116PG

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux_p_global-user 13 TKQ1.221114.001 V14.0.6.0.TKCMIXM release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/veux_p_global/veux:13/TKQ1.221114.001/V14.0.6.0.TKCMIXM:user/release-keys
