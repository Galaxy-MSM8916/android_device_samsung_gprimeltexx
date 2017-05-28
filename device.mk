#Inherit from vendor
$(call inherit-product, vendor/samsung/gprimeltexx/gprimeltexx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gprimelte-common/device-common.mk)

LOCAL_PATH := device/samsung/gprimeltexx

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# KSM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=10 \
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
