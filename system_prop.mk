# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libbrcm_ril.so \
    ro.telephony.ril_class=SamsungBCMRIL \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.call_ring=0 \
    mobiledata.interfaces=rmnet0 \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1

# Graphics / Display
PRODUCT_PROPERTY_OVERRIDES += \
    brcm.hwc.no-hdmi-trans=1 \
    brcm.graphics.async_errors=true \
    debug.hwui.render_dirty_regions=false \
    ro.opengles.version=131072 \
    ro.zygote.disable_gl_preload=true \
    ro.sf.lcd_density=200 \
    ro.lcd_brightness=160 \
    ro.lcd_min_brightness=20 \
    gralloc.use_sync_mode=true \
    ro.cm.hardware.cabc=/sys/class/mdnie/mdnie/cabc

# HWUI cache caps (1GB device; the inherited xxhdpi-2048 profile is oversized for a 480x800 screen)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=24 \
    ro.hwui.layer_cache_size=16 \
    ro.hwui.r_buffer_cache_size=4 \
    ro.hwui.path_cache_size=16 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=4 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=1024 \
    ro.hwui.text_large_cache_height=512

# MultiTouch support
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.multi_touch_enabled=true \
    ro.product.max_num_touch=2

# FM Radio SNR
PRODUCT_PROPERTY_OVERRIDES += \
    service.brcm.fm.start_snr=41 \
    service.brcm.fm.stop_snr=20

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.brcm.log=none \
    persist.brcm.ap_crash=none \
    persist.brcm.cp_crash=none \
    wifi.interface=wlan0 \
    net.streaming.rtsp.uaprof=http://wap.samsungmobile.com/uaprof/ \
    media.enable-commonsource=true \
    ro.config.low_ram=true \
    persist.sys.force_highendgfx=true \
    persist.log.tag.java.hwcomposer=S \
    persist.log.tag.ResourcesCompat=S

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# JNI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.kernel.checkjni=0 \
    dalvik.vm.checkjni=false

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
    dalvik.vm.image-dex2oat-filter=verify-at-runtime \
    dalvik.vm.dex2oat-filter=verify-at-runtime

# Dalvik heap
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=56m

# MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
