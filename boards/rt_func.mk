##### Description ##############################
# Description move to profile.mk 
################################################
export ARCH = mips

#------platform info----------------

#------- Default Console port ---------

#-------Kernel offset ---------#
ifneq ($(strip $(EDX_KERNEL_OFFSET)),)
EXTRA_CFLAGS += -DEDX_KERNEL_OFFSET=$(EDX_KERNEL_OFFSET)
endif

#-------Uboot config file offset ---------#
ifneq ($(strip $(EDX_BOOTLOADER_SIZE)),)
EXTRA_CFLAGS += -DEDX_BOOTLOADER_SIZE=$(EDX_BOOTLOADER_SIZE)
endif

#-------GPIO Pin Define ---------#
ifneq ($(strip $(UBOOT_SUPPORT_HW_WD)),)
EXTRA_CFLAGS += -DUBOOT_SUPPORT_HW_WD
EXTRA_CFLAGS += -DUBOOT_SUPPORT_HW_WD_GPIO=$(UBOOT_SUPPORT_HW_WD_GPIO)
endif

ifneq ($(strip $(UBOOT_SUPPORT_DIAG_LED_GPIO)),)
EXTRA_CFLAGS += -DDIAG_GPIO=$(UBOOT_SUPPORT_DIAG_LED_GPIO)
endif

ifneq ($(strip $(UBOOT_SUPPORT_POWER_LED_GPIO)),)
EXTRA_CFLAGS += -DPOWER_LED_GPIO=$(UBOOT_SUPPORT_POWER_LED_GPIO)
endif

ifneq ($(strip $(UBOOT_SUPPORT_USB_POWER_GPIO)),)
EXTRA_CFLAGS += -DUSB_POWER_GPIO=$(UBOOT_SUPPORT_USB_POWER_GPIO)
endif

ifneq ($(strip $(UBOOT_SUPPORT_RESET_GPIO)),)
EXTRA_CFLAGS += -DRESET_GPIO=$(UBOOT_SUPPORT_RESET_GPIO)
endif

#------- Profile Define ---------#

ifneq ($(strip $(SUPPORT_EW_7479OMC)),)
EXTRA_CFLAGS += -DEW_7479OMC
endif
#---------Product Name------------#
ifneq ($(strip $(EDX_PRODUCT_NAME)),)
EXTRA_CFLAGS += -DEDX_PRODUCT_NAME=$(EDX_PRODUCT_NAME)
endif
ifneq ($(strip $(EDX_PRODUCT2_NAME)),)
EXTRA_CFLAGS += -DEDX_PRODUCT2_NAME=$(EDX_PRODUCT2_NAME)
endif

#-----Support GZIP-ed Kernel -----#
ifeq ($(CONFIG_GZIP),y)
EXTRA_CFLAGS += -DCONFIG_GZIP
endif

#-----Support 2nd pcie in QCA 955x platform -----#
ifeq ($(ATH_2ND_PCIE_ENABLE),y)
EXTRA_CFLAGS += -DATH_2ND_PCIE_ENABLE
endif


#-----Save default environment variables to flash when bad CRC-----#
ifneq ($(strip $(SAVE_DEF_ENV_VARIABLE)),)
EXTRA_CFLAGS += -DSAVE_DEF_ENV_VARIABLE
endif
ifeq ($(_LITTLE_ENDIAN),y)
EXTRA_CFLAGS += -D_LITTLE_ENDIAN
endif

ifneq ($(strip $(HAS_OPENMESH_PATCH)),)
EXTRA_CFLAGS += -DHAS_OPENMESH_PATCH
endif




