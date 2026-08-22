# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/baffinlite/device_baffinlite.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := lineage_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060
PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=baffinlitexx \
    TARGET_DEVICE=baffinlite \
    BUILD_FINGERPRINT="samsung/baffinlitexx/baffinlite:4.2.2/JDQ39/I9060XXUAOG1:user/release-keys" \
    PRIVATE_BUILD_DESC="baffinlitexx-user 4.2.2 JDQ39 I9060XXUAOG1 release-keys"
