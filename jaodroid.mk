$(call inherit-product, device/generic/goldfish/64bitonly/product/sdk_phone64_x86_64.mk)

# ================= Production Options =================
PRODUCT_NAME            := jaodroid
PRODUCT_DEVICE          := jaoboard
PRODUCT_BRAND           := generic
PRODUCT_MODEL           := XPTO
PRODUCT_MANUFACTURER    := jao
# ================= END =================


PRODUCT_PACKAGES += \
    mypackage.mysubpackage.fooAIDL \
	mypackage.mysubpackage.fooAIDL-service \
	foo_AIDL_tester


PRODUCT_PRODUCT_PROPERTIES += ro.mydevice.feature_enabled=true ro.vendor.custom.prop=1


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.jaodroid.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.jaodroid.rc


PRODUCT_VENDOR_PROPERTIES += \
    ro.kernel.test=test2 \
	ro.custom.prop=1 \
