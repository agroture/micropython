set(SDKCONFIG_DEFAULTS
    ${SDKCONFIG_DEFAULTS}
    boards/sdkconfig.minimal
    boards/sdkconfig.ota.bp8mb.dev
    boards/sdkconfig.240mhz
)

list(APPEND MICROPY_DEF_BOARD
    MICROPY_HW_MCU_NAME="ESP32S3-OTA-BP-DEV-SRQD-8MB"
    MICROPY_PY_BLUETOOTH=0
)
