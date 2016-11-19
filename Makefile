# exFAT filesystem driver rules

exfat := exfat

ifeq ($(CONFIG_EXFAT_COMPAT_TUXERA),y)
exfat := texfat
endif

obj-$(CONFIG_EXFAT_FS) := $(exfat).o

$(exfat)-y := exfat_super.o exfat_misc.o exfat_api.o \
	   exfat_blkdev.o exfat_cache.o \
	   exfat_data.o exfat_global.o exfat_nls.o \
	   exfat_oal.o exfat_upcase.o exfat_xattr.o

ccflags-y += -DEXFAT_VERSION=\"1.2.23\"
