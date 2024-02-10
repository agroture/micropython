set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.ble
    boards/sdkconfig.free_ram
    boards/sdkconfig.free_flash
    boards/sdkconfig.ota.4mb.dev
)
set(MICROPY_FROZEN_MANIFEST ${MICROPY_BOARD_DIR}/manifest_ble.py)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_MCU_NAME="ESP32C3-OTA-DEV"
#   MICROPY_OPT_COMPUTED_GOTO=0
    MICROPY_PY_LWIP=0
)
