# Pure AOSP 6.0.1 product config for Samsung Galaxy Grand Neo (GT-I9060, baffinlite)
# Derived from the cm-13.0 tree, following pawitp's i9082 aosp-6.0 conversion pattern.

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, device/samsung/baffinlite/device_baffinlite.mk)

# Overlay and packages usually set by vendor/cm (kept from i9082 aosp pattern)
DEVICE_PACKAGE_OVERLAYS += device/samsung/baffinlite/overlay

PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    Mms \
    Stk \
    CellBroadcastReceiver \
    SoundRecorder \
    Launcher3

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Device identity
PRODUCT_DEVICE := baffinlite
PRODUCT_NAME := aosp_baffinlite
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060

# Stock fingerprint carried from the cm-13.0 tree (only verified stock build for this device)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=baffinlitexx \
    TARGET_DEVICE=baffinlite \
    BUILD_FINGERPRINT="samsung/baffinlitexx/baffinlite:4.2.2/JDQ39/I9060XXUAOG1:user/release-keys" \
    PRIVATE_BUILD_DESC="baffinlitexx-user 4.2.2 JDQ39 I9060XXUAOG1 release-keys"
