# Release name
PRODUCT_RELEASE_NAME := tb3710i_lenovo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/tb3710i_lenovo/device_tb3710i_lenovo.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_tb3710i_lenovo
PRODUCT_DEVICE :=tb3710i_lenovo
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := lenovo
PRODUCT_MODEL := tb3710i_lenovo
