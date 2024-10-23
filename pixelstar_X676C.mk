#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/infinix/X676C/device.mk)

# Inherit common PixelStar configurations
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_PIXEL_CHARGER := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
BOARD_VENDOR := Infinix
PRODUCT_NAME := pixelstar_X676C
PRODUCT_DEVICE := X676C
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix ARCTIC

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x676c_h891-user 12 SP1A.210812.016 657089 release-keys" \
    PRODUCT_NAME=X676C-OP

BUILD_FINGERPRINT := Infinix/X676C-OP/Infinix-X676C:12/SP1A.210812.016/240711V1039:user/release-keys