#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

PROJECT_NAME := homekit_lightbulb

include $(IDF_PATH)/make/project.mk

#CCFLAGS += -Os -DESP8266 -DLWIP_SOCKET -DLWIP_TIMEVAL_PRIVATE=1 -DICACHE_FLASH

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
          -DLWIP_SOCKET \
          -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
