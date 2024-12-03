#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X676C device
$(call inherit-product, device/infinix/X676C/device.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X676C
PRODUCT_DEVICE := X676C
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X676C

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x676c_h891-user 12 SP1A.210812.016 657089 release-keys" \
    PRODUCT_NAME=X676C-OP

BUILD_FINGERPRINT := Infinix/X676C-OP/Infinix-X676C:12/SP1A.210812.016/240912V1816:user/release-keys
