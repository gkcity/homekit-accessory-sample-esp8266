#
# Main Makefile. This is basically the same as a component makefile.
#
# This Makefile should, at the very least, just include $(SDK_PATH)/make/component_common.mk. By default, 
# this will take the sources in the src/ directory, compile them and link them into 
# lib(subdirectory_name).a in the build directory. This behaviour is entirely configurable,
# please read the ESP-IDF documents if you need to do this.
#

COMPONENT_ADD_INCLUDEDIRS := include/hap-support include/hap-tcp

TINYHAPLIB = tinyhap
COMPONENT_ADD_LDFLAGS     := -L $(COMPONENT_PATH)/libs -ltinyhap

# re-link program if tinyhap library change
COMPONENT_ADD_LINKER_DEPS := $(patsubst %,$(COMPONENT_PATH)/libs/lib%.a,$(TINYHAPLIB))


-----------------------------------------------
#COMPONENT_ADD_INCLUDEDIRS := wolfssl/include wolfssl/wolfssl wolfssl/wolfssl/wolfssl

#WOLFSSLLIB = wolfssl                                                                                     
#COMPONENT_ADD_LDFLAGS     := -L $(COMPONENT_PATH)/wolfssl/lib -lwolfssl                                  

# re-link program if wolfssl library change                                                              
#COMPONENT_ADD_LINKER_DEPS := $(patsubst %,$(COMPONENT_PATH)/wolfssl/lib/lib%.a,$(WOLFSSLLIB))       
