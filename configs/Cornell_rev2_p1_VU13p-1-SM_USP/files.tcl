set bd_path proj

array set bd_files [list {c2cSlave} {src/c2cBD/createC2CSlaveInterconnect.tcl} \
			]

set vhdl_files "\
     configs/${build_name}/src/top.vhd \
     src/misc/DC_data_CDC.vhd \
     src/misc/pacd.vhd \
     src/misc/types.vhd \
     src/misc/capture_CDC.vhd \
     src/misc/counter.vhd \
     src/misc/counter_CDC.vhd \
     regmap_helper/axiReg/axiRegWidthPkg_32.vhd \
     regmap_helper/axiReg/axiRegPkg_d64.vhd \
     regmap_helper/axiReg/axiRegPkg.vhd \
     regmap_helper/axiReg/axiReg.vhd \
     regmap_helper/axiReg/bramPortPkg.vhd \
     regmap_helper/axiReg/axiRegBlocking.vhd \
     src/C2C_INTF/C2C_Intf.vhd \
     src/C2C_INTF/CM_phy_lane_control.vhd \
     src/RGB_PWM.vhd \
     src/LED_PWM.vhd \
     src/misc/rate_counter.vhd \
     src/CM_FW_info/CM_FW_info.vhd \
     ${autogen_path}/IO/IO_PKG.vhd \
     src/custom/IO_map_custom_at_0x310.vhd \
     ${autogen_path}/C2C_INTF/C2C_INTF_map.vhd \
     ${autogen_path}/C2C_INTF/C2C_INTF_PKG.vhd \
     ${autogen_path}/CM_FW_INFO/CM_FW_INFO_PKG.vhd \
     ${autogen_path}/CM_FW_INFO/CM_FW_INFO_map.vhd \
     src/C2C_INTF/picoblaze/picoblaze/kcpsm6.vhd \
     src/C2C_INTF/picoblaze/uart_rx6.vhd \
     src/C2C_INTF/picoblaze/uart_tx6.vhd \
     src/C2C_INTF/picoblaze/uC.vhd \
     src/C2C_INTF/picoblaze/picoblaze/cli.vhd \
     src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/hdl/SectorProcessor.vhd \
     src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/hdl/memUtil_pkg.vhd \
     src/tt_master/IntegrationTests/common/hdl/CreateStartSignal.vhd \
     src/tt_master/IntegrationTests/common/hdl/tf_pkg.vhd \
     "
set vhdl_2008_files "\
     src/tt_master/IntegrationTests/common/hdl/tf_lut.vhd \
     src/tt_master/IntegrationTests/common/hdl/tf_mem.vhd \
     src/tt_master/IntegrationTests/common/hdl/tf_mem_bin.vhd \
     src/tt_master/IntegrationTests/common/hdl/tf_mem_bin_cm4.vhd \
     src/tt_master/IntegrationTests/common/hdl/tf_mem_bin_cm5.vhd \
     "

set xdc_files "\
    configs/${build_name}/src/top_pins.xdc \
    configs/${build_name}/src/top_timing.xdc	\
    configs/${build_name}/src/tt_placement.xdc	\
    "	    

set xci_files "\
	      cores/AXI_BRAM/AXI_BRAM.xci \
	      cores/DP_BRAM/DP_BRAM.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_1_A/IR_2S_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_1_B/IR_2S_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_2_A/IR_2S_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_2_B/IR_2S_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_3_A/IR_2S_3_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_3_B/IR_2S_3_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_4_A/IR_2S_4_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_2S_4_B/IR_2S_4_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_1_A/IR_neg2S_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_1_B/IR_neg2S_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_2_A/IR_neg2S_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_2_B/IR_neg2S_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_3_A/IR_neg2S_3_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_3_B/IR_neg2S_3_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_4_A/IR_neg2S_4_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_neg2S_4_B/IR_neg2S_4_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_1_A/IR_negPS10G_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_1_B/IR_negPS10G_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_2_A/IR_negPS10G_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_2_B/IR_negPS10G_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_3_A/IR_negPS10G_3_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS10G_3_B/IR_negPS10G_3_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS_1_A/IR_negPS_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS_1_B/IR_negPS_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS_2_A/IR_negPS_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_negPS_2_B/IR_negPS_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_1_A/IR_PS10G_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_1_B/IR_PS10G_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_2_A/IR_PS10G_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_2_B/IR_PS10G_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_3_A/IR_PS10G_3_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS10G_3_B/IR_PS10G_3_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS_1_A/IR_PS_1_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS_1_B/IR_PS_1_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS_2_A/IR_PS_2_A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/IR_PS_2_B/IR_PS_2_B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIA/VMR_L1PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIB/VMR_L1PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIC/VMR_L1PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHID/VMR_L1PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIE/VMR_L1PHIE.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIF/VMR_L1PHIF.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIG/VMR_L1PHIG.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L1PHIH/VMR_L1PHIH.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L2PHIA/VMR_L2PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L2PHIB/VMR_L2PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L2PHIC/VMR_L2PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L2PHID/VMR_L2PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L3PHIA/VMR_L3PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L3PHIB/VMR_L3PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L3PHIC/VMR_L3PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L3PHID/VMR_L3PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L4PHIA/VMR_L4PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L4PHIB/VMR_L4PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L4PHIC/VMR_L4PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L4PHID/VMR_L4PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L5PHIA/VMR_L5PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L5PHIB/VMR_L5PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L5PHIC/VMR_L5PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L5PHID/VMR_L5PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L6PHIA/VMR_L6PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L6PHIB/VMR_L6PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L6PHIC/VMR_L6PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/VMR_L6PHID/VMR_L6PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TE_PS_PS/TE_PS_PS.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TE_PS_2S/TE_PS_2S.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TE_2S_2S/TE_2S_2S.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2A/TC_L1L2A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2B/TC_L1L2B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2C/TC_L1L2C.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2D/TC_L1L2D.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2E/TC_L1L2E.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2F/TC_L1L2F.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2G/TC_L1L2G.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2H/TC_L1L2H.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2I/TC_L1L2I.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2J/TC_L1L2J.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2K/TC_L1L2K.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L1L2L/TC_L1L2L.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L2L3A/TC_L2L3A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L2L3B/TC_L2L3B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L2L3C/TC_L2L3C.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L2L3D/TC_L2L3D.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L3L4A/TC_L3L4A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L3L4B/TC_L3L4B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L3L4C/TC_L3L4C.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L3L4D/TC_L3L4D.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L5L6A/TC_L5L6A.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L5L6B/TC_L5L6B.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L5L6C/TC_L5L6C.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/TC_L5L6D/TC_L5L6D.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIA/PR_L1PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIB/PR_L1PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIC/PR_L1PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHID/PR_L1PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIE/PR_L1PHIE.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIF/PR_L1PHIF.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIG/PR_L1PHIG.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L1PHIH/PR_L1PHIH.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L2PHIA/PR_L2PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L2PHIB/PR_L2PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L2PHIC/PR_L2PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L2PHID/PR_L2PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L3PHIA/PR_L3PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L3PHIB/PR_L3PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L3PHIC/PR_L3PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L3PHID/PR_L3PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L4PHIA/PR_L4PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L4PHIB/PR_L4PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L4PHIC/PR_L4PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L4PHID/PR_L4PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L5PHIA/PR_L5PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L5PHIB/PR_L5PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L5PHIC/PR_L5PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L5PHID/PR_L5PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L6PHIA/PR_L6PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L6PHIB/PR_L6PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L6PHIC/PR_L6PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/PR_L6PHID/PR_L6PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L1/ME_L1.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L2/ME_L2.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L3/ME_L3.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L4/ME_L4.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L5/ME_L5.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/ME_L6/ME_L6.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIA/MC_L1PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIB/MC_L1PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIC/MC_L1PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHID/MC_L1PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIE/MC_L1PHIE.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIF/MC_L1PHIF.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIG/MC_L1PHIG.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L1PHIH/MC_L1PHIH.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L2PHIA/MC_L2PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L2PHIB/MC_L2PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L2PHIC/MC_L2PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L2PHID/MC_L2PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L3PHIA/MC_L3PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L3PHIB/MC_L3PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L3PHIC/MC_L3PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L3PHID/MC_L3PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L4PHIA/MC_L4PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L4PHIB/MC_L4PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L4PHIC/MC_L4PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L4PHID/MC_L4PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L5PHIA/MC_L5PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L5PHIB/MC_L5PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L5PHIC/MC_L5PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L5PHID/MC_L5PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L6PHIA/MC_L6PHIA.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L6PHIB/MC_L6PHIB.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L6PHIC/MC_L6PHIC.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/MC_L6PHID/MC_L6PHID.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/FT_L1L2/FT_L1L2.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/FT_L2L3/FT_L2L3.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/FT_L3L4/FT_L3L4.xci \
              src/tt_master/IntegrationTests/BarrelConfig/IRtoTB/script/Work/Work.srcs/sources_1/ip/FT_L5L6/FT_L5L6.xci \
    	      cores/TC_BRAM/ROM_DL_2S_1_A_04/ROM_DL_2S_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_1_B_04/ROM_DL_2S_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_2_A_04/ROM_DL_2S_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_2_B_04/ROM_DL_2S_2_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_3_A_04/ROM_DL_2S_3_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_3_B_04/ROM_DL_2S_3_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_4_A_04/ROM_DL_2S_4_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_2S_4_B_04/ROM_DL_2S_4_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_1_A_04/ROM_DL_neg2S_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_1_B_04/ROM_DL_neg2S_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_2_A_04/ROM_DL_neg2S_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_2_B_04/ROM_DL_neg2S_2_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_3_A_04/ROM_DL_neg2S_3_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_3_B_04/ROM_DL_neg2S_3_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_4_A_04/ROM_DL_neg2S_4_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_neg2S_4_B_04/ROM_DL_neg2S_4_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_1_A_04/ROM_DL_negPS10G_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_1_B_04/ROM_DL_negPS10G_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_2_A_04/ROM_DL_negPS10G_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_2_B_04/ROM_DL_negPS10G_2_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_3_A_04/ROM_DL_negPS10G_3_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS10G_3_B_04/ROM_DL_negPS10G_3_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS_1_A_04/ROM_DL_negPS_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS_1_B_04/ROM_DL_negPS_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS_2_A_04/ROM_DL_negPS_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_negPS_2_B_04/ROM_DL_negPS_2_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_1_A_04/ROM_DL_PS10G_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_1_B_04/ROM_DL_PS10G_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_2_A_04/ROM_DL_PS10G_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_2_B_04/ROM_DL_PS10G_2_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_3_A_04/ROM_DL_PS10G_3_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS10G_3_B_04/ROM_DL_PS10G_3_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS_1_A_04/ROM_DL_PS_1_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS_1_B_04/ROM_DL_PS_1_B_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS_2_A_04/ROM_DL_PS_2_A_04.xci \
    	      cores/TC_BRAM/ROM_DL_PS_2_B_04/ROM_DL_PS_2_B_04.xci \
    	      cores/TC_BRAM/bar_only_vio_0/bar_only_vio_0.xci \
    	      cores/TC_BRAM/baronly_no_comp_ila/baronly_no_comp_ila.xci \
    	      cores/TC_BRAM/BarOnly_Mem_1/BarOnly_Mem_1.xci \
    	      "
#    	      cores/TC_BRAM/ROM_TF_L1L2/ROM_TF_L1L2.xci \
#    	      cores/TC_BRAM/ROM_TF_L2L3/ROM_TF_L2L3.xci \
#    	      cores/TC_BRAM/ROM_TF_L3L4/ROM_TF_L3L4.xci \
#    	      cores/TC_BRAM/ROM_TF_L5L6/ROM_TF_L5L6.xci \
#    	      cores/TC_BRAM/BarOnly_512_Mem/BarOnly_512_Mem.xci \

