#
# Component Makefile
#
COMPONENT_ADD_INCLUDEDIRS += tinycrypto/source/src

COMPONENT_SRCDIRS += tinycrypto/source/src/base64 \
		     tinycrypto/source/src/bignum/polarssl \
		     tinycrypto/source/src/srp \
		     tinycrypto/source/src/sha \
		     tinycrypto/source/src/hmac \
		     tinycrypto/source/src/hkdf \
		     tinycrypto/source/src/chacha20 \
		     tinycrypto/source/src/poly1305 \
		     tinycrypto/source/src/chacha20poly1305 \
		     tinycrypto/source/src/x25519 \
		     tinycrypto/source/src/ed25519


CFLAGS += -DTINY_STATIC \
          -DESP8266 \
	  -DLWIP_SOCKET \
	  -DICACHE_FLASH \
          -Wno-multichar \
          -Wno-pointer-to-int-cast \
          -fPIC \
          -std=gnu99
