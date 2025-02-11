set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.minimal
    boards/sdkconfig.ota.bp8mb.prod
    boards/sdkconfig.240mhz
    boards/sdkconfig.spiram_oct
)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_MCU_NAME="ESP32S3-OTA-BP-PROD"
    MICROPY_PY_BLUETOOTH=0
)
