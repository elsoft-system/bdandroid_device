#
# Product-specific compile-time definitions.
#

include device/fsl/imx6/soc/imx6dq.mk
export BUILD_ID=4.4.2_1.0.0-ga
export BUILD_NUMBER=20140908
include device/fsl/imx6/BoardConfigCommon.mk

TARGET_KERNEL_DEFCONF := oc_defconfig

BOARD_HAS_SGTL5000 := true
BOARD_HAVE_BLUETOOTH := true
USE_CAMERA_STUB := false
BOARD_CAMERA_LIBRARIES := libcamera

BOARD_HAVE_WIFI := true

BOARD_HAVE_MODEM := false
BOARD_HAVE_IMX_CAMERA := true
BOARD_HAVE_USB_CAMERA := false
BOARD_HAS_SENSOR := false
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

USE_ION_ALLOCATOR := false
USE_GPU_ALLOCATOR := true

# camera hal v2
IMX_CAMERA_HAL_V2 := true

# define frame buffer count
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

include device/fsl-proprietary/gpu-viv/fsl-gpu.mk

BUILD_TARGET_FS ?= ext4
include device/fsl/imx6/imx6_target_fs.mk

PRODUCT_MODEL := OC

# for recovery service
TARGET_SELECT_KEY := 28
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttymxc1,115200 init=/init video=mxcfb0 video=mxcfb1:off video=mxcfb2:off fbmem=10M vmalloc=400M androidboot.console=ttymxc1

TARGET_TS_CALIBRATION := true

WPA_SUPPLICANT_VERSION			:= VER_0_8_X
WIFI_DRIVER_MODULE_NAME			:= "bcmdhd"
BOARD_WPA_SUPPLICANT_PRIVATE_LIB	:= lib_driver_cmd_bcmdhd
SKIP_WPA_SUPPLICAN_CONF                 := y
SKIP_WPA_SUPPLICANT_RTL                 := y
BOARD_WLAN_DEVICE			:= bcmdhd
WIFI_DRIVER_FW_PATH_PARAM		:= "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH			:= "/boot/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA			:= "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P			:= "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP			:= "/vendor/firmware/fw_bcmdhd_apsta.bin"
BOARD_HAVE_BLUETOOTH 			:= true
BOARD_HAVE_BLUETOOTH_BCM 		:= true
BOARD_USE_AR3K_BLUETOOTH		:= 

include device/boundary/sepolicy.mk

