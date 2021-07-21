library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use ieee.std_logic_misc.all;

use work.axiRegPkg.all;
use work.axiRegPkg_d64.all;
use work.types.all;
use work.K_IO_Ctrl.all;


Library UNISIM;
use UNISIM.vcomponents.all;

entity top is
  port (
    -- clocks
    p_clk_100 : in std_logic;
    n_clk_100 : in std_logic;           -- 200 MHz system clock

    -- Zynq AXI Chip2Chip
    n_util_clk_chan0 : in std_logic;
    p_util_clk_chan0 : in std_logic;
    n_mgt_z2k        : in  std_logic_vector(1 downto 1);
    p_mgt_z2k        : in  std_logic_vector(1 downto 1);
    n_mgt_k2z        : out std_logic_vector(1 downto 1);
    p_mgt_k2z        : out std_logic_vector(1 downto 1)

--    k_fpga_i2c_scl   : inout std_logic;
--    k_fpga_i2c_sda   : inout std_logic

    --TCDS
    --p_clk0_chan0     : in std_logic; -- 200 MHz system clock
    --n_clk0_chan0     : in std_logic; 
    --p_clk1_chan0     : in std_logic; -- 312.195122 MHz synth clock
    --n_clk1_chan0     : in std_logic;
    --p_atca_tts_out   : out std_logic;
    --n_atca_tts_out   : out std_logic;
    --p_atca_ttc_in    : in  std_logic;
    --n_atca_ttc_in    : in  std_logic;

    
    -- tri-color LED
    --led_red : out std_logic;
    --led_green : out std_logic;
    --led_blue : out std_logic       -- assert to turn on
    -- utility bits to/from TM4C
    );    
end entity top;

architecture structure of top is

  
  signal clk_200_raw     : std_logic;
  signal clk_200         : std_logic;
  signal clk_50          : std_logic;
  signal reset           : std_logic;
  signal locked_clk200   : std_logic;

  signal led_blue_local  : slv_8_t;
  signal led_red_local   : slv_8_t;
  signal led_green_local : slv_8_t;

  constant localAXISlaves    : integer := 4;
  signal local_AXI_ReadMOSI  :  AXIReadMOSI_array_t(0 to localAXISlaves-1) := ( others => DefaultAXIReadMOSI);
  signal local_AXI_ReadMISO  :  AXIReadMISO_array_t(0 to localAXISlaves-1) := ( others => DefaultAXIReadMISO);
  signal local_AXI_WriteMOSI : AXIWriteMOSI_array_t(0 to localAXISlaves-1) := ( others => DefaultAXIWriteMOSI);
  signal local_AXI_WriteMISO : AXIWriteMISO_array_t(0 to localAXISlaves-1) := ( others => DefaultAXIWriteMISO);
  signal AXI_CLK             : std_logic;
  signal AXI_RST_N           : std_logic;
  signal AXI_RESET           : std_logic;

  signal ext_AXI_ReadMOSI  :  AXIReadMOSI_d64 := DefaultAXIReadMOSI_d64;
  signal ext_AXI_ReadMISO  :  AXIReadMISO_d64 := DefaultAXIReadMISO_d64;
  signal ext_AXI_WriteMOSI : AXIWriteMOSI_d64 := DefaultAXIWriteMOSI_d64;
  signal ext_AXI_WriteMISO : AXIWriteMISO_d64 := DefaultAXIWriteMISO_d64;

  signal C2C_Mon  : K_IO_C2C_MON_t;
  signal C2C_Ctrl : K_IO_C2C_Ctrl_t;
  
  signal clk_K_C2C_PHY_user                  : STD_logic;


  signal BRAM_write : std_logic;
  signal BRAM_addr  : std_logic_vector(9 downto 0);
  signal BRAM_WR_data : std_logic_vector(31 downto 0);
  signal BRAM_RD_data : std_logic_vector(31 downto 0);

--  signal AXI_BRAM_EN : std_logic;
--  signal AXI_BRAM_we : std_logic_vector(7 downto 0);
--  signal AXI_BRAM_addr :std_logic_vector(12 downto 0);
--  signal AXI_BRAM_DATA_IN : std_logic_vector(63 downto 0);
--  signal AXI_BRAM_DATA_OUT : std_logic_vector(63 downto 0);


  signal bram_rst_a    : std_logic;
  signal bram_clk_a    : std_logic;
  signal bram_en_a     : std_logic;
  signal bram_we_a     : std_logic_vector(7 downto 0);
  signal bram_addr_a   : std_logic_vector(8 downto 0);
  signal bram_wrdata_a : std_logic_vector(63 downto 0);
  signal bram_rddata_a : std_logic_vector(63 downto 0);


  constant family : string := "kintexuplus";
  constant axi_protocol : string := "AXI4";

  
  
begin  -- architecture structure

  --Clocking
  Local_Clocking_1: entity work.Local_Clocking
    port map (
      clk_200   => clk_200,
      clk_50    => clk_50,
      clk_axi   => AXI_CLK,
      reset     => '0',
      locked    => locked_clk200,
      clk_in1_p => p_clk_100,
      clk_in1_n => n_clk_100);


  

  c2csslave_wrapper_1: entity work.c2cslave_wrapper
    port map (
      AXI_CLK                             => AXI_CLK,
      AXI_RST_N(0)                        => AXI_RST_N,
      K_C2C_phy_Rx_rxn                  => n_mgt_z2k,
      K_C2C_phy_Rx_rxp                  => p_mgt_z2k,
      K_C2C_phy_Tx_txn                  => n_mgt_k2z,
      K_C2C_phy_Tx_txp                  => p_mgt_k2z,
      K_C2C_phy_refclk_clk_n            => n_util_clk_chan0,
      K_C2C_phy_refclk_clk_p            => p_util_clk_chan0,
      clk50Mhz                            => clk_50,
      K_IO_araddr                         => local_AXI_ReadMOSI(0).address,              
      K_IO_arprot                         => local_AXI_ReadMOSI(0).protection_type,      
      K_IO_arready                        => local_AXI_ReadMISO(0).ready_for_address,    
      K_IO_arvalid                        => local_AXI_ReadMOSI(0).address_valid,        
      K_IO_awaddr                         => local_AXI_WriteMOSI(0).address,             
      K_IO_awprot                         => local_AXI_WriteMOSI(0).protection_type,     
      K_IO_awready                        => local_AXI_WriteMISO(0).ready_for_address,   
      K_IO_awvalid                        => local_AXI_WriteMOSI(0).address_valid,       
      K_IO_bready                      => local_AXI_WriteMOSI(0).ready_for_response,  
      K_IO_bresp                          => local_AXI_WriteMISO(0).response,            
      K_IO_bvalid                      => local_AXI_WriteMISO(0).response_valid,      
      K_IO_rdata                          => local_AXI_ReadMISO(0).data,                 
      K_IO_rready                      => local_AXI_ReadMOSI(0).ready_for_data,       
      K_IO_rresp                          => local_AXI_ReadMISO(0).response,             
      K_IO_rvalid                      => local_AXI_ReadMISO(0).data_valid,           
      K_IO_wdata                          => local_AXI_WriteMOSI(0).data,                
      K_IO_wready                      => local_AXI_WriteMISO(0).ready_for_data,       
      K_IO_wstrb                          => local_AXI_WriteMOSI(0).data_write_strobe,   
      K_IO_wvalid                      => local_AXI_WriteMOSI(0).data_valid,          
      CM_K_INFO_araddr                    => local_AXI_ReadMOSI(1).address,              
      CM_K_INFO_arprot                    => local_AXI_ReadMOSI(1).protection_type,      
      CM_K_INFO_arready                => local_AXI_ReadMISO(1).ready_for_address,    
      CM_K_INFO_arvalid                => local_AXI_ReadMOSI(1).address_valid,        
      CM_K_INFO_awaddr                    => local_AXI_WriteMOSI(1).address,             
      CM_K_INFO_awprot                    => local_AXI_WriteMOSI(1).protection_type,     
      CM_K_INFO_awready                => local_AXI_WriteMISO(1).ready_for_address,   
      CM_K_INFO_awvalid                => local_AXI_WriteMOSI(1).address_valid,       
      CM_K_INFO_bready                 => local_AXI_WriteMOSI(1).ready_for_response,  
      CM_K_INFO_bresp                     => local_AXI_WriteMISO(1).response,            
      CM_K_INFO_bvalid                 => local_AXI_WriteMISO(1).response_valid,      
      CM_K_INFO_rdata                     => local_AXI_ReadMISO(1).data,                 
      CM_K_INFO_rready                 => local_AXI_ReadMOSI(1).ready_for_data,       
      CM_K_INFO_rresp                     => local_AXI_ReadMISO(1).response,             
      CM_K_INFO_rvalid                 => local_AXI_ReadMISO(1).data_valid,           
      CM_K_INFO_wdata                     => local_AXI_WriteMOSI(1).data,                
      CM_K_INFO_wready                 => local_AXI_WriteMISO(1).ready_for_data,       
      CM_K_INFO_wstrb                     => local_AXI_WriteMOSI(1).data_write_strobe,   
      CM_K_INFO_wvalid                 => local_AXI_WriteMOSI(1).data_valid,          


    MEM_TEST_araddr  => local_AXI_ReadMOSI(2).address,
    MEM_TEST_arprot  => local_AXI_ReadMOSI(2).protection_type,  
    MEM_TEST_arready => local_AXI_ReadMISO(2).ready_for_address,
    MEM_TEST_arvalid => local_AXI_ReadMOSI(2).address_valid,
    MEM_TEST_awaddr  => local_AXI_WriteMOSI(2).address ,
    MEM_TEST_awprot  => local_AXI_WriteMOSI(2).protection_type,
    MEM_TEST_awready => local_AXI_WriteMISO(2).ready_for_address,
    MEM_TEST_awvalid => local_AXI_WriteMOSI(2).address_valid,
    MEM_TEST_bready  => local_AXI_WriteMOSI(2).ready_for_response,
    MEM_TEST_bresp   => local_AXI_WriteMISO(2).response,
    MEM_TEST_bvalid  => local_AXI_WriteMISO(2).response_valid,
    MEM_TEST_rdata   => local_AXI_ReadMISO(2).data,
    MEM_TEST_rready  => local_AXI_ReadMOSI(2).ready_for_data,
    MEM_TEST_rresp   => local_AXI_ReadMISO(2).response,
    MEM_TEST_rvalid  => local_AXI_ReadMISO(2).data_valid,
    MEM_TEST_wdata   => local_AXI_WriteMOSI(2).data,
    MEM_TEST_wready  => local_AXI_WriteMISO(2).ready_for_data,
    MEM_TEST_wstrb  => local_AXI_WriteMOSI(2).data_write_strobe,
    MEM_TEST_wvalid => local_AXI_WriteMOSI(2).data_valid,

    SPYBUFFER_araddr  => local_AXI_ReadMOSI(3).address,
    SPYBUFFER_arprot  => local_AXI_ReadMOSI(3).protection_type,  
    SPYBUFFER_arready => local_AXI_ReadMISO(3).ready_for_address,
    SPYBUFFER_arvalid => local_AXI_ReadMOSI(3).address_valid,
    SPYBUFFER_awaddr  => local_AXI_WriteMOSI(3).address ,
    SPYBUFFER_awprot  => local_AXI_WriteMOSI(3).protection_type,
    SPYBUFFER_awready => local_AXI_WriteMISO(3).ready_for_address,
    SPYBUFFER_awvalid => local_AXI_WriteMOSI(3).address_valid,
    SPYBUFFER_bready  => local_AXI_WriteMOSI(3).ready_for_response,
    SPYBUFFER_bresp   => local_AXI_WriteMISO(3).response,
    SPYBUFFER_bvalid  => local_AXI_WriteMISO(3).response_valid,
    SPYBUFFER_rdata   => local_AXI_ReadMISO(3).data,
    SPYBUFFER_rready  => local_AXI_ReadMOSI(3).ready_for_data,
    SPYBUFFER_rresp   => local_AXI_ReadMISO(3).response,
    SPYBUFFER_rvalid  => local_AXI_ReadMISO(3).data_valid,
    SPYBUFFER_wdata   => local_AXI_WriteMOSI(3).data,
    SPYBUFFER_wready  => local_AXI_WriteMISO(3).ready_for_data,
    SPYBUFFER_wstrb  => local_AXI_WriteMOSI(3).data_write_strobe,
    SPYBUFFER_wvalid => local_AXI_WriteMOSI(3).data_valid,


      KINTEX_IPBUS_araddr                 => ext_AXI_ReadMOSI.address,              
      KINTEX_IPBUS_arburst                => ext_AXI_ReadMOSI.burst_type,
      KINTEX_IPBUS_arcache                => ext_AXI_ReadMOSI.cache_type,
      KINTEX_IPBUS_arlen                  => ext_AXI_ReadMOSI.burst_length,
      KINTEX_IPBUS_arlock(0)              => ext_AXI_ReadMOSI.lock_type,
      KINTEX_IPBUS_arprot                 => ext_AXI_ReadMOSI.protection_type,      
      KINTEX_IPBUS_arqos                  => ext_AXI_ReadMOSI.qos,
      KINTEX_IPBUS_arready(0)             => ext_AXI_ReadMISO.ready_for_address,
      KINTEX_IPBUS_arregion               => ext_AXI_ReadMOSI.region,
      KINTEX_IPBUS_arsize                 => ext_AXI_ReadMOSI.burst_size,
      KINTEX_IPBUS_arvalid(0)             => ext_AXI_ReadMOSI.address_valid,        
      KINTEX_IPBUS_awaddr                 => ext_AXI_WriteMOSI.address,             
      KINTEX_IPBUS_awburst                => ext_AXI_WriteMOSI.burst_type,
      KINTEX_IPBUS_awcache                => ext_AXI_WriteMOSI.cache_type,
      KINTEX_IPBUS_awlen                  => ext_AXI_WriteMOSI.burst_length,
      KINTEX_IPBUS_awlock(0)              => ext_AXI_WriteMOSI.lock_type,
      KINTEX_IPBUS_awprot                 => ext_AXI_WriteMOSI.protection_type,
      KINTEX_IPBUS_awqos                  => ext_AXI_WriteMOSI.qos,
      KINTEX_IPBUS_awready(0)             => ext_AXI_WriteMISO.ready_for_address,   
      KINTEX_IPBUS_awregion               => ext_AXI_WriteMOSI.region,
      KINTEX_IPBUS_awsize                 => ext_AXI_WriteMOSI.burst_size,
      KINTEX_IPBUS_awvalid(0)             => ext_AXI_WriteMOSI.address_valid,       
      KINTEX_IPBUS_bready(0)              => ext_AXI_WriteMOSI.ready_for_response,  
      KINTEX_IPBUS_bresp                  => ext_AXI_WriteMISO.response,            
      KINTEX_IPBUS_bvalid(0)              => ext_AXI_WriteMISO.response_valid,      
      KINTEX_IPBUS_rdata                  => ext_AXI_ReadMISO.data,
      KINTEX_IPBUS_rlast(0)               => ext_AXI_ReadMISO.last,
      KINTEX_IPBUS_rready(0)              => ext_AXI_ReadMOSI.ready_for_data,       
      KINTEX_IPBUS_rresp                  => ext_AXI_ReadMISO.response,             
      KINTEX_IPBUS_rvalid(0)              => ext_AXI_ReadMISO.data_valid,           
      KINTEX_IPBUS_wdata                  => ext_AXI_WriteMOSI.data,
      KINTEX_IPBUS_wlast(0)               => ext_AXI_WriteMOSI.last,
      KINTEX_IPBUS_wready(0)              => ext_AXI_WriteMISO.ready_for_data,       
      KINTEX_IPBUS_wstrb                  => ext_AXI_WriteMOSI.data_write_strobe,   
      KINTEX_IPBUS_wvalid(0)              => ext_AXI_WriteMOSI.data_valid,          
      reset_n                             => locked_clk200,--reset,
      K_C2C_PHY_DEBUG_cplllock(0)         => C2C_Mon.DEBUG.CPLL_LOCK,
      K_C2C_PHY_DEBUG_dmonitorout         => C2C_Mon.DEBUG.DMONITOR,
      K_C2C_PHY_DEBUG_eyescandataerror(0) => C2C_Mon.DEBUG.EYESCAN_DATA_ERROR,
      
      K_C2C_PHY_DEBUG_eyescanreset(0)     => C2C_Ctrl.DEBUG.EYESCAN_RESET,
      K_C2C_PHY_DEBUG_eyescantrigger(0)   => C2C_Ctrl.DEBUG.EYESCAN_TRIGGER,
      K_C2C_PHY_DEBUG_pcsrsvdin           => C2C_Ctrl.DEBUG.PCS_RSV_DIN,
      K_C2C_PHY_DEBUG_qplllock(0)         => C2C_Mon.DEBUG.QPLL_LOCK,
      K_C2C_PHY_DEBUG_rxbufreset(0)       => C2C_Ctrl.DEBUG.RX.BUF_RESET,
      K_C2C_PHY_DEBUG_rxbufstatus         => C2C_Mon.DEBUG.RX.BUF_STATUS,
      K_C2C_PHY_DEBUG_rxcdrhold(0)        => C2C_Ctrl.DEBUG.RX.CDR_HOLD,
      K_C2C_PHY_DEBUG_rxdfelpmreset(0)    => C2C_Ctrl.DEBUG.RX.DFE_LPM_RESET,
      K_C2C_PHY_DEBUG_rxlpmen(0)          => C2C_Ctrl.DEBUG.RX.LPM_EN,
      K_C2C_PHY_DEBUG_rxpcsreset(0)       => C2C_Ctrl.DEBUG.RX.PCS_RESET,
      K_C2C_PHY_DEBUG_rxpmareset(0)       => C2C_Ctrl.DEBUG.RX.PMA_RESET,
      K_C2C_PHY_DEBUG_rxpmaresetdone      => open,--C2C_Mon.DEBUG.RX.RESET_DONE,
      K_C2C_PHY_DEBUG_rxprbscntreset(0)   => C2C_Ctrl.DEBUG.RX.PRBS_CNT_RST,
      K_C2C_PHY_DEBUG_rxprbserr(0)        => C2C_Mon.DEBUG.RX.PRBS_ERR,
      K_C2C_PHY_DEBUG_rxprbssel           => C2C_Ctrl.DEBUG.RX.PRBS_SEL,
      K_C2C_PHY_DEBUG_rxrate              => C2C_Ctrl.DEBUG.RX.RATE,
      K_C2C_PHY_DEBUG_rxresetdone(0)      => C2C_Mon.DEBUG.RX.RESET_DONE,
      K_C2C_PHY_DEBUG_txbufstatus         => C2C_Mon.DEBUG.TX.BUF_STATUS,
      K_C2C_PHY_DEBUG_txdiffctrl          => C2C_Ctrl.DEBUG.TX.DIFF_CTRL,
      K_C2C_PHY_DEBUG_txinhibit(0)        => C2C_Ctrl.DEBUG.TX.INHIBIT,
      K_C2C_PHY_DEBUG_txpcsreset(0)       => C2C_Ctrl.DEBUG.TX.PCS_RESET,
      K_C2C_PHY_DEBUG_txpmareset(0)       => C2C_Ctrl.DEBUG.TX.PMA_RESET,
      K_C2C_PHY_DEBUG_txpolarity(0)       => C2C_Ctrl.DEBUG.TX.POLARITY,
      K_C2C_PHY_DEBUG_txpostcursor        => C2C_Ctrl.DEBUG.TX.POST_CURSOR,
      K_C2C_PHY_DEBUG_txprbsforceerr(0)   => C2C_Ctrl.DEBUG.TX.PRBS_FORCE_ERR,
      K_C2C_PHY_DEBUG_txprbssel           => C2C_Ctrl.DEBUG.TX.PRBS_SEL,
      K_C2C_PHY_DEBUG_txprecursor         => C2C_Ctrl.DEBUG.TX.PRE_CURSOR,
      K_C2C_PHY_DEBUG_txresetdone(0)      => C2C_MON.DEBUG.TX.RESET_DONE,

      K_C2C_PHY_STATUS_channel_up         => C2C_Mon.STATUS.CHANNEL_UP,      
      K_C2C_PHY_STATUS_gt_pll_lock        => C2C_MON.STATUS.PHY_GT_PLL_LOCK,
      K_C2C_PHY_STATUS_hard_err           => C2C_Mon.STATUS.PHY_HARD_ERR,
      K_C2C_PHY_STATUS_lane_up            => C2C_Mon.STATUS.PHY_LANE_UP(0 downto 0),
      K_C2C_PHY_STATUS_mmcm_not_locked    => C2C_Mon.STATUS.PHY_MMCM_LOL,
      K_C2C_PHY_STATUS_soft_err           => C2C_Mon.STATUS.PHY_SOFT_ERR,

      K_C2C_aurora_do_cc                => C2C_Mon.STATUS.DO_CC,
      K_C2C_axi_c2c_config_error_out    => C2C_Mon.STATUS.CONFIG_ERROR,
      K_C2C_axi_c2c_link_status_out     => C2C_MON.STATUS.LINK_GOOD,
      K_C2C_axi_c2c_multi_bit_error_out => C2C_MON.STATUS.MB_ERROR,
      K_C2C_phy_power_down              => '0',
      K_C2C_PHY_user_clk_out            => clk_K_C2C_PHY_user
);

  RGB_pwm_1: entity work.RGB_pwm
    generic map (
      CLKFREQ => 200000000,
      RGBFREQ => 1000)
    port map (
      clk        => clk_200,
      redcount   => led_red_local,
      greencount => led_green_local,
      bluecount  => led_blue_local,
      LEDred     => open,
      LEDgreen   => open,
      LEDblue    => open);

  K_IO_interface_1: entity work.K_IO_map
    port map (
      clk_axi         => AXI_CLK,
      reset_axi_n     => AXI_RST_N,
      slave_readMOSI  => local_AXI_readMOSI(0),
      slave_readMISO  => local_AXI_readMISO(0),
      slave_writeMOSI => local_AXI_writeMOSI(0),
      slave_writeMISO => local_AXI_writeMISO(0),
      Mon.C2C                 => C2C_Mon,
      Mon.CLK_200_LOCKED      => locked_clk200,      
      Mon.BRAM.RD_DATA        => BRAM_RD_DATA,
      Ctrl.C2C                => C2C_Ctrl,
      Ctrl.RGB.R              => led_red_local,
      Ctrl.RGB.G              => led_green_local,
      Ctrl.RGB.B              => led_blue_local,
      Ctrl.BRAM.WRITE         => BRAM_WRITE,
      Ctrl.BRAM.ADDR(9 downto 0)          => BRAM_ADDR,
      Ctrl.BRAM.ADDR(14 downto 10) => open,
      Ctrl.BRAM.WR_DATA       => BRAM_WR_DATA
      );

  CM_K_info_1: entity work.CM_K_info
    port map (
      clk_axi     => AXI_CLK,
      reset_axi_n => AXI_RST_N,
      readMOSI    => local_AXI_ReadMOSI(1),
      readMISO    => local_AXI_ReadMISO(1),
      writeMOSI   => local_AXI_WriteMOSI(1),
      writeMISO   => local_AXI_WriteMISO(1));


  AXI_RESET <= not AXI_RST_N;
  
  mem_test_1: entity work.mem_test
    port map (
      clk_axi     => AXI_CLK, --axi_clk,
      reset_axi_n => AXI_RST_N, --pl_reset_n,
      readMOSI    => local_AXI_ReadMOSI(2), --AXI_BUS_RMOSI(7),
      readMISO    => local_AXI_ReadMISO(2), --AXI_BUS_RMISO(7),
      writeMOSI   => local_AXI_WriteMOSI(2), --AXI_BUS_WMOSI(7),
      writeMISO   => local_AXI_WriteMISO(2) --AXI_BUS_WMISO(7)
      );

   spybuffer_test_1: entity work.spybuffer_test
    port map (
      clk_axi     => AXI_CLK, --axi_clk,
      reset_axi_n => AXI_RST_N, --pl_reset_n,
      readMOSI    => local_AXI_ReadMOSI(3), --AXI_BUS_RMOSI(7),
      readMISO    => local_AXI_ReadMISO(3), --AXI_BUS_RMISO(7),
      writeMOSI   => local_AXI_WriteMOSI(3), --AXI_BUS_WMOSI(7),
      writeMISO   => local_AXI_WriteMISO(3) --AXI_BUS_WMISO(7)
      );

  


 
end architecture structure;