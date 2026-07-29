#!/bin/bash

bflb-iot-tool --chipname bl808 --interface uart --port /dev/ttyACM1 --baudrate 115200 --addr 0x000000 --firmware m0_lowload_bl808_m0.bin --single
bflb-iot-tool --chipname bl808 --interface uart --port /dev/ttyACM1 --baudrate 115200--addr 0x100000 --firmware d0_lowload_bl808_d0.bin --single
bflb-iot-tool --chipname bl808 --interface uart --port /dev/ttyACM1 --baudrate 115200 --addr 0x800000 --firmware bl808-firmware.bin --single