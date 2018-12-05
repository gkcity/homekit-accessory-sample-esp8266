#!/bin/bash

export IDF_PATH=/opt/ESP8266_RTOS_SDK
export ESP8266_TOOLCHAIN=/opt/xtensa-lx106-elf
export PATH=$ESP8266_TOOLCHAIN/bin:$PATH

make 
