# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/gprimeltexx/BoardConfigVendor.mk

LOCAL_PATH := device/samsung/gprimeltexx

#BLOCK_BASED_OTA := false

# Assert
TARGET_OTA_ASSERT_DEVICE := gprimeltexx,grandprimelte,samsung_sm_g530fz,g530fz

# Platform
TARGET_BOARD_PLATFORM           := msm8916
TARGET_BOARD_PLATFORM_GPU       := qcom-adreno306
TARGET_BOOTLOADER_BOARD_NAME    := MSM8916

# Arch
TARGET_GLOBAL_CFLAGS            += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS          += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_VARIANT              := cortex-a53
TARGET_CPU_CORTEX_A53           := true
ARCH_ARM_HAVE_TLS_REGISTER      := true

# Board CFLAGS
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Qcom
TARGET_PLATFORM_DEVICE_BASE          := /devices/soc.0/
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE   := true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true
TARGET_USES_QCOM_BSP                 := true
TARGET_USES_NEW_ION_API              :=true

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_fortuna_eur_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/grandprime

# Partition sizes
TARGET_USERIMAGES_USE_EXT4          := true
BOARD_BOOTIMAGE_PARTITION_SIZE      := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 1568669696
BOARD_SYSTEMIMAGE_PARTITION_TPE    := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE     := 314572800
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_HIDDENIMAGE_PARTITION_SIZE     := 10485760
BOARD_HIDDENIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 8388608
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 5637124096
BOARD_FLASH_BLOCK_SIZE              := 131072

# Wifi
WLAN_CHIPSET := pronto
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME          := "wlan"

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_QCOM                   := true
BLUETOOTH_HCI_USE_MCT                       := true

# Custom RIL class
BOARD_RIL_CLASS                     := ../../../device/samsung/gprimeltexx/ril/
PROTOBUF_SUPPORTED                  := true

# Fonts
EXTENDED_FONT_FOOTPRINT             := true

# malloc implementation
MALLOC_IMPL                         := dlmalloc

# Vendor Init
TARGET_UNIFIED_DEVICE               := true
TARGET_INIT_VENDOR_LIB              := libinit_msm
TARGET_LIBINIT_DEFINES_FILE         := $(LOCAL_PATH)/init/init_gprimeltexx.c

# Audio
TARGET_QCOM_AUDIO_VARIANT            := caf
BOARD_USES_ALSA_AUDIO                := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE        := true
BOARD_CHARGER_ENABLE_SUSPEND         := true
BOARD_CHARGING_MODE_BOOTING_LPM      := /sys/class/power_supply/battery/batt_lp_charging

# Enable QCOM FM feature
AUDIO_FEATURE_ENABLED_FM             := true

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION            := true

# Build our own PowerHAL
TARGET_POWERHAL_VARIANT              := qcom
CM_POWERHAL_EXTENSION                := qcom

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH      := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS  := true
BOARD_VOLD_MAX_PARTITIONS            := 65

# Camera
TARGET_PROVIDES_CAMERA_HAL           := true
USE_DEVICE_SPECIFIC_CAMERA           := true

# CMHW
BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/cmhw

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHT            := true

# Media
TARGET_QCOM_MEDIA_VARIANT           := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS    := true

# Display
TARGET_CONTINUOUS_SPLASH_ENABLED      := true
TARGET_USES_OVERLAY 		        := true
TARGET_HARDWARE_3D		            := false
TARGET_HAVE_HDMI_OUT 		        := false
USE_OPENGL_RENDERER                 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS       := 3
MAX_EGL_CACHE_KEY_SIZE                := 12*1024
MAX_EGL_CACHE_SIZE                    := 2048*1024
OVERRIDE_RS_DRIVER                    := libRSDriver.so

# Boot animation
TARGET_SCREEN_WIDTH                 := 540
TARGET_SCREEN_HEIGHT                := 960

# Recovery
TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/rootdir/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 			:= true
BOARD_HAS_LARGE_FILESYSTEM			:= true
TARGET_RECOVERY_DENSITY 			:= hdpi
BOARD_HAS_NO_MISC_PARTITION 		:= true
BOARD_HAS_NO_SELECT_BUTTON 			:= true
BOARD_RECOVERY_SWIPE 				:= true
BOARD_USE_CUSTOM_RECOVERY_FONT 	    := \"roboto_23x41.h\"
BOARD_USES_MMCUTILS 				:= true
#RECOVERY_VARIANT				    := cm

# Logging
TARGET_USES_LOGD                    := false
	
# Misc.
TARGET_SYSTEM_PROP                              := $(LOCAL_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS                  := $(LOCAL_PATH)

# SELinux
include device/qcom/sepolicy/sepolicy.mk
include vendor/cm/sepolicy/sepolicy.mk
include vendor/samsung/common/sepolicy/sepolicy.mk
include vendor/cm/sepolicy/qcom/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/gprimeltexx/sepolicy

BOARD_SEPOLICY_UNION += \
	audiod.te \
	ueventd.te \
	file.te \
	shell.te \
	surfaceflinger.te \
	bluetooth.te \
	bluetooth_loader.te \
	wcnss_service.te \
	healthd.te \
	kernel.te \
	property.te \
	rild.te \
	qseecomd.te \
	system_server.te \
	time_daemon.te \
	sysinit.te \
	mm-qcamerad.te \
	file_contexts \
	init_shell.te \
	init.te \
	lkmd.te \
	qmuxd.te \
	rfs_access.te \
	rmt_storage.te \
	keystore.te \
	perfd.te \
	mediaserver.te \
	vold.te \
	property_contexts
    
#make, move, symlink and strip the wlan kernel module.
KERNEL_EXTERNAL_MODULES:
	+$(MAKE) -C device/samsung/$(TARGET_DEVICE)/wlan/prima/ WLAN_ROOT=$(ANDROID_BUILD_TOP)/device/samsung/$(TARGET_DEVICE)/wlan/prima/ \
		KERNEL_SOURCE=$(KERNEL_OUT) ARCH="arm" \
		CROSS_COMPILE="arm-eabi-"
	mkdir $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/ -p
	ln -sf /system/lib/modules/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko $(TARGET_OUT)/lib/modules/wlan.ko
	mv device/samsung/$(TARGET_DEVICE)/wlan/prima/wlan.ko $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko
	arm-eabi-strip --strip-debug $(KERNEL_MODULES_OUT)/$(WLAN_CHIPSET)/$(WLAN_CHIPSET)_wlan.ko
	+$(MAKE) -C device/samsung/$(TARGET_DEVICE)/wlan/prima/ clean
TARGET_KERNEL_MODULES := KERNEL_EXTERNAL_MODULES

