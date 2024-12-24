FROM espressif/idf:v5.5.2

COPY . /micropython
RUN bash -c "source /opt/esp/idf/export.sh && \
    make -C /micropython/mpy-cross && \
    make -C /micropython/ports/esp32 submodules && \
    python3 -m pip install mpbridge cbor2 /micropython/packman && \
    chmod +x /micropython/ports/esp32/entrypoint.sh"
ENTRYPOINT [ "/micropython/ports/esp32/entrypoint.sh" ]