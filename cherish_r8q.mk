#
# Copyright (C) 2021-2022 CherishOS.
# A beautiful ROM based on AOSP and Pixel with good quality of features.
#
# Device Name : Xiaomi Mi 11 | Device Codename : r8q | Device Model : SM-G7810
# The Samsung Galaxy S20FE was released in September 2020.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/r8q/device.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Product IDs
PRODUCT_NAME := cherish_r8q
PRODUCT_DEVICE := r8q
PRODUCT_BRAND := Samsung Galaxy
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := S20 Fan Edition

PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Boot Animation Resolution.
TARGET_BOOT_ANIMATION_RES := 1440

# CherishOS' Build Properties.
CHERISH_BUILD_TYPE=UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=kota69th

# Fingerprint
BUILD_FINGERPRINT := "samsung/r8qxx/qssi:12/SP1A.210812.016/G780GXXU3CVI1:user/release-keys"
PRIVATE_BUILD_DESC := "r8qxx-user 12 SP1A.210812.016 G780GXXU3CVI1 release-keys"