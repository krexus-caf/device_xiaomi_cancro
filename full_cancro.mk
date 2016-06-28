# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cancro device
$(call inherit-product, device/xiaomi/cancro/cancro.mk)
$(call inherit-product-if-exists, vendor/xiaomi/cancro/cancro-vendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := cancro
PRODUCT_NAME := full_cancro
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI Cancro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=cancro
