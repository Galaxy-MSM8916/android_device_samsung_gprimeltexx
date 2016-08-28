$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gprimeltexx/gprimeltexx-common-vendor.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gprimeltexx/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
		
# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
	$(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
	$(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
	$(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	$(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
	$(LOCAL_PATH)/rootdir/etc/init.sec.boot.sh:system/etc/init.sec.boot.sh \
	$(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc
	
# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
	$(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
	$(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_PATH)/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	$(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl
	
# Configurations
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/configs/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/configs/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config \
    $(LOCAL_PATH)/configs/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/configs/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

#Location, WiDi
PRODUCT_PACKAGES += \
	com.android.location.provider \
	com.android.location.provider.xml \
	com.android.media.remotedisplay \
	com.android.media.remotedisplay.xml

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze
	
# Touch issue workaround
PRODUCT_PACKAGES += \
    InputDisabler	

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8916 \
    audio.primary.msm8916 \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

# TinyAlsa utils
PRODUCT_PACKAGES += \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo	
	
# Display
PRODUCT_PACKAGES += \
    copybit.msm8916 \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    memtrack.msm8916 \
    liboverlay \
    libqdutils \
    libqservice \
    libtinyxml
	
# Power
PRODUCT_PACKAGES += \
    power.msm8916

# Lights
PRODUCT_PACKAGES += \
    lights.msm8916

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8916
    
# Camera
PRODUCT_PACKAGES += \
    libmm-qcamera \
    camera.msm8916
	
# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libOmxVidcCommon \
	libOmxVdecHevc \
	libOmxVdpp \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
	libdivxdrmdecrypt \
    libstagefrighthw \
    libdashplayer \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc
	
# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    fsck.f2fs

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# WCNSS service daemon
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service

# Misc
PRODUCT_PACKAGES += \
    libxml2 \
    Stk \
	Stk2	
	
# SoftAP
PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg

#VoLTE calling support
PRODUCT_PACKAGES += \
    com.android.ims \
    com.android.ims.internal \
    ims-common \
    voip-common

# CRDA
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# WPA supplicant
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf	

# USB
# Default Property Overrides
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	telephony.lteOnCdmaDevice=0 \
	persist.radio.apm_sim_not_pwdn=1 \
	rild.libpath=/system/lib/libsec-ril.so \
	persist.radio.add_power_save=1 \
	camera2.portability.force_api=1 \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.config.zram=true \
    persist.service.adb.enable=1 \
    ro.telephony.ril_class=SamsungQcomRIL

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    dalvik.vm.heapgrowthlimit=128m \
    ro.security.icd.flagmode=single \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1 \
    ro.pip.gated=0 \
    ro.product.model=SM-G530FZ \
    ro.product.device=gprimeltexx \
    ro.config.zram=true \
    cm.updater.uri=http://grandprime.ddns.net/api \
    ro.telephony.ril_class=SamsungQcomRIL

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
	
# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything \
    dalvik.vm.dex2oat-flags=--no-watch-dog \
	ro.sys.fw.dex2oat_thread_count=4

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
	config.disable_atlas=true

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Common qcom
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

# Dalvik heap config
include frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)      
else      
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gprimeltexx
PRODUCT_DEVICE := gprimeltexx
PRODUCT_MODEL := SM-G530FZ
