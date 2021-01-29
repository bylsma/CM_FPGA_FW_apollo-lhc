#================================================================================
#  Configure and add AXI slaves
#  Auto-generated by 
#================================================================================
#V_IO
[AXI_PL_DEV_CONNECT V_IO                 ${AXI_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_MASTER_RSTN} 50000000 0x83D40000 4K]

#CM_V_INFO
[AXI_PL_DEV_CONNECT CM_V_INFO            ${AXI_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_MASTER_RSTN} 50000000 0x83D43000 4K]

#VIRTEX_IPBUS
[AXI_PL_DEV_CONNECT VIRTEX_IPBUS         ${AXI_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_MASTER_RSTN} 50000000 0x8C000000 32M AXI4]

#VIRTEX_SYS_MGMT
[AXI_IP_SYS_MGMT VIRTEX_SYS_MGMT         ${AXI_INTERCONNECT_NAME} ${AXI_MASTER_CLK} ${AXI_MASTER_RSTN} 50000000 0x83D42000 4K 0]
