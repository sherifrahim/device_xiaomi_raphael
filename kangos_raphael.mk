#
# Copyright (C) 2020-2021 The LineageOS Project
# Copyright (C) 2020-2021 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common KangOS stuff.
KANGOS_BUILDTYPE := OFFICIAL
TARGET_USES_BLUR := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
USE_GAPPS := false

$(call inherit-product, vendor/kangos/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := kangos_raphael

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi