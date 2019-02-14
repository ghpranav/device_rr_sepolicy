#
# This policy configuration will be used by all products that
# inherit from RR
#

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/rr/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/rr/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/rr/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/rr/sepolicy/common/dynamic \
    device/rr/sepolicy/common/vendor
endif
