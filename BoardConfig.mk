# Inherit from common
include device/samsung/gprimelte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gprimeltexx

# Assert
TARGET_OTA_ASSERT_DEVICE := gprimeltexx,grandprimelte,samsung_sm_g530fz,g530fz

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_eur_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 1568669696
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5637124096

#Init
TARGET_LIBINIT_DEFINES_FILE         := $(LOCAL_PATH)/init/init_gprimeltexx.c

# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS                  := $(LOCAL_PATH)

