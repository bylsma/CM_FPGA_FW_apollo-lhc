
#set the FPGA part number
set FPGA_part xcvu7p-flvb2104-1-e

##for c2c
set C2C V_C2C
set C2C_PHY ${C2C}_PHY

#enable remote device tree entries
#also set them to be 64bit values
global REMOTE_C2C
global REMOTE_C2C_64
set REMOTE_C2C 1
set REMOTE_C2C_64 1

set top top

set outputDir ./

