
# file: ibert_ultrascale_gty_0.xdc
####################################################################################
##   ____  ____ 
##  /   /\/   /
## /___/  \  /    Vendor: Xilinx
## \   \   \/     Version : 2017.1
##  \   \         Application : IBERT Ultrascale
##  /   /         Filename : ibert_ultrascale_gty_ip_example.xdc
## /___/   /\     
## \   \  /  \ 
##  \___\/\___\
##
##
## 
## Generated by Xilinx IBERT Ultrascale
##**************************************************************************
## TX/RX out clock clock constraints
##
# GT X0Y4
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y5
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y6
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y7
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[0].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y8
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y9
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y10
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y11
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[1].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y12
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y13
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y14
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y15
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[2].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y16
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y17
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y18
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y19
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[3].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y20
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y21
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y22
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y23
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[4].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y24
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y25
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y26
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y27
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[5].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y28
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y29
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y30
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y31
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[6].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y32
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y33
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y34
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y35
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[7].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y36
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y37
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y38
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y39
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[8].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y40
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y41
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y42
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y43
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[9].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y48
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y49
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y50
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y51
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[10].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y52
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y53
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y54
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y55
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[11].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y56
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[0].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[0].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y57
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[1].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[1].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y58
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[2].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[2].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
# GT X0Y59
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[3].u_ch/u_gtye4_channel/RXOUTCLK}] -include_generated_clocks]
set_clock_groups -asynchronous -group [get_clocks -of_objects [get_pins {IBERT_R/u_ibert_gty_core_1/inst/QUAD[12].u_q/CH[3].u_ch/u_gtye4_channel/TXOUTCLK}] -include_generated_clocks]
