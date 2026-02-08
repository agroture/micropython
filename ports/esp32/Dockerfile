FROM espressif/idf:v5.5.2

COPY . .
RUN make -C mpy-cross
RUN make -C ports/esp32 submodules
