#!/bin/bash
source /opt/esp/idf/export.sh
port_dir=/micropython/ports/esp32
packman copy_project /project $port_dir/modules
cd /micropython
make -C $port_dir BOARD=$1 BOARD_VARIANT=$2
packman create_bundle $4 $port_dir/build-$1-$2 /project/$3_$4.bundle
