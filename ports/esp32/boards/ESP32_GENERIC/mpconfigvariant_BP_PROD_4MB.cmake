set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.ble
    boards/sdkconfig.free_ram
    boards/sdkconfig.bp4mb.prod
)
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest_ble.py)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_MCU_NAME="ESP32-BP-PROD"
)
