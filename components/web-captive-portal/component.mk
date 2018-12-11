#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += web-captive-portal/source/src/captive-portal
COMPONENT_SRCDIRS         += web-captive-portal/source/src/captive-portal

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
