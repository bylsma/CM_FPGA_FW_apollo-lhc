set bd_path proj/

array set bd_files [list {c2cSlave} {src/c2cBD/createC2CSlaveInterconnect.tcl} \
			]

set vhdl_files "\
     configs/Cornell_rev1_p1_KU15p-2-SM_USP/src/top.vhd \
     src/misc/pass_time_domain.vhd \
     src/misc/pacd.vhd \
     src/misc/types.vhd \
     src/misc/capture_CDC.vhd \
     src/misc/counter.vhd \
     src/misc/counter_clock.vhd \
     regmap_helper/axiReg/axiRegWidthPkg_32.vhd \
     regmap_helper/axiReg/axiRegPkg_d64.vhd \
     regmap_helper/axiReg/axiRegPkg.vhd \
     regmap_helper/axiReg/axiReg.vhd \
     regmap_helper/axiReg/bramPortPkg.vhd \
     regmap_helper/axiReg/axiRegBlocking.vhd \
     ${autogen_path}/CM_IO/K_IO_PKG.vhd \
     ${autogen_path}/CM_IO/K_IO_map.vhd \
     src/misc/RGB_PWM.vhd \
     src/misc/LED_PWM.vhd \
     src/misc/rate_counter.vhd \
     src/CM_FW_info/CM_K_info.vhd \
     ${autogen_path}/CM_FW_info/CM_K_INFO_PKG.vhd \
     ${autogen_path}/CM_FW_info/CM_K_INFO_map.vhd \
     ${autogen_path}/Quad_Test/QUAD_TEST_PKG.vhd \
     ${autogen_path}/Quad_Test/QUAD_TEST_map.vhd \
     src/QuadTest/ChannelTest.vhd \
     src/QuadTest/QuadTest.vhd \
     src/QuadTest/FF_K1_example_init.v \
     src/QuadTest/FF_K1_example_reset_sync.v \
     src/QuadTest/FF_K1_example_bit_sync.v \
     "

set xdc_files "\
    configs/Cornell_rev1_p1_KU15p-2-SM_USP/src/top_pins.xdc \
    configs/Cornell_rev1_p1_KU15p-2-SM_USP/src/top_timing.xdc	\
    "	    

set xci_files "\
    	      cores/Local_Clocking/Local_Clocking.xci \
	      cores/AXI_BRAM/AXI_BRAM.xci \
	      cores/DP_BRAM/DP_BRAM.xci \
    	      "

#              ${autogen_path}/../cores/my_ila.tcl \
#              ${autogen_path}/../cores/map_withbram_ila.tcl \

