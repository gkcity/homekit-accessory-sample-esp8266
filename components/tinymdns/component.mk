#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += tinymdns/source/src/TinyMDNS

COMPONENT_SRCDIRS += tinymdns/source/src/TinyMDNS \
		     tinymdns/source/src/TinyMDNS/codec \
		     tinymdns/source/src/TinyMDNS/message

CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
