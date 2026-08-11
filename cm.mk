# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/baffinlite/device_baffinlite.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := cm_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9060

# Set build fingerprint / ID / Product Name etc.
# NOTE: carried forward unchanged from the cm-12.1 and cm-14.1 baffinlite trees,
# since that's the only verified stock fingerprint available for this device.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=baffinlitexx \
    TARGET_DEVICE=baffinlite \
    BUILD_FINGERPRINT="samsung/baffinlitexx/baffinlite:4.2.2/JDQ39/I9060XXUAOG1:user/release-keys" \
    PRIVATE_BUILD_DESC="baffinlitexx-user 4.2.2 JDQ39 I9060XXUAOG1 release-keys"
