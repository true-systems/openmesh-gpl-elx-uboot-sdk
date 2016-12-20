##### Description ##############################
# Project name: 
# PLATFORM:	Atheros QCA9558 Platform
# RAM: 		DDR2 2*64MB
# FLASH: 	16MBytes	
# ETHERNET:	AR8033+AR8035 PHY
# OTHER:	
################################################

#-------- UImage file name ----------------
UIMAGE_FILENAME= uboot_7479OMC.img

export BOARD_CONFIG=board955x_config

export EXTRA_CFLAGS= -DCFG_KERN_ADDR=0x9f070000 \
        -DCFG_BOOTLOADER_SIZE=0x40000 -DCFG_CONFIG_SIZE=0xd000 \
        -DCFG_FACTORY_SIZE=0x10000

# export EXTRA_CFLAGS += -DCONFIG_USE_FIXED_MAC=1

export pll=CFG_PLL_720_600_200
export CFG_INIT_STACK_IN_SRAM=1
#-------- toolchain ----------------
CROSS_PATH = /opt/buildroot-mips-2013.05
CROSS_BIN_DIR = $(CROSS_PATH)/usr/bin

export CROSS_COMPILE = $(CROSS_BIN_DIR)/mips-linux-


#-------GPIO Pin Define ---------#
UBOOT_SUPPORT_HW_WD=y
UBOOT_SUPPORT_HW_WD_GPIO=12
UBOOT_SUPPORT_DIAG_LED_GPIO=14


#------- Profile Define ---------#

#------- USB function ---------#

#-----ELX header image-----#
EDX_SUPPORT_ELX_HEADER_IMAGE=y

#----- Others ------#
export COMPRESSED_UBOOT=0



export CFG_BOARD_TYPE=7479PLC
export ETH_CONFIG2=_ar8033
export ETH_CONFIG=_ar8035
export ATH_GMAC_GE0_IS_CONNECTED=1
export ATH_GMAC_GE1_IS_CONNECTED=1
export ATH_GMAC0_MII=ATHR_MII
export ATH_GMAC1_MII=ATHR_SGMII
#sgmii defines
export ATH_CFG_SGMII=1
export ATH_CONFIG_SWAP_SGMII=0
export ATH_GMAC_SUPPORT_DUAL_PHY=1
export ATH_MDC_GPIO=1
#export ATH_SWITCH_ONLY_MODE=1




export HAS_OPENMESH_PATCH=1
export SUPPORT_EW_7479OMC=y

 
