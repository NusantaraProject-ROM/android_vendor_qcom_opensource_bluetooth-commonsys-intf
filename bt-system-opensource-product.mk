#ANT
PRODUCT_PACKAGES += AntHalService
PRODUCT_PACKAGES += libantradio
PRODUCT_PACKAGES += antradio_app


#BT
ifeq ($(BOARD_HAVE_BLUETOOTH_QCOM),true)

ifeq ($(TARGET_FWK_SUPPORTS_FULL_VALUEADDS), true)
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := vendor/qcom/opensource/commonsys-intf/bluetooth/build/qva/config
else
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := vendor/qcom/opensource/commonsys-intf/bluetooth/build/generic/config
endif #TARGET_FWK_SUPPORTS_FULL_VALUEADDS

ifeq ($(TARGET_USE_QTI_BT_STACK), true)
PRODUCT_PACKAGES += libbluetooth_qti
endif #TARGET_USE_QTI_BT_STACK

PRODUCT_PACKAGES += Bluetooth
PRODUCT_PACKAGES += bt_logger
PRODUCT_PACKAGES += libbt-logClient
PRODUCT_PACKAGES += BluetoothExt
PRODUCT_PACKAGES += libbtconfigstore
# BT Related Test app & Tools
PRODUCT_PACKAGES_DEBUG += BATestApp
PRODUCT_PACKAGES_DEBUG += BTTestApp
PRODUCT_PACKAGES_DEBUG += HidTestApp
PRODUCT_PACKAGES_DEBUG += btsnoop
PRODUCT_PACKAGES_DEBUG += gatt_tool_qti_internal
PRODUCT_PACKAGES_DEBUG += l2test_ertm
PRODUCT_PACKAGES_DEBUG += rfc
endif #BOARD_HAVE_BLUETOOTH_QCOM


#FM
PRODUCT_PACKAGES += libqcomfm_jni
PRODUCT_PACKAGES += libfmjni
PRODUCT_PACKAGES += fm_helium
PRODUCT_PACKAGES += libfm-hci
PRODUCT_PACKAGES += FM2

ifeq ($(strip $(BOARD_HAVE_QCOM_FM)),true)
#PRODUCT_BOOT_JARS += qcom.fmradio
# system prop for fm
PRODUCT_PROPERTY_OVERRIDES += vendor.hw.fm.init=0
endif #BOARD_HAVE_QCOM_FM


#WIPOWER
ifeq ($(BOARD_USES_WIPOWER),true)
#WIPOWER, wbc
PRODUCT_PACKAGES += wbc_hal.default
PRODUCT_PACKAGES += com.quicinc.wbc
PRODUCT_PACKAGES += com.quicinc.wbc.xml
PRODUCT_PACKAGES += com.quicinc.wbcservice
PRODUCT_PACKAGES += com.quicinc.wbcservice.xml
PRODUCT_PACKAGES += libwbc_jni
PRODUCT_PACKAGES += com.quicinc.wipoweragent
PRODUCT_PACKAGES += com.quicinc.wbcserviceapp
#WIPOWER, a4wp
PRODUCT_PACKAGES += libwipower_jni
PRODUCT_PACKAGES += android.wipower
PRODUCT_PACKAGES += android.wipower.xml
PRODUCT_PACKAGES += a4wpservice
PRODUCT_PACKAGES += wipowerservice
endif #BOARD_USES_WIPOWER
