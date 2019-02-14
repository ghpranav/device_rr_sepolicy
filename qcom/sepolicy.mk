#
# This policy configuration will be used by all qcom products
# that inherit from RR
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/rr/sepolicy/qcom/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/lineage/sepolicy/qcom/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/rr/sepolicy/qcom/dynamic \
    device/rr/sepolicy/qcom/vendor
endif
