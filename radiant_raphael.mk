#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some Radiant stuff.
$(call inherit-product, vendor/radiant/config/common_full_phone.mk)
RADIANT_BUILD_TYPE := OFFICIAL
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
USE_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := radiant_raphael
PRODUCT_DEVICE := raphael
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019.011 4448085 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

TARGET_INCLUDE_PIXEL_CHARGER := true
