set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.ble
    boards/sdkconfig.minimal
    boards/sdkconfig.bp4mb.prod
)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_MCU_NAME="ESP32C3-BP-PROD"
)
