#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# Inherit from olivewood device
$(call inherit-product, device/xiaomi/olivewood/device.mk)

# Inherit some LineageOS stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_LIVE_WALLPAPERS := false
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pa_olivewood
PRODUCT_DEVICE := olivewood
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A/8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=olivewood
