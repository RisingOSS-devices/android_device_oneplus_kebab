#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Rising OSS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_SYSTEM_NAME := OnePlus8T
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8T-user 13 RKQ1.211119.001 R.ed8c2c_1_2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8T/OnePlus8T:13/RKQ1.211119.001/R.ed8c2c_1_2:user/release-keys

# RisingOSS Flags

# Gapps
WITH_GMS := true (For gapps build, but dont use it alone as of now, since u will get magnified setup page, so not advisable)
TARGET_CORE_GMS := true (for core gapps build, use along with above flag, u wont have setup wizard though)

# Spoof build description/fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

# Flag for GrapheneOS Camera
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Enable Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Enable Quick Tap Funtionality
TARGET_SUPPORTS_QUICK_TAP := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# Enable Blur
TARGET_ENABLE_BLUR := true

# Official
RISING_MAINTAINER := Lord Itachi


