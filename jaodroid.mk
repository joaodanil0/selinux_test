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


# PRODUCT_VENDOR_PROPERTIES += \
#     ro.kernel.test=test2 \
# 	ro.custom.prop=1 \



# 11-05 00:23:22.491 2900 2900 I auditd : type=1400 audit(0.0:673): avc: denied { read } for comm="AA_GUID_WQ-0" name="u:object_r:default_prop:s0" dev="tmpfs" ino=145 scontext=u:r:androidauto_app:s0 tcontext=u:object_r:default_prop:s0 tclass=file permissive=0 
# 11-05 00:23:22.499 2900 6992 W libc : Access denied finding property "aaudio.log_mask"

# 11-12 19:47:03.746  436  436 I auditd : type=1400 audit(0.0:160): avc: denied { read } for comm="binder:436_2" name="u:object_r:default_prop:s0" dev="tmpfs" ino=148 scontext=u:r:hal_fooAIDL_default:s0 tcontext=u:object_r:default_prop:s0 tclass=file permissive=0
