#!/bin/bash

export IDF_PATH=/opt/esp-idf-8266-tiny
export ESP8266_TOOLCHAIN=/opt/xtensa-lx106-elf
export PATH=$ESP8266_TOOLCHAIN/bin:$PATH

make 
