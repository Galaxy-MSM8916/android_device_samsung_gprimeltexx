#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gprimeltexx/gprimeltexx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltexx

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Configurations
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/General_cal.acdb:system/etc/General_cal.acdb \
	$(LOCAL_PATH)/audio/Global_cal.acdb:system/etc/Global_cal.acdb \
	$(LOCAL_PATH)/audio/Handset_cal.acdb:system/etc/Handset_cal.acdb \
	$(LOCAL_PATH)/audio/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/Headset_cal.acdb:system/etc/Headset_cal.acdb \
	$(LOCAL_PATH)/audio/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	$(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

#NFC
PRODUCT_PACKAGES += \
	NfcNci

# NFC prebuilt files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/nfc/libnfc-sec-hal.conf:system/etc/libnfc-sec-hal.conf \
	$(LOCAL_PATH)/nfc/libnfc-sec.conf:system/etc/libnfc-brcm.conf

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.model=SM-G530FZ \
	ro.product.device=gprimeltexx

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

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gprimeltexx
PRODUCT_DEVICE := gprimeltexx
PRODUCT_MODEL := SM-G530FZ
