-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_wr_demux.vhd
  --
  -- Description:     
  --    This file implements the AXI Master Burst Write Strobe De-Multiplexer.                 
  --                  
  --                  
  --                  
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_wr_demux.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0 $
  -- Date:            $1/19/2011$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXi DataMover v2_00_a axi_datamover_wr_demux.vhd
  -- ^^^^^^
  --
  --     DET     2/15/2011     Initial for EDk 13.2
  -- ~~~~~~
  --    -- Per CR593812
  --     - Modifications to remove unused features to improve Code coverage.
  --       Used "-- coverage off" and "-- coverage on" strings.
  -- ^^^^^^
  -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  
  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_wr_demux is
    generic (
      
      C_SEL_ADDR_WIDTH     : Integer range  1  to  8 :=  5;
      C_MMAP_DWIDTH        : Integer range 32 to 256 := 32;
      C_STREAM_DWIDTH      : Integer range  8 to 256 := 32
      
      );
    port (
      
     
     -- AXI MMap Data Channel Input  -------------------------------
     
      wstrb_in         : In  std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
        -- data input
     
      
      
     -- AXI Master Stream  -----------------------------------
     
      demux_wstrb_out    : Out std_logic_vector((C_MMAP_DWIDTH/8)-1 downto 0);         
        --De-Mux strb output
               
                
                
      -- Command Calculator Interface --------------------------
      
      debeat_saddr_lsb : In std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0)
         -- The next command start address LSbs to use for the read data
         -- mux (only used if Stream data width is less than the MMap Data
         -- Width).
      
         
      );
  
  end entity axi_master_burst_wr_demux;
  
  
  architecture implementation of axi_master_burst_wr_demux is
  
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
    
    -- Function Decalarations -------------------------------------------------
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: func_mux_sel_width
    --
    -- Function Description:
    --   Calculates the number of needed bits for the Mux Select control
    -- based on the number of input channels to the mux.
    --
    -- Note that the number of input mux channels are always a 
    -- power of 2.
    --
    -------------------------------------------------------------------
    function func_mux_sel_width (num_channels : integer) return integer is
    
     Variable var_sel_width : integer := 0;
    
    begin
    
       case num_channels is
         when 2 =>
             var_sel_width := 1;
         when 4 =>
             var_sel_width := 2;
         when 8 =>
             var_sel_width := 3;
-- coverage off         
         when 16 =>
             var_sel_width := 4;
         when 32 =>
             var_sel_width := 5;
-- coverage on         
         when others =>
             var_sel_width := 0; 
       end case;
       
       Return (var_sel_width);
        
        
    end function func_mux_sel_width;
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: func_sel_ls_index
    --
    -- Function Description:
    --   Calculates the LS index of the select field to rip from the
    -- input select bus.
    --
    -- Note that the number of input mux channels are always a 
    -- power of 2.
    --
    -------------------------------------------------------------------
    function func_sel_ls_index (stream_width : integer) return integer is
    
     Variable var_sel_ls_index : integer := 0;
    
    begin
    
       case stream_width is
-- coverage off         
         when 16 =>
             var_sel_ls_index := 1;
-- coverage on         
         when 32 =>
             var_sel_ls_index := 2;
         when 64 =>
             var_sel_ls_index := 3;
         when 128 =>
             var_sel_ls_index := 4;
-- coverage off         
         when others =>
             var_sel_ls_index := 0;
-- coverage on         
       end case;
       
       Return (var_sel_ls_index);
        
        
    end function func_sel_ls_index;
    
    
    
    
    
    -- Constant Decalarations -------------------------------------------------
    
    Constant STREAM_WSTB_WIDTH   : integer := C_STREAM_DWIDTH/8;
    Constant MMAP_WSTB_WIDTH     : integer := C_MMAP_DWIDTH/8;
    Constant NUM_MUX_CHANNELS    : integer := MMAP_WSTB_WIDTH/STREAM_WSTB_WIDTH;
    Constant MUX_SEL_WIDTH       : integer := func_mux_sel_width(NUM_MUX_CHANNELS);
    Constant MUX_SEL_LS_INDEX    : integer := func_sel_ls_index(C_STREAM_DWIDTH);
    
    
    -- Signal Declarations  --------------------------------------------
 
    signal sig_demux_wstrb_out   : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');



    
  begin --(architecture implementation)
  
  
  
  
   -- Assign the Output data port 
    demux_wstrb_out        <= sig_demux_wstrb_out;
  


    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_STRM_EQ_MMAP
    --
    -- If Generate Description:
    --   This IfGen implements the case where the Stream Data Width is 
    -- the same as the Memeory Map read Data width.
    --
    --
    ------------------------------------------------------------
    GEN_STRM_EQ_MMAP : if (C_MMAP_DWIDTH = C_STREAM_DWIDTH) generate
        
       begin
        
          sig_demux_wstrb_out <= wstrb_in;
        
        
       end generate GEN_STRM_EQ_MMAP;
   
   
    
    
    
     
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_2XN
    --
    -- If Generate Description:
    --  2 channel demux case
    --
    --
    ------------------------------------------------------------
    GEN_2XN : if (NUM_MUX_CHANNELS = 2) generate
    
       -- local signals
       signal sig_demux_sel_slice      : std_logic_vector(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_unsgnd     : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_int        : integer range 0 to 31 := 0;
       signal lsig_demux_sel_int_local : integer range 0 to 31 := 0;
       signal lsig_demux_wstrb_out     : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_demux_sel_slice   <= debeat_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_demux_sel_unsgnd  <=  UNSIGNED(sig_demux_sel_slice);  -- convert to unsigned
        
         sig_demux_sel_int     <=  TO_INTEGER(sig_demux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         lsig_demux_sel_int_local <= sig_demux_sel_int;
         
         sig_demux_wstrb_out      <= lsig_demux_wstrb_out;
       
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_2XN_DEMUX
         --
         -- Process Description:
         --  Implement the 2XN DeMux
         --
         -------------------------------------------------------------
         DO_2XN_DEMUX : process (lsig_demux_sel_int_local,
                                  wstrb_in)
            begin
              
              -- Set default value
              lsig_demux_wstrb_out <=  (others => '0');
              
              case lsig_demux_sel_int_local is
                when 1 =>
                    lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*2)-1 downto STREAM_WSTB_WIDTH*1) <=  wstrb_in;
                when others =>
                    lsig_demux_wstrb_out(STREAM_WSTB_WIDTH-1 downto 0) <=  wstrb_in;
              end case;
              
            end process DO_2XN_DEMUX; 
 
         
       end generate GEN_2XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_4XN
    --
    -- If Generate Description:
    --  4 channel demux case
    --
    --
    ------------------------------------------------------------
    GEN_4XN : if (NUM_MUX_CHANNELS = 4) generate
    
       -- local signals
       signal sig_demux_sel_slice      : std_logic_vector(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_unsgnd     : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_int        : integer range 0 to 31 := 0;
       signal lsig_demux_sel_int_local : integer range 0 to 31 := 0;
       signal lsig_demux_wstrb_out     : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_demux_sel_slice   <= debeat_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_demux_sel_unsgnd  <=  UNSIGNED(sig_demux_sel_slice);  -- convert to unsigned
        
         sig_demux_sel_int     <=  TO_INTEGER(sig_demux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         lsig_demux_sel_int_local <= sig_demux_sel_int;
         
         sig_demux_wstrb_out      <= lsig_demux_wstrb_out;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_4XN_DEMUX
         --
         -- Process Description:
         --  Implement the 4XN DeMux
         --
         -------------------------------------------------------------
         DO_4XN_DEMUX : process (lsig_demux_sel_int_local,
                                 wstrb_in)
           begin
              
             -- Set default value
             lsig_demux_wstrb_out <=  (others => '0');
              
             case lsig_demux_sel_int_local is
               when 1 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*2)-1 downto STREAM_WSTB_WIDTH*1) <=  wstrb_in;
               when 2 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*3)-1 downto STREAM_WSTB_WIDTH*2) <=  wstrb_in;
               when 3 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*4)-1 downto STREAM_WSTB_WIDTH*3) <=  wstrb_in;
               when others =>
                   lsig_demux_wstrb_out(STREAM_WSTB_WIDTH-1 downto 0) <=  wstrb_in;
             end case;
             
           end process DO_4XN_DEMUX; 
  
         
       end generate GEN_4XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_8XN
    --
    -- If Generate Description:
    --  8 channel demux case
    --
    --
    ------------------------------------------------------------
    GEN_8XN : if (NUM_MUX_CHANNELS = 8) generate
    
       -- local signals
       signal sig_demux_sel_slice      : std_logic_vector(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_unsgnd     : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_int        : integer range 0 to 31 := 0;
       signal lsig_demux_sel_int_local : integer range 0 to 31 := 0;
       signal lsig_demux_wstrb_out     : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_demux_sel_slice   <= debeat_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_demux_sel_unsgnd  <=  UNSIGNED(sig_demux_sel_slice);  -- convert to unsigned
        
         sig_demux_sel_int     <=  TO_INTEGER(sig_demux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         lsig_demux_sel_int_local <= sig_demux_sel_int;
         
         sig_demux_wstrb_out      <= lsig_demux_wstrb_out;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_8XN_DEMUX
         --
         -- Process Description:
         --  Implement the 8XN DeMux
         --
         -------------------------------------------------------------
         DO_8XN_DEMUX : process (lsig_demux_sel_int_local,
                                 wstrb_in)
           begin
             
             -- Set default value
             lsig_demux_wstrb_out <=  (others => '0');
              
             case lsig_demux_sel_int_local is
               when 1 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*2)-1 downto STREAM_WSTB_WIDTH*1) <=  wstrb_in;
               when 2 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*3)-1 downto STREAM_WSTB_WIDTH*2) <=  wstrb_in;
               when 3 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*4)-1 downto STREAM_WSTB_WIDTH*3) <=  wstrb_in;
               when 4 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*5)-1 downto STREAM_WSTB_WIDTH*4) <=  wstrb_in;
               when 5 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*6)-1 downto STREAM_WSTB_WIDTH*5) <=  wstrb_in;
               when 6 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*7)-1 downto STREAM_WSTB_WIDTH*6) <=  wstrb_in;
               when 7 =>                                                             
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*8)-1 downto STREAM_WSTB_WIDTH*7) <=  wstrb_in;
               when others =>
                   lsig_demux_wstrb_out(STREAM_WSTB_WIDTH-1 downto 0) <=  wstrb_in;
             end case;
                 
           end process DO_8XN_DEMUX; 
 
         
       end generate GEN_8XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_16XN
    --
    -- If Generate Description:
    --  16 channel demux case
    --
    --
    ------------------------------------------------------------
    GEN_16XN : if (NUM_MUX_CHANNELS = 16) generate
    
       -- local signals
       signal sig_demux_sel_slice      : std_logic_vector(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_unsgnd     : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_int        : integer range 0 to 31 := 0;
       signal lsig_demux_sel_int_local : integer range 0 to 31 := 0;
       signal lsig_demux_wstrb_out     : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_demux_sel_slice   <= debeat_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_demux_sel_unsgnd  <=  UNSIGNED(sig_demux_sel_slice);  -- convert to unsigned
        
         sig_demux_sel_int     <=  TO_INTEGER(sig_demux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         lsig_demux_sel_int_local <= sig_demux_sel_int;
         
         sig_demux_wstrb_out      <= lsig_demux_wstrb_out;
       
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_16XN_DEMUX
         --
         -- Process Description:
         --  Implement the 16XN DeMux
         --
         -------------------------------------------------------------
         DO_16XN_DEMUX : process (lsig_demux_sel_int_local,
                                  wstrb_in)
           begin
             
             -- Set default value
             lsig_demux_wstrb_out <=  (others => '0');
              
             case lsig_demux_sel_int_local is
               when 1 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*2)-1 downto STREAM_WSTB_WIDTH*1)   <=  wstrb_in;
               when 2 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*3)-1 downto STREAM_WSTB_WIDTH*2)   <=  wstrb_in;
               when 3 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*4)-1 downto STREAM_WSTB_WIDTH*3)   <=  wstrb_in;
               when 4 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*5)-1 downto STREAM_WSTB_WIDTH*4)   <=  wstrb_in;
               when 5 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*6)-1 downto STREAM_WSTB_WIDTH*5)   <=  wstrb_in;
               when 6 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*7)-1 downto STREAM_WSTB_WIDTH*6)   <=  wstrb_in;
               when 7 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*8)-1 downto STREAM_WSTB_WIDTH*7)   <=  wstrb_in;
               when 8 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*9)-1 downto STREAM_WSTB_WIDTH*8)   <=  wstrb_in;
               when 9 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*10)-1 downto STREAM_WSTB_WIDTH*9)  <=  wstrb_in;
               when 10 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*11)-1 downto STREAM_WSTB_WIDTH*10) <=  wstrb_in;
               when 11 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*12)-1 downto STREAM_WSTB_WIDTH*11) <=  wstrb_in;
               when 12 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*13)-1 downto STREAM_WSTB_WIDTH*12) <=  wstrb_in;
               when 13 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*14)-1 downto STREAM_WSTB_WIDTH*13) <=  wstrb_in;
               when 14 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*15)-1 downto STREAM_WSTB_WIDTH*14) <=  wstrb_in;
               when 15 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*16)-1 downto STREAM_WSTB_WIDTH*15) <=  wstrb_in;
               when others =>
                   lsig_demux_wstrb_out(STREAM_WSTB_WIDTH-1 downto 0) <=  wstrb_in;
             end case;
          
           end process DO_16XN_DEMUX; 
 
         
       end generate GEN_16XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_32XN
    --
    -- If Generate Description:
    --  32 channel demux case
    --
    --
    ------------------------------------------------------------
    GEN_32XN : if (NUM_MUX_CHANNELS = 32) generate
    
       -- local signals
       signal sig_demux_sel_slice      : std_logic_vector(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_unsgnd     : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_demux_sel_int        : integer range 0 to 31 := 0;
       signal lsig_demux_sel_int_local : integer range 0 to 31 := 0;
       signal lsig_demux_wstrb_out     : std_logic_vector(MMAP_WSTB_WIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_demux_sel_slice   <= debeat_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_demux_sel_unsgnd  <=  UNSIGNED(sig_demux_sel_slice);  -- convert to unsigned
        
         sig_demux_sel_int     <=  TO_INTEGER(sig_demux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         lsig_demux_sel_int_local <= sig_demux_sel_int;
         
         sig_demux_wstrb_out      <= lsig_demux_wstrb_out;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_32XN_DEMUX
         --
         -- Process Description:
         --  Implement the 32XN DeMux
         --
         -------------------------------------------------------------
         DO_32XN_DEMUX : process (lsig_demux_sel_int_local,
                                  wstrb_in)
           begin
             
             -- Set default value
             lsig_demux_wstrb_out <=  (others => '0');
              
             case lsig_demux_sel_int_local is
               when 1 =>
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*2)-1 downto STREAM_WSTB_WIDTH*1)   <=  wstrb_in;
               when 2 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*3)-1 downto STREAM_WSTB_WIDTH*2)   <=  wstrb_in;
               when 3 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*4)-1 downto STREAM_WSTB_WIDTH*3)   <=  wstrb_in;
               when 4 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*5)-1 downto STREAM_WSTB_WIDTH*4)   <=  wstrb_in;
               when 5 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*6)-1 downto STREAM_WSTB_WIDTH*5)   <=  wstrb_in;
               when 6 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*7)-1 downto STREAM_WSTB_WIDTH*6)   <=  wstrb_in;
               when 7 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*8)-1 downto STREAM_WSTB_WIDTH*7)   <=  wstrb_in;
               when 8 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*9)-1 downto STREAM_WSTB_WIDTH*8)   <=  wstrb_in;
               when 9 =>                                                               
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*10)-1 downto STREAM_WSTB_WIDTH*9)  <=  wstrb_in;
               when 10 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*11)-1 downto STREAM_WSTB_WIDTH*10) <=  wstrb_in;
               when 11 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*12)-1 downto STREAM_WSTB_WIDTH*11) <=  wstrb_in;
               when 12 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*13)-1 downto STREAM_WSTB_WIDTH*12) <=  wstrb_in;
               when 13 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*14)-1 downto STREAM_WSTB_WIDTH*13) <=  wstrb_in;
               when 14 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*15)-1 downto STREAM_WSTB_WIDTH*14) <=  wstrb_in;
               when 15 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*16)-1 downto STREAM_WSTB_WIDTH*15) <=  wstrb_in;
               when 16 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*17)-1 downto STREAM_WSTB_WIDTH*16) <=  wstrb_in;
               when 17 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*18)-1 downto STREAM_WSTB_WIDTH*17) <=  wstrb_in;
               when 18 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*19)-1 downto STREAM_WSTB_WIDTH*18) <=  wstrb_in;
               when 19 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*20)-1 downto STREAM_WSTB_WIDTH*19) <=  wstrb_in;
               when 20 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*21)-1 downto STREAM_WSTB_WIDTH*20) <=  wstrb_in;
               when 21 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*22)-1 downto STREAM_WSTB_WIDTH*21) <=  wstrb_in;
               when 22 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*23)-1 downto STREAM_WSTB_WIDTH*22) <=  wstrb_in;
               when 23 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*24)-1 downto STREAM_WSTB_WIDTH*23) <=  wstrb_in;
               when 24 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*25)-1 downto STREAM_WSTB_WIDTH*24) <=  wstrb_in;
               when 25 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*26)-1 downto STREAM_WSTB_WIDTH*25) <=  wstrb_in;
               when 26 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*27)-1 downto STREAM_WSTB_WIDTH*26) <=  wstrb_in;
               when 27 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*28)-1 downto STREAM_WSTB_WIDTH*27) <=  wstrb_in;
               when 28 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*29)-1 downto STREAM_WSTB_WIDTH*28) <=  wstrb_in;
               when 29 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*30)-1 downto STREAM_WSTB_WIDTH*29) <=  wstrb_in;
               when 30 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*31)-1 downto STREAM_WSTB_WIDTH*30) <=  wstrb_in;
               when 31 =>                                                              
                   lsig_demux_wstrb_out((STREAM_WSTB_WIDTH*32)-1 downto STREAM_WSTB_WIDTH*31) <=  wstrb_in;
               when others =>
                   lsig_demux_wstrb_out(STREAM_WSTB_WIDTH-1 downto 0) <=  wstrb_in;
             end case;
          
           end process DO_32XN_DEMUX; 
 
         
       end generate GEN_32XN;
  
 
  
  
  
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_strb_gen.vhd
--
-- Description:     
--   AXI Strobe Generator module.               
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_strb_gen.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover V2_00_a axi_datamover_strb_gen.vhd
-- ^^^^^^
--
--     DET     2/15/2011     Initial for EDk 13.2
-- ~~~~~~
--    -- Per CR593812
--     - Modifications to remove unused features to improve Code coverage.
--       Used "-- coverage off" and "-- coverage on" strings.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;




-------------------------------------------------------------------------------

entity axi_master_burst_strb_gen is
  generic (
    C_ADDR_MODE          : Integer := 0; -- 0 = normal, 1 = Address only 
    C_STRB_WIDTH         : Integer := 8; -- number of addr bits needed
    C_OFFSET_WIDTH       : Integer := 3; -- log2(C_STRB_WIDTH)
    C_NUM_BYTES_WIDTH    : Integer := 3  -- log2(C_STRB_WIDTH)+1 in normal mode
                                         -- log2(C_STRB_WIDTH) in addr mode
    );
  port (
    start_addr_offset    : In  std_logic_vector(C_OFFSET_WIDTH-1 downto 0);   -- Starting address byte offset
    num_valid_bytes      : In  std_logic_vector(C_NUM_BYTES_WIDTH-1 downto 0);-- Number of valid bytes from offset 

    strb_out             : out std_logic_vector(C_STRB_WIDTH-1 downto 0)      -- Strobes generated from the inputs
    );

end entity axi_master_burst_strb_gen;


architecture implementation of axi_master_burst_strb_gen is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  
 
  

begin --(architecture implementation)

 
 
 
 
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_OFFSET_MODE
  --
  -- If Generate Description:
  -- Normal mode strobe generation where a starting address 
  -- offset is provided and a number of bytes beyond that 
  -- address that remain. 
  --
  --
  ------------------------------------------------------------
  GEN_OFFSET_MODE : if (C_ADDR_MODE = 0) generate
  
     -- Constants Declarations
   
      Constant INTERNAL_CALC_WIDTH    : integer  := C_NUM_BYTES_WIDTH+2; -- 2 bits of math headroom
      Constant ONE                    : unsigned := TO_UNSIGNED(1, INTERNAL_CALC_WIDTH);
   
     -- local signals
      signal sig_addr_offset_us       : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_num_valid_bytes_us   : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_incr_offset_bytes_us : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_end_addr_us          : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_end_addr_int         : integer := 0;
      signal sig_strt_addr_int        : integer := 0;
      signal sig_strb_value           : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
      signal sig_select_value         : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
     
      
  
     begin
  
       -- assign output
       strb_out                 <= sig_strb_value;

       sig_addr_offset_us       <= RESIZE(UNSIGNED(start_addr_offset), INTERNAL_CALC_WIDTH);
       
       sig_num_valid_bytes_us   <= RESIZE(UNSIGNED(num_valid_bytes)  , INTERNAL_CALC_WIDTH);

       sig_incr_offset_bytes_us <= sig_num_valid_bytes_us - ONE;
       
       sig_end_addr_us          <= sig_addr_offset_us + sig_incr_offset_bytes_us;
      
       sig_strt_addr_int        <= TO_INTEGER(sig_addr_offset_us);
       
       sig_end_addr_int         <= TO_INTEGER(sig_end_addr_us);
      
       
       -------------------------------------------------------------
       -- Combinational Process
       --
       -- Label: IMP_STRB_FILL
       --
       -- Process Description:
       --  Fills in the strobes between the start index and end index.
       --
       -------------------------------------------------------------
       IMP_STRB_FILL : process (sig_strt_addr_int,
                                sig_end_addr_int)
         
         Variable temp_strb   : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
         Variable strt_offset : Integer := 0;
         Variable end_offset  : Integer := 0;
         
         
         begin
      
           
           
           -- Establish the Start offset with clipping
-- coverage off           
           If (sig_strt_addr_int > C_STRB_WIDTH-1) Then
        
             strt_offset := C_STRB_WIDTH-1;
-- coverage on             
           
           else   
           
             strt_offset := sig_strt_addr_int; 
           
           End if;
           
           
           
           
           -- Establish the end offset with clipping
           If (sig_end_addr_int > C_STRB_WIDTH-1) Then
        
             end_offset := C_STRB_WIDTH-1;
             
           else   
           
             end_offset := sig_end_addr_int;
           
           End if;
           
           
            
           -- Set the appropriate strobe bits
           for loop_index in 0 to C_STRB_WIDTH-1 loop
           
             If (loop_index >= strt_offset and
                 loop_index <= end_offset) Then
             
              temp_strb(loop_index) := '1';
              
             Else 

              temp_strb(loop_index) := '0';
             
             End if;
           
           
           end loop;



           sig_strb_value <= temp_strb;

       
         end process IMP_STRB_FILL; 
       
      
   
   
   
     end generate GEN_OFFSET_MODE;
 
 
 
 
 
 
 
 
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_ADDR_MODE
  --
  -- If Generate Description:
  -- Address mode strobe generation where a starting address 
  -- offset is provided and a ending address offset is provided. 
  --
  --
  ------------------------------------------------------------
  GEN_ADDR_MODE : if (C_ADDR_MODE = 1) generate
  
     -- Local Constants Declarations
      Constant INTERNAL_CALC_WIDTH    : integer  := C_NUM_BYTES_WIDTH; -- use math clipping
      Constant ONE                    : unsigned := TO_UNSIGNED(1, INTERNAL_CALC_WIDTH);
   
     -- local signals
      signal sig_addr_offset_us       : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_num_valid_bytes_us   : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_incr_offset_bytes_us : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_end_addr_us          : unsigned(INTERNAL_CALC_WIDTH-1 downto 0) := (others => '0');
      signal sig_end_addr_int         : integer := 0;
      signal sig_strt_addr_int        : integer := 0;
      signal sig_strb_value           : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
      signal sig_select_value         : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
  
     begin
  
       -- assign output
       strb_out                 <= sig_strb_value;

       sig_addr_offset_us       <= RESIZE(UNSIGNED(start_addr_offset), INTERNAL_CALC_WIDTH);
       
       sig_num_valid_bytes_us   <= RESIZE(UNSIGNED(num_valid_bytes)  , INTERNAL_CALC_WIDTH);

       sig_incr_offset_bytes_us <= sig_num_valid_bytes_us - ONE;
       
       sig_end_addr_us          <= sig_addr_offset_us + sig_incr_offset_bytes_us;
      
       sig_strt_addr_int        <= TO_INTEGER(sig_addr_offset_us);
       
       sig_end_addr_int         <= TO_INTEGER(sig_end_addr_us);
      
       
       -------------------------------------------------------------
       -- Combinational Process
       --
       -- Label: IMP_STRB_FILL
       --
       -- Process Description:
       --  Fills in the strobes between the start index and end index.
       --
       -------------------------------------------------------------
       IMP_STRB_FILL : process (sig_strt_addr_int,
                                sig_end_addr_int)
          
         
         Variable temp_strb : std_logic_vector(C_STRB_WIDTH-1 downto 0) := (others => '0');
        
         Variable strt_offset : Integer := 0;
         Variable end_offset  : Integer := 0;
         
         
         
         begin
      
           
           
           -- Establish the Start offset with clipping
-- coverage off           
           If (sig_strt_addr_int > C_STRB_WIDTH-1) Then
        
             strt_offset := C_STRB_WIDTH-1;
-- coverage on           
             
           else   
           
             strt_offset := sig_strt_addr_int; 
           
           End if;
           
           
           
           
           -- Establish the end offset with clipping
-- coverage off           
           If (sig_end_addr_int > C_STRB_WIDTH-1) Then
        
             end_offset := C_STRB_WIDTH-1;
-- coverage on           
             
           else   
           
             end_offset := sig_end_addr_int;
           
           End if;
           
           
            
           -- Set the appropriate strobe bits
           for loop_index in 0 to C_STRB_WIDTH-1 loop
           
             If (loop_index >= strt_offset and
                 loop_index <= end_offset) Then
             
              temp_strb(loop_index) := '1';
              
             Else 

              temp_strb(loop_index) := '0';
             
             End if;
           
           
           end loop;



           sig_strb_value <= temp_strb;

       
         end process IMP_STRB_FILL; 
       
      
   
   
   
     end generate GEN_ADDR_MODE;
 
 
 
 

end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_rdmux.vhd
  --
  -- Description:     
  --    This file implements the AXi Master Burst Read Data Multiplexer.                 
  --                  
  --                  
  --                  
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_rdmux.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.1.2.3 $
  -- Date:            $10/26/2009$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXI DataMover V2_00_a axi_datamover_rdmux.vhd
  -- ^^^^^^
  --
  --     DET     2/15/2011     Initial for EDk 13.2
  -- ~~~~~~
  --    -- Per CR593812
  --     - Modifications to remove unused features to improve Code coverage.
  --       Used "-- coverage off" and "-- coverage on" strings.
  -- ^^^^^^
  --
  -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  
  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_rdmux is
    generic (
      
      C_SEL_ADDR_WIDTH     : Integer range 1  to   8 :=  5;
      C_MMAP_DWIDTH        : Integer range 32 to 256 := 32;
      C_STREAM_DWIDTH      : Integer range  8 to 256 := 32
      
      );
    port (
      
     
     -- AXI MMap Data Channel Input  -------------------------------
     
      mmap_read_data_in         : In  std_logic_vector(C_MMAP_DWIDTH-1 downto 0);
        -- AXI Read data input
     
      
      
     -- AXI Master Stream  -----------------------------------
     
      mux_data_out    : Out std_logic_vector(C_STREAM_DWIDTH-1 downto 0);         
        --Mux data output
               
                
                
      -- Command Calculator Interface --------------------------
      
      mstr2data_saddr_lsb : In std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0)
         -- The next command start address LSbs to use for the read data
         -- mux (only used if Stream data width is less than the MMap Data
         -- Width).
      
         
      );
  
  end entity axi_master_burst_rdmux;
  
  
  architecture implementation of axi_master_burst_rdmux is
  
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
    
    -- Function Decalarations -------------------------------------------------
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: func_mux_sel_width
    --
    -- Function Description:
    --   Calculates the number of needed bits for the Mux Select control
    -- based on the number of input channels to the mux.
    --
    -- Note that the number of input mux channels are always a 
    -- power of 2.
    --
    -------------------------------------------------------------------
    function func_mux_sel_width (num_channels : integer) return integer is
    
     Variable var_sel_width : integer := 0;
    
    begin
    
       case num_channels is
         when 2 =>
             var_sel_width := 1;
         when 4 =>
             var_sel_width := 2;
         when 8 =>
             var_sel_width := 3;
-- coverage off         
         when 16 =>
             var_sel_width := 4;
         when 32 =>
             var_sel_width := 5;
-- coverage on         
         when others => 
             var_sel_width := 0; 
       end case;
       
       Return (var_sel_width);
        
        
    end function func_mux_sel_width;
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: func_sel_ls_index
    --
    -- Function Description:
    --   Calculates the LS index of the select field to rip from the
    -- input select bus.
    --
    -- Note that the number of input mux channels are always a 
    -- power of 2.
    --
    -------------------------------------------------------------------
    function func_sel_ls_index (channel_width : integer) return integer is
    
     Variable var_sel_ls_index : integer := 0;
    
    begin
    
       case channel_width is
-- coverage off         
         when 16 =>
             var_sel_ls_index := 1;
-- coverage on         
         when 32 =>
             var_sel_ls_index := 2;
         when 64 =>
             var_sel_ls_index := 3;
         when 128 =>
             var_sel_ls_index := 4;
-- coverage off         
         when 256 =>
             var_sel_ls_index := 5;
         when others => -- 8-bit channel case
             var_sel_ls_index := 0;
-- coverage on         
       end case;
       
       Return (var_sel_ls_index);
        
        
    end function func_sel_ls_index;
    
    
    
    
    
    -- Constant Decalarations -------------------------------------------------
    
    Constant CHANNEL_DWIDTH   : integer := C_STREAM_DWIDTH;
    Constant NUM_MUX_CHANNELS : integer := C_MMAP_DWIDTH/CHANNEL_DWIDTH;
    Constant MUX_SEL_WIDTH    : integer := func_mux_sel_width(NUM_MUX_CHANNELS);
    Constant MUX_SEL_LS_INDEX : integer := func_sel_ls_index(CHANNEL_DWIDTH);
    
    
    
    
    -- Signal Declarations  --------------------------------------------
 
    signal sig_rdmux_dout     : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');



    
  begin --(architecture implementation)
  
  
  
  
   -- Assign the Output data port 
    mux_data_out        <= sig_rdmux_dout;
  
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_STRM_EQ_MMAP
    --
    -- If Generate Description:
    --   This IfGen implements the case where the Stream Data Width is 
    -- the same as the Memory Map read Data width.
    --
    --
    ------------------------------------------------------------
    GEN_STRM_EQ_MMAP : if (NUM_MUX_CHANNELS = 1) generate
        
       begin
    
          sig_rdmux_dout <= mmap_read_data_in;
        
       end generate GEN_STRM_EQ_MMAP;
   
   
    
    
    
     
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_2XN
    --
    -- If Generate Description:
    --  2 channel input mux case
    --
    --
    ------------------------------------------------------------
    GEN_2XN : if (NUM_MUX_CHANNELS = 2) generate
    
       -- local signals
       signal sig_mux_sel_slice  : std_logic_vector(MUX_SEL_WIDTH-1 downto 0)  := (others => '0');
       signal sig_mux_sel_unsgnd : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_mux_sel_int    : integer range 0 to 31 := 0;
       signal sig_mux_sel_int_local : integer range 0 to 31 := 0;
       signal sig_mux_dout          : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_mux_sel_slice   <= mstr2data_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_mux_sel_unsgnd  <=  UNSIGNED(sig_mux_sel_slice);  -- convert to unsigned
        
         sig_mux_sel_int     <=  TO_INTEGER(sig_mux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         sig_mux_sel_int_local <= sig_mux_sel_int;
         
         sig_rdmux_dout        <= sig_mux_dout;
       
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_2XN_NUX
         --
         -- Process Description:
         --  Implement the 2XN Mux
         --
         -------------------------------------------------------------
         DO_2XN_NUX : process (sig_mux_sel_int_local,
                               mmap_read_data_in)
            begin
              
              case sig_mux_sel_int_local is
                when 1 =>
                    sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*2)-1 downto CHANNEL_DWIDTH*1);
                when others =>
                    sig_mux_dout <=  mmap_read_data_in(CHANNEL_DWIDTH-1 downto 0);
              end case;
              
            end process DO_2XN_NUX; 
 
         
       end generate GEN_2XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_4XN
    --
    -- If Generate Description:
    --  4 channel input mux case
    --
    --
    ------------------------------------------------------------
    GEN_4XN : if (NUM_MUX_CHANNELS = 4) generate
    
       -- local signals
       signal sig_mux_sel_slice  : std_logic_vector(MUX_SEL_WIDTH-1 downto 0)  := (others => '0');
       signal sig_mux_sel_unsgnd : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_mux_sel_int    : integer range 0 to 31 := 0;
       signal sig_mux_sel_int_local    : integer range 0 to 31 := 0;
       signal sig_mux_dout   : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_mux_sel_slice   <= mstr2data_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_mux_sel_unsgnd  <=  UNSIGNED(sig_mux_sel_slice);  -- convert to unsigned
        
         sig_mux_sel_int     <=  TO_INTEGER(sig_mux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         sig_mux_sel_int_local <= sig_mux_sel_int;
         
         sig_rdmux_dout        <= sig_mux_dout;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_4XN_NUX
         --
         -- Process Description:
         --  Implement the 4XN Mux
         --
         -------------------------------------------------------------
         DO_4XN_NUX : process (sig_mux_sel_int_local,
                               mmap_read_data_in)
           begin
             
             case sig_mux_sel_int_local is
               when 1 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*2)-1 downto CHANNEL_DWIDTH*1);
               when 2 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*3)-1 downto CHANNEL_DWIDTH*2);
               when 3 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*4)-1 downto CHANNEL_DWIDTH*3);
               when others =>
                   sig_mux_dout <=  mmap_read_data_in(CHANNEL_DWIDTH-1 downto 0);
             end case;
             
           end process DO_4XN_NUX; 
  
         
       end generate GEN_4XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_8XN
    --
    -- If Generate Description:
    --  8 channel input mux case
    --
    --
    ------------------------------------------------------------
    GEN_8XN : if (NUM_MUX_CHANNELS = 8) generate
    
       -- local signals
       signal sig_mux_sel_slice  : std_logic_vector(MUX_SEL_WIDTH-1 downto 0)  := (others => '0');
       signal sig_mux_sel_unsgnd : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_mux_sel_int    : integer range 0 to 31 := 0;
       signal sig_mux_sel_int_local    : integer range 0 to 31 := 0;
       signal sig_mux_dout   : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_mux_sel_slice   <= mstr2data_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_mux_sel_unsgnd  <=  UNSIGNED(sig_mux_sel_slice);  -- convert to unsigned
        
         sig_mux_sel_int     <=  TO_INTEGER(sig_mux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         sig_mux_sel_int_local <= sig_mux_sel_int;
         
         sig_rdmux_dout        <= sig_mux_dout;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_8XN_NUX
         --
         -- Process Description:
         --  Implement the 8XN Mux
         --
         -------------------------------------------------------------
         DO_8XN_NUX : process (sig_mux_sel_int_local,
                               mmap_read_data_in)
           begin
             
             case sig_mux_sel_int_local is
               when 1 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*2)-1 downto CHANNEL_DWIDTH*1);
               when 2 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*3)-1 downto CHANNEL_DWIDTH*2);
               when 3 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*4)-1 downto CHANNEL_DWIDTH*3);
               when 4 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*5)-1 downto CHANNEL_DWIDTH*4);
               when 5 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*6)-1 downto CHANNEL_DWIDTH*5);
               when 6 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*7)-1 downto CHANNEL_DWIDTH*6);
               when 7 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*8)-1 downto CHANNEL_DWIDTH*7);
               when others =>
                   sig_mux_dout <=  mmap_read_data_in(CHANNEL_DWIDTH-1 downto 0);
             end case;
                 
           end process DO_8XN_NUX; 
 
         
       end generate GEN_8XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_16XN
    --
    -- If Generate Description:
    --  16 channel input mux case
    --
    --
    ------------------------------------------------------------
    GEN_16XN : if (NUM_MUX_CHANNELS = 16) generate
    
       -- local signals
       signal sig_mux_sel_slice  : std_logic_vector(MUX_SEL_WIDTH-1 downto 0)  := (others => '0');
       signal sig_mux_sel_unsgnd : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_mux_sel_int    : integer range 0 to 31 := 0;
       signal sig_mux_sel_int_local : integer range 0 to 31 := 0;
       signal sig_mux_dout          : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_mux_sel_slice   <= mstr2data_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_mux_sel_unsgnd  <=  UNSIGNED(sig_mux_sel_slice);  -- convert to unsigned
        
         sig_mux_sel_int     <=  TO_INTEGER(sig_mux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         sig_mux_sel_int_local <= sig_mux_sel_int;
         
         sig_rdmux_dout        <= sig_mux_dout;
       
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_16XN_NUX
         --
         -- Process Description:
         --  Implement the 16XN Mux
         --
         -------------------------------------------------------------
         DO_16XN_NUX : process (sig_mux_sel_int_local,
                                mmap_read_data_in)
           begin
             
             case sig_mux_sel_int_local is
               when 1 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*2)-1 downto CHANNEL_DWIDTH*1);
               when 2 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*3)-1 downto CHANNEL_DWIDTH*2);
               when 3 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*4)-1 downto CHANNEL_DWIDTH*3);
               when 4 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*5)-1 downto CHANNEL_DWIDTH*4);
               when 5 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*6)-1 downto CHANNEL_DWIDTH*5);
               when 6 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*7)-1 downto CHANNEL_DWIDTH*6);
               when 7 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*8)-1 downto CHANNEL_DWIDTH*7);
               when 8 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*9)-1 downto CHANNEL_DWIDTH*8);
               when 9 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*10)-1 downto CHANNEL_DWIDTH*9);
               when 10 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*11)-1 downto CHANNEL_DWIDTH*10);
               when 11 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*12)-1 downto CHANNEL_DWIDTH*11);
               when 12 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*13)-1 downto CHANNEL_DWIDTH*12);
               when 13 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*14)-1 downto CHANNEL_DWIDTH*13);
               when 14 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*15)-1 downto CHANNEL_DWIDTH*14);
               when 15 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*16)-1 downto CHANNEL_DWIDTH*15);
               when others =>
                   sig_mux_dout <=  mmap_read_data_in(CHANNEL_DWIDTH-1 downto 0);
             end case;
          
           end process DO_16XN_NUX; 
 
         
       end generate GEN_16XN;
  
 
 
 
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_32XN
    --
    -- If Generate Description:
    --  32 channel input mux case
    --
    --
    ------------------------------------------------------------
    GEN_32XN : if (NUM_MUX_CHANNELS = 32) generate
    
       -- local signals
       signal sig_mux_sel_slice  : std_logic_vector(MUX_SEL_WIDTH-1 downto 0)  := (others => '0');
       signal sig_mux_sel_unsgnd : unsigned(MUX_SEL_WIDTH-1 downto 0) := (others => '0');
       signal sig_mux_sel_int    : integer range 0 to 31 := 0;
       signal sig_mux_sel_int_local : integer range 0 to 31 := 0;
       signal sig_mux_dout          : std_logic_vector(CHANNEL_DWIDTH-1 downto 0) := (others => '0');
       
       begin
    
         
        -- Rip the Mux Select bits needed for the Mux case from the input select bus
         sig_mux_sel_slice   <= mstr2data_saddr_lsb((MUX_SEL_LS_INDEX + MUX_SEL_WIDTH)-1 downto MUX_SEL_LS_INDEX);
        
         sig_mux_sel_unsgnd  <=  UNSIGNED(sig_mux_sel_slice);  -- convert to unsigned
        
         sig_mux_sel_int     <=  TO_INTEGER(sig_mux_sel_unsgnd); -- convert to integer for MTI compile issue
                                                                 -- with locally static subtype error in each of the
                                                                 -- Mux IfGens
        
         sig_mux_sel_int_local <= sig_mux_sel_int;
         
         sig_rdmux_dout        <= sig_mux_dout;
       
          
          
          
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: DO_32XN_NUX
         --
         -- Process Description:
         --  Implement the 32XN Mux
         --
         -------------------------------------------------------------
         DO_32XN_NUX : process (sig_mux_sel_int_local,
                                mmap_read_data_in)
           begin
             
             case sig_mux_sel_int_local is
               when 1 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*2)-1 downto CHANNEL_DWIDTH*1);
               when 2 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*3)-1 downto CHANNEL_DWIDTH*2);
               when 3 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*4)-1 downto CHANNEL_DWIDTH*3);
               when 4 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*5)-1 downto CHANNEL_DWIDTH*4);
               when 5 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*6)-1 downto CHANNEL_DWIDTH*5);
               when 6 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*7)-1 downto CHANNEL_DWIDTH*6);
               when 7 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*8)-1 downto CHANNEL_DWIDTH*7);
               when 8 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*9)-1 downto CHANNEL_DWIDTH*8);
               when 9 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*10)-1 downto CHANNEL_DWIDTH*9);
               when 10 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*11)-1 downto CHANNEL_DWIDTH*10);
               when 11 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*12)-1 downto CHANNEL_DWIDTH*11);
               when 12 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*13)-1 downto CHANNEL_DWIDTH*12);
               when 13 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*14)-1 downto CHANNEL_DWIDTH*13);
               when 14 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*15)-1 downto CHANNEL_DWIDTH*14);
               when 15 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*16)-1 downto CHANNEL_DWIDTH*15);
               when 16 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*17)-1 downto CHANNEL_DWIDTH*16);
               when 17 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*18)-1 downto CHANNEL_DWIDTH*17);
               when 18 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*19)-1 downto CHANNEL_DWIDTH*18);
               when 19 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*20)-1 downto CHANNEL_DWIDTH*19);
               when 20 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*21)-1 downto CHANNEL_DWIDTH*20);
               when 21 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*22)-1 downto CHANNEL_DWIDTH*21);
               when 22 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*23)-1 downto CHANNEL_DWIDTH*22);
               when 23 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*24)-1 downto CHANNEL_DWIDTH*23);
               when 24 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*25)-1 downto CHANNEL_DWIDTH*24);
               when 25 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*26)-1 downto CHANNEL_DWIDTH*25);
               when 26 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*27)-1 downto CHANNEL_DWIDTH*26);
               when 27 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*28)-1 downto CHANNEL_DWIDTH*27);
               when 28 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*29)-1 downto CHANNEL_DWIDTH*28);
               when 29 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*30)-1 downto CHANNEL_DWIDTH*29);
               when 30 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*31)-1 downto CHANNEL_DWIDTH*30);
               when 31 =>
                   sig_mux_dout <=  mmap_read_data_in((CHANNEL_DWIDTH*32)-1 downto CHANNEL_DWIDTH*31);
               when others =>
                   sig_mux_dout <=  mmap_read_data_in(CHANNEL_DWIDTH-1 downto 0);
             end case;
          
           end process DO_32XN_NUX; 
 
         
       end generate GEN_32XN;
  
 
  
  
  
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_fifo.vhd
-- Version:         initial
-- Description:     
--    This file is a wrapper file for the Synchronous FIFO used by the 
--    AXI Master burst. 
-- 
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--            axi_master_burst_fifo.vhd
--                 |
--                 |-- proc_common_v4_0_2.srl_fifo_f
--
-------------------------------------------------------------------------------
-- Author:          DET
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_fifo.vhd
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;



library lib_srl_fifo_v1_0_2;
--library lib_pkg_v1_0_2;
--use lib_pkg_v1_0_2.lib_pkg.all;
--use lib_pkg_v1_0_2.lib_pkg.clog2;
use lib_srl_fifo_v1_0_2.srl_fifo_f;


-- library axi_master_burst_v2_0_7;
-- use axi_master_burst_v2_0_7.axi_master_burst_sfifo_autord;
-- use axi_master_burst_v2_0_7.axi_master_burst_afifo_autord;


-------------------------------------------------------------------------------

entity axi_master_burst_fifo is
  generic (
    C_DWIDTH            : integer := 32  ;
      -- Bit width of the FIFO
      
    C_DEPTH             : integer := 4   ;
      -- Depth of the fifo in fifo width words
    
    C_IS_ASYNC          : Integer range 0 to 1 := 0 ;
      -- 0 = Syncronous FIFO
      -- 1 = Asynchronous (2 clock) FIFO
    
    C_PRIM_TYPE         : Integer range 0 to 2 := 2 ;
      -- 0 = Register
      -- 1 = Block Memory
      -- 2 = SRL
    
    C_FAMILY            : String  := "virtex7"
      -- The target FPGA device familiy
    
   );
  port (
     
     
     
    -----------------------------------------------------------------------------
    -- Write Side Clock and Reset
    -----------------------------------------------------------------------------
    fifo_wr_clk          : In  std_logic;                              -- main clock input
    fifo_wr_reset        : In  std_logic;                              -- main reset input
                                                                      
    -----------------------------------------------------------------------------
    -- Write Side Interface (AXI Stream Like)
    -----------------------------------------------------------------------------
    fifo_wr_tvalid       : In  std_logic;                              -- Write Side IF
    fifo_wr_tready       : Out std_logic;                              -- Write Side IF
    fifo_wr_tdata        : In  std_logic_vector(C_DWIDTH-1 downto 0);  -- Write Side IF
    fifo_wr_full         : Out std_logic;                              -- Write Side IF
   
   
    -----------------------------------------------------------------------------
    -- Read Side Clock and reset
    -----------------------------------------------------------------------------
    fifo_async_rd_reset  : In  std_logic; -- Read reset => only used if C_IS_ASYNC = 1   
    fifo_async_rd_clk    : In  std_logic; -- Read Clock => only used if C_IS_ASYNC = 1 
    
    -----------------------------------------------------------------------------
    -- Read Side Interface (AXI Stream Like)
    -----------------------------------------------------------------------------
    fifo_rd_tvalid       : Out std_logic;                              -- Read Side IF
    fifo_rd_tready       : In  std_logic;                              -- Read Side IF
    fifo_rd_tdata        : Out std_logic_vector(C_DWIDTH-1 downto 0);  -- Read Side IF
    fifo_rd_empty        : Out std_logic                               -- Read Side IF
   
    );
end entity axi_master_burst_fifo;

-----------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------

architecture imp of axi_master_burst_fifo is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of imp : architecture is "yes";
 -- function Declarations
  
  -- Not used by AMB   -------------------------------------------------------------------
  -- Not used by AMB   -- Function
  -- Not used by AMB   --
  -- Not used by AMB   -- Function Name: funct_get_prim_type
  -- Not used by AMB   --
  -- Not used by AMB   -- Function Description:
  -- Not used by AMB   --  Sorts out the FIFO Primitive type selection based on fifo
  -- Not used by AMB   -- depth and original primitive choice.
  -- Not used by AMB   --
  -- Not used by AMB   -------------------------------------------------------------------
  -- Not used by AMB   function funct_get_prim_type (depth            : integer;
  -- Not used by AMB                                 input_prim_type  : integer) return integer is
  -- Not used by AMB   
  -- Not used by AMB     Variable temp_prim_type : Integer := 0;
  -- Not used by AMB   
  -- Not used by AMB   begin
  -- Not used by AMB   
  -- Not used by AMB     If (depth > 64) Then
  -- Not used by AMB     
  -- Not used by AMB       temp_prim_type := 1;  -- use BRAM
  -- Not used by AMB    
  -- Not used by AMB     Elsif (depth <= 64 and 
  -- Not used by AMB            input_prim_type = 0) Then
  -- Not used by AMB     
  -- Not used by AMB       temp_prim_type := 0;  -- use regiaters
  -- Not used by AMB     
  -- Not used by AMB     else
  -- Not used by AMB   
  -- Not used by AMB       temp_prim_type := 1;  -- use BRAM
  -- Not used by AMB     
  -- Not used by AMB     End if;
  -- Not used by AMB     
  -- Not used by AMB     
  -- Not used by AMB     Return (temp_prim_type);
  -- Not used by AMB     
  -- Not used by AMB   end function funct_get_prim_type;
  
 
  
  
-- Signal declarations
  
  Signal sig_init_reg          : std_logic := '0';
  Signal sig_init_reg2         : std_logic := '0';
  Signal sig_init_done         : std_logic := '0';
  signal sig_inhibit_rdy_n     : std_logic := '0';
 
   
   
 
-----------------------------------------------------------------------------
-- Begin architecture
-----------------------------------------------------------------------------
begin  


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_INIT_REG
  --
  -- Process Description:
  --  Registers the reset signal input.
  --
  -------------------------------------------------------------
  IMP_INIT_REG : process (fifo_wr_clk)
     begin
       if (fifo_wr_clk'event and fifo_wr_clk = '1') then
          if (fifo_wr_reset = '1') then
            sig_init_reg  <= '1';
            sig_init_reg2 <= '1';
          else
            sig_init_reg <= '0';
            sig_init_reg2 <= sig_init_reg;
          end if; 
       end if;       
     end process IMP_INIT_REG; 
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_INIT_DONE_REG
  --
  -- Process Description:
  -- Create a 1 clock wide init done pulse. 
  --
  -------------------------------------------------------------
  IMP_INIT_DONE_REG : process (fifo_wr_clk)
     begin
       if (fifo_wr_clk'event and fifo_wr_clk = '1') then
          if (fifo_wr_reset = '1' or
              sig_init_done = '1') then
            
            sig_init_done <= '0';
          
          Elsif (sig_init_reg  = '1' and
                 sig_init_reg2 = '1') Then
          
            sig_init_done <= '1';
          
          else
            null;  -- hold current state
          end if; 
       end if;       
     end process IMP_INIT_DONE_REG; 
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_RDY_INHIBIT_REG
  --
  -- Process Description:
  --  Implements a ready inhibit flop.
  --
  -------------------------------------------------------------
  IMP_RDY_INHIBIT_REG : process (fifo_wr_clk)
     begin
       if (fifo_wr_clk'event and fifo_wr_clk = '1') then
          if (fifo_wr_reset = '1') then
            
            sig_inhibit_rdy_n  <= '0';
          
          Elsif (sig_init_done = '1') Then
          
            sig_inhibit_rdy_n <= '1';
          
          else
            null;  -- hold current state
          end if; 
       end if;       
     end process IMP_RDY_INHIBIT_REG; 
  
  
          
  
  
  
  
  
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: USE_SINGLE_REG
  --
  -- If Generate Description:
  --  Implements a 1 deep register FIFO (synchronous mode only)
  --
  --
  ------------------------------------------------------------
  USE_SINGLE_REG : if (C_IS_ASYNC  = 0 and 
                       C_DEPTH    <= 1) generate
  
     -- Local Constants
     
     -- local signals
     signal sig_data_in           : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
     signal sig_regfifo_dout_reg  : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
     signal sig_regfifo_full_reg  : std_logic := '0';
     signal sig_regfifo_empty_reg : std_logic := '0';
     signal sig_push_regfifo      : std_logic := '0';
     signal sig_pop_regfifo       : std_logic := '0';
     
     
     
     
     
  
     begin

       -- Internal signals
       
       -- Write signals
       fifo_wr_tready    <=  sig_regfifo_empty_reg;
       
       fifo_wr_full      <=  sig_regfifo_full_reg ;
       
       sig_push_regfifo  <=  fifo_wr_tvalid and
                             sig_regfifo_empty_reg;
       
       sig_data_in       <=  fifo_wr_tdata ; 

       
       -- Read signals
       fifo_rd_tdata     <=  sig_regfifo_dout_reg ;
       
       fifo_rd_tvalid    <=  sig_regfifo_full_reg ;
       
       fifo_rd_empty     <=  sig_regfifo_empty_reg;
       
       sig_pop_regfifo   <=  sig_regfifo_full_reg and
                             fifo_rd_tready;
       
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_REG_FIFO
       --
       -- Process Description:
       --    This process implements the data and full flag for the 
       -- register fifo.
       --
       -------------------------------------------------------------
       IMP_REG_FIFO : process (fifo_wr_clk)
          begin
            if (fifo_wr_clk'event and fifo_wr_clk = '1') then
               if (fifo_wr_reset    = '1' or
                   sig_pop_regfifo  = '1') then
                 
                 sig_regfifo_dout_reg  <= (others => '0');
                 sig_regfifo_full_reg  <= '0';
                 
               elsif (sig_push_regfifo = '1') then
                 
                 sig_regfifo_dout_reg  <= sig_data_in;
                 sig_regfifo_full_reg  <= '1';
                 
               else
                 null;  -- don't change state
               end if; 
            end if;       
          end process IMP_REG_FIFO; 
       
      
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_REG_EMPTY_FLOP
       --
       -- Process Description:
       --    This process implements the empty flag for the 
       -- register fifo.
       --
       -------------------------------------------------------------
       IMP_REG_EMPTY_FLOP : process (fifo_wr_clk)
          begin
            if (fifo_wr_clk'event and fifo_wr_clk = '1') then
               if (fifo_wr_reset    = '1') then
                 
                 sig_regfifo_empty_reg <= '0'; -- since this is used for the ready (invertd)
                                               -- it can't be asserted during reset
                 
               elsif (sig_pop_regfifo  = '1' or
                      sig_init_done    = '1') then
                 
                 sig_regfifo_empty_reg <= '1';
                 
               elsif (sig_push_regfifo = '1') then
                 
                 sig_regfifo_empty_reg <= '0';
                 
               else
                 null;  -- don't change state
               end if; 
            end if;       
          end process IMP_REG_EMPTY_FLOP; 
       

  
     end generate USE_SINGLE_REG;
 
 




  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: USE_SRL_FIFO
  --
  -- If Generate Description:
  --  Generates a fifo implementation usinf SRL based FIFOa
  --
  --
  ------------------------------------------------------------
  USE_SRL_FIFO : if (C_IS_ASYNC  =  0 and
                     C_DEPTH    <= 64 and
                     C_DEPTH     >  1 and
                     C_PRIM_TYPE =  2 ) generate
                     
  
  
    -- Local Constants
    Constant  LOGIC_LOW         : std_logic := '0';
    Constant  NEED_ALMOST_EMPTY : Integer := 0;
    Constant  NEED_ALMOST_FULL  : Integer := 0;
    
    
    -- local signals

    signal sig_wr_full          : std_logic := '0';
    signal sig_wr_fifo          : std_logic := '0';
    signal sig_wr_ready         : std_logic := '0';
    signal sig_rd_fifo          : std_logic := '0';
    signal sig_rd_empty         : std_logic := '0';
    signal sig_rd_valid         : std_logic := '0';
    signal sig_fifo_rd_data     : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_wr_data     : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
      
    begin
  
       

      -- Write side signals
      fifo_wr_tready    <=  sig_wr_ready;
      
      fifo_wr_full      <=  sig_wr_full;
      
      sig_wr_ready      <=  not(sig_wr_full) and 
                            sig_inhibit_rdy_n;
 
      sig_wr_fifo       <=  fifo_wr_tvalid and 
                            sig_wr_ready;
      
      sig_fifo_wr_data  <=  fifo_wr_tdata;
      
      
      
      
      -- Read Side Signals
      fifo_rd_tvalid    <=  sig_rd_valid;
      
      sig_rd_valid      <=  not(sig_rd_empty);
      
      fifo_rd_tdata     <=  sig_fifo_rd_data ;
      
      fifo_rd_empty     <=  not(sig_rd_valid);
      
      sig_rd_fifo       <=  sig_rd_valid and
                            fifo_rd_tready;
       
      
      
      
       
       
      ------------------------------------------------------------
      -- Instance: I_SYNC_FIFO 
      --
      -- Description:
      -- Implement the synchronous FIFO using SRL FIFO elements    
      --
      ------------------------------------------------------------
       I_SYNC_FIFO : entity lib_srl_fifo_v1_0_2.srl_fifo_f
       generic map (

         C_DWIDTH            =>  C_DWIDTH   ,  
         C_DEPTH             =>  C_DEPTH    ,  
         C_FAMILY            =>  C_FAMILY      

         )
       port map (

         Clk           =>  fifo_wr_clk      ,  
         Reset         =>  fifo_wr_reset    ,  
         FIFO_Write    =>  sig_wr_fifo      ,  
         Data_In       =>  sig_fifo_wr_data ,  
         FIFO_Read     =>  sig_rd_fifo      ,  
         Data_Out      =>  sig_fifo_rd_data ,  
         FIFO_Empty    =>  sig_rd_empty     ,  
         FIFO_Full     =>  sig_wr_full      ,  
         Addr          =>  open                
     
         );

       
       
     end generate USE_SRL_FIFO;




 
 
 -- Not used by AMB    ------------------------------------------------------------
 -- Not used by AMB    -- If Generate
 -- Not used by AMB    --
 -- Not used by AMB    -- Label: USE_SYNC_FIFO
 -- Not used by AMB    --
 -- Not used by AMB    -- If Generate Description:
 -- Not used by AMB    --  Instantiates a synchronous FIFO design for use in the 
 -- Not used by AMB    -- synchronous operating mode.
 -- Not used by AMB    --
 -- Not used by AMB    ------------------------------------------------------------
 -- Not used by AMB    USE_SYNC_FIFO : if (C_IS_ASYNC  =  0 and
 -- Not used by AMB                       (C_DEPTH     > 64  or
 -- Not used by AMB                       (C_DEPTH     >  1 and C_PRIM_TYPE < 2 ))) generate
 -- Not used by AMB    
 -- Not used by AMB      -- Local Constants
 -- Not used by AMB      Constant  LOGIC_LOW         : std_logic := '0';
 -- Not used by AMB      Constant  NEED_ALMOST_EMPTY : Integer   := 0;
 -- Not used by AMB      Constant  NEED_ALMOST_FULL  : Integer   := 0;
 -- Not used by AMB      Constant  DATA_CNT_WIDTH    : Integer   := clog2(C_DEPTH)+1;
 -- Not used by AMB      Constant  PRIM_TYPE         : Integer   := funct_get_prim_type(C_DEPTH, C_PRIM_TYPE);
 -- Not used by AMB      
 -- Not used by AMB      
 -- Not used by AMB      -- local signals
 -- Not used by AMB      signal sig_wr_full          : std_logic := '0';
 -- Not used by AMB      signal sig_wr_fifo          : std_logic := '0';
 -- Not used by AMB      signal sig_wr_ready         : std_logic := '0';
 -- Not used by AMB      signal sig_rd_fifo          : std_logic := '0';
 -- Not used by AMB      signal sig_rd_valid         : std_logic := '0';
 -- Not used by AMB      signal sig_fifo_rd_data     : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
 -- Not used by AMB      signal sig_fifo_wr_data     : std_logic_vector(C_DWIDTH-1 downto 0) := (others => '0');
 -- Not used by AMB      
 -- Not used by AMB      begin
 -- Not used by AMB   
 -- Not used by AMB        -- Write side signals
 -- Not used by AMB        fifo_wr_tready    <=  sig_wr_ready;
 -- Not used by AMB        
 -- Not used by AMB        fifo_wr_full      <=  sig_wr_full;
 -- Not used by AMB        
 -- Not used by AMB        sig_wr_ready      <=  not(sig_wr_full) and 
 -- Not used by AMB                              sig_inhibit_rdy_n;
 -- Not used by AMB   
 -- Not used by AMB        sig_wr_fifo       <=  fifo_wr_tvalid and 
 -- Not used by AMB                              sig_wr_ready;
 -- Not used by AMB        
 -- Not used by AMB        sig_fifo_wr_data  <=  fifo_wr_tdata;
 -- Not used by AMB        
 -- Not used by AMB        
 -- Not used by AMB        
 -- Not used by AMB        
 -- Not used by AMB        -- Read Side Signals
 -- Not used by AMB        fifo_rd_tvalid    <=  sig_rd_valid;
 -- Not used by AMB        
 -- Not used by AMB        fifo_rd_tdata     <=  sig_fifo_rd_data ;
 -- Not used by AMB        
 -- Not used by AMB        fifo_rd_empty     <=  not(sig_rd_valid);
 -- Not used by AMB        
 -- Not used by AMB        sig_rd_fifo       <=  sig_rd_valid and
 -- Not used by AMB                              fifo_rd_tready;
 -- Not used by AMB         
 -- Not used by AMB        
 -- Not used by AMB        
 -- Not used by AMB        
 -- Not used by AMB        ------------------------------------------------------------
 -- Not used by AMB        -- Instance: I_SYNC_FIFO 
 -- Not used by AMB        --
 -- Not used by AMB        -- Description:
 -- Not used by AMB        -- Implement the synchronous FIFO    
 -- Not used by AMB        --
 -- Not used by AMB        ------------------------------------------------------------
 -- Not used by AMB         I_SYNC_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_sfifo_autord
 -- Not used by AMB         generic map (
 -- Not used by AMB   
 -- Not used by AMB           C_DWIDTH                =>  C_DWIDTH          ,  
 -- Not used by AMB           C_DEPTH                 =>  C_DEPTH           ,  
 -- Not used by AMB           C_DATA_CNT_WIDTH        =>  DATA_CNT_WIDTH    ,  
 -- Not used by AMB           C_NEED_ALMOST_EMPTY     =>  NEED_ALMOST_EMPTY ,  
 -- Not used by AMB           C_NEED_ALMOST_FULL      =>  NEED_ALMOST_FULL  ,  
 -- Not used by AMB           C_USE_BLKMEM            =>  PRIM_TYPE         ,  
 -- Not used by AMB           C_FAMILY                =>  C_FAMILY             
 -- Not used by AMB   
 -- Not used by AMB           )
 -- Not used by AMB         port map (
 -- Not used by AMB   
 -- Not used by AMB          -- Inputs 
 -- Not used by AMB           SFIFO_Sinit             =>  fifo_wr_reset     ,  
 -- Not used by AMB           SFIFO_Clk               =>  fifo_wr_clk       ,  
 -- Not used by AMB           SFIFO_Wr_en             =>  sig_wr_fifo       ,  
 -- Not used by AMB           SFIFO_Din               =>  fifo_wr_tdata     ,  
 -- Not used by AMB           SFIFO_Rd_en             =>  sig_rd_fifo       ,  
 -- Not used by AMB           SFIFO_Clr_Rd_Data_Valid =>  LOGIC_LOW         ,  
 -- Not used by AMB           
 -- Not used by AMB          -- Outputs
 -- Not used by AMB           SFIFO_DValid            =>  sig_rd_valid      ,  
 -- Not used by AMB           SFIFO_Dout              =>  sig_fifo_rd_data  ,  
 -- Not used by AMB           SFIFO_Full              =>  sig_wr_full       ,  
 -- Not used by AMB           SFIFO_Empty             =>  open              ,  
 -- Not used by AMB           SFIFO_Almost_full       =>  open              ,  
 -- Not used by AMB           SFIFO_Almost_empty      =>  open              ,  
 -- Not used by AMB           SFIFO_Rd_count          =>  open              ,  
 -- Not used by AMB           SFIFO_Rd_count_minus1   =>  open              ,  
 -- Not used by AMB           SFIFO_Wr_count          =>  open              ,  
 -- Not used by AMB           SFIFO_Rd_ack            =>  open                 
 -- Not used by AMB   
 -- Not used by AMB           );
 -- Not used by AMB   
 -- Not used by AMB   
 -- Not used by AMB        
 -- Not used by AMB   
 -- Not used by AMB       end generate USE_SYNC_FIFO;
 
 
 
 
 
 
  
  -- Not used by AMB   ------------------------------------------------------------
  -- Not used by AMB   -- If Generate
  -- Not used by AMB   --
  -- Not used by AMB   -- Label: USE_ASYNC_FIFO
  -- Not used by AMB   --
  -- Not used by AMB   -- If Generate Description:
  -- Not used by AMB   --  Instantiates an asynchronous FIFO design for use in the 
  -- Not used by AMB   -- asynchronous operating mode.
  -- Not used by AMB   --
  -- Not used by AMB   ------------------------------------------------------------
  -- Not used by AMB   USE_ASYNC_FIFO : if (C_IS_ASYNC = 1) generate
  -- Not used by AMB   
  -- Not used by AMB     -- Local Constants
  -- Not used by AMB     Constant  LOGIC_LOW         : std_logic := '0';
  -- Not used by AMB     Constant  CNT_WIDTH         : Integer := clog2(C_DEPTH);
  -- Not used by AMB     
  -- Not used by AMB     
  -- Not used by AMB     -- local signals
  -- Not used by AMB   
  -- Not used by AMB     signal sig_async_wr_full       : std_logic := '0';
  -- Not used by AMB     signal sig_async_wr_fifo       : std_logic := '0';
  -- Not used by AMB     signal sig_async_wr_ready      : std_logic := '0';
  -- Not used by AMB     signal sig_async_rd_fifo       : std_logic := '0';
  -- Not used by AMB     signal sig_async_rd_valid      : std_logic := '0';
  -- Not used by AMB     signal sig_afifo_rd_data       : std_logic_vector(C_DWIDTH-1 downto 0);
  -- Not used by AMB     signal sig_afifo_wr_data       : std_logic_vector(C_DWIDTH-1 downto 0);
  -- Not used by AMB     signal sig_fifo_ainit          : std_logic := '0';
  -- Not used by AMB     Signal sig_init_reg            : std_logic := '0';
  -- Not used by AMB     
  -- Not used by AMB     
  -- Not used by AMB     begin
  -- Not used by AMB   
  -- Not used by AMB       sig_fifo_ainit  <= fifo_async_rd_reset or fifo_wr_reset;
  -- Not used by AMB       
  -- Not used by AMB       
  -- Not used by AMB   
  -- Not used by AMB       -- Write side signals
  -- Not used by AMB       fifo_wr_tready      <=  sig_async_wr_ready;
  -- Not used by AMB       
  -- Not used by AMB       fifo_wr_full        <=  sig_async_wr_full;
  -- Not used by AMB       
  -- Not used by AMB       sig_async_wr_ready  <=  not(sig_async_wr_full) and
  -- Not used by AMB                               sig_inhibit_rdy_n;
  -- Not used by AMB   
  -- Not used by AMB       sig_async_wr_fifo   <=  fifo_wr_tvalid and 
  -- Not used by AMB                               sig_async_wr_ready;
  -- Not used by AMB       
  -- Not used by AMB       sig_afifo_wr_data   <=  fifo_wr_tdata;
  -- Not used by AMB       
  -- Not used by AMB       
  -- Not used by AMB       
  -- Not used by AMB       
  -- Not used by AMB       -- Read Side Signals
  -- Not used by AMB       fifo_rd_tvalid    <=  sig_async_rd_valid;
  -- Not used by AMB       
  -- Not used by AMB       fifo_rd_tdata     <=  sig_afifo_rd_data ;
  -- Not used by AMB       
  -- Not used by AMB       fifo_rd_empty     <=  not(sig_async_rd_valid);
  -- Not used by AMB       
  -- Not used by AMB       sig_async_rd_fifo <=  sig_async_rd_valid and
  -- Not used by AMB                             fifo_rd_tready;
  -- Not used by AMB        
  -- Not used by AMB       
  -- Not used by AMB   
  -- Not used by AMB        
  -- Not used by AMB        
  -- Not used by AMB        
  -- Not used by AMB       ------------------------------------------------------------
  -- Not used by AMB       -- Instance: I_ASYNC_FIFO 
  -- Not used by AMB       --
  -- Not used by AMB       -- Description:
  -- Not used by AMB       -- Implement the asynchronous FIFO    
  -- Not used by AMB       --
  -- Not used by AMB       ------------------------------------------------------------
  -- Not used by AMB        I_ASYNC_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_afifo_autord
  -- Not used by AMB        generic map (
  -- Not used by AMB   
  -- Not used by AMB          C_DWIDTH                   =>  C_DWIDTH          ,  
  -- Not used by AMB          C_DEPTH                    =>  C_DEPTH           ,  
  -- Not used by AMB          C_CNT_WIDTH                =>  CNT_WIDTH         ,  
  -- Not used by AMB          C_USE_BLKMEM               =>  C_PRIM_TYPE       ,  
  -- Not used by AMB          C_FAMILY                   =>  C_FAMILY             
  -- Not used by AMB   
  -- Not used by AMB          )
  -- Not used by AMB        port map (
  -- Not used by AMB   
  -- Not used by AMB         -- Inputs 
  -- Not used by AMB          AFIFO_Ainit                =>  sig_fifo_ainit    ,  
  -- Not used by AMB          AFIFO_Wr_clk               =>  fifo_wr_clk       ,  
  -- Not used by AMB          AFIFO_Wr_en                =>  sig_async_wr_fifo ,  
  -- Not used by AMB          AFIFO_Din                  =>  sig_afifo_wr_data ,  
  -- Not used by AMB          AFIFO_Rd_clk               =>  fifo_async_rd_clk ,  
  -- Not used by AMB          AFIFO_Rd_en                =>  sig_async_rd_fifo ,  
  -- Not used by AMB          AFIFO_Clr_Rd_Data_Valid    =>  LOGIC_LOW         ,  
  -- Not used by AMB          
  -- Not used by AMB         -- Outputs
  -- Not used by AMB          AFIFO_DValid               =>  sig_async_rd_valid,  
  -- Not used by AMB          AFIFO_Dout                 =>  sig_afifo_rd_data ,  
  -- Not used by AMB          AFIFO_Full                 =>  sig_async_wr_full ,  
  -- Not used by AMB          AFIFO_Empty                =>  open              ,  
  -- Not used by AMB          AFIFO_Almost_full          =>  open              ,  
  -- Not used by AMB          AFIFO_Almost_empty         =>  open              ,  
  -- Not used by AMB          AFIFO_Wr_count             =>  open              ,   
  -- Not used by AMB          AFIFO_Rd_count             =>  open              ,  
  -- Not used by AMB          AFIFO_Corr_Rd_count        =>  open              ,  
  -- Not used by AMB          AFIFO_Corr_Rd_count_minus1 =>  open              ,  
  -- Not used by AMB          AFIFO_Rd_ack               =>  open                 
  -- Not used by AMB   
  -- Not used by AMB          );
  -- Not used by AMB   
  -- Not used by AMB   
  -- Not used by AMB       
  -- Not used by AMB   
  -- Not used by AMB      end generate USE_ASYNC_FIFO;
  -- Not used by AMB   
 

end imp;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_wr_status_cntl.vhd
  --
  -- Description:     
  --    This file implements the AXI Master Burst Write Status Controller.                 
  --                  
  --                  
  --                  
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_wr_status_cntl.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0 $
  -- Date:            $1/19/2011$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXI dataMover V2_00_a axi_datamover_wr_status_cntl.vhd
  -- ^^^^^^
  --
  --     DET     2/15/2011     Initial for EDk 13.2
  -- ~~~~~~
  --    -- Per CR593812
  --     - Modifications to remove unused features to improve Code coverage.
  --       Used "-- coverage off" and "-- coverage on" strings.
  -- ^^^^^^
  -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  library axi_master_burst_v2_0_7;
  use axi_master_burst_v2_0_7.axi_master_burst_fifo;
  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_wr_status_cntl is
    generic (
      
      C_ENABLE_STORE_FORWARD : Integer range  0 to   1 :=  0;
      C_SF_BYTES_RCVD_WIDTH  : Integer range  1 to  23 :=  1;
      C_STS_FIFO_DEPTH       : Integer range  1 to  32 :=  8;
      C_STS_WIDTH            : Integer range  8 to  32 :=  8;
      C_TAG_WIDTH            : Integer range  1 to 8   :=  4;
      C_FAMILY               : String                  := "virtex7"
      
      );
    port (
      
      -- Clock input
      primary_aclk         : in  std_logic;
         -- Primary synchronization clock for the Master side
         -- interface and internal logic. It is also used 
         -- for the User interface synchronization when 
         -- C_STSCMD_IS_ASYNC = 0.
  
      -- Reset input
      mmap_reset           : in  std_logic;
         -- Reset used for the internal master logic
      

     
      
      -- Soft Shutdown internal interface ---------------------------
      rst2wsc_stop_request : in  std_logic;
         -- Active high soft stop request to modules
      
      wsc2rst_stop_cmplt   : Out std_logic;
        -- Active high indication that the Write status Controller 
        -- has completed any pending transfers committed by the 
        -- Address Controller after a stop has been requested by 
        -- the Reset module.
        
      addr2wsc_addr_posted : In std_logic ;
         -- Indication from the Address Channel Controller to the   
         -- write Status Controller that an address has been posted 
         -- to the AXI Address Channel


     
     
      --  Write Response Channel Interface --------------------------
      
      s2mm_bresp          : In std_logic_vector(1 downto 0);
         -- The Write response value
      
      s2mm_bvalid         : In std_logic ;
         -- Indication from the Write Response Channel that a new
         -- write status input is valid 

      s2mm_bready         : out std_logic ;
         -- Indication to the Write Response Channel that the
         -- Status module is ready for a new status input


       
       
      -- Command Calculator Interface --------------------------
     
      calc2wsc_calc_error    : in std_logic ;
         -- Indication from the Command Calculator that a calculation
         -- error has occured.  
     
     
     
      
        
      -- Address Controller Status --------------------------
      
      addr2wsc_calc_error    : In std_logic ;
         -- Indication from the Address Channel Controller that it
         -- has encountered a calculation error from the command
         -- Calculator

      addr2wsc_fifo_empty    : In std_logic ;
         -- Indication from the Address Controller FIFO that it
         -- is empty (no commands pending)

                    
                    
                    
      --  Data Controller Status --------------------------
      
      data2wsc_tag           : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
         -- The command tag
      
      data2wsc_calc_error    : In std_logic ;
         -- Indication from the Data Channel Controller FIFO that it
         -- has encountered a Calculation error in the command pipe

      data2wsc_last_error    : In std_logic ;
         -- Indication from the Write Data Channel Controller that a 
         -- premature TLAST assertion was encountered on the incoming
         -- Stream Channel

      data2wsc_cmd_cmplt    : In std_logic ;
         -- Indication from the Data Channel Controller that the
         -- corresponding status is the final status for a parent 
         -- command fetched from the command FIFO

      data2wsc_valid         : In std_logic ;
         -- Indication from the Data Channel Controller FIFO that it
         -- has a new tag/error status to transfer

      wsc2data_ready         : out std_logic ;
         -- Indication to the Data Channel Controller FIFO that the
         -- Status module is ready for a new tag/error status input
      
      
      data2wsc_eop           : In  std_logic; 
         -- Input from the Write Data Controller indicating that the 
         -- associated command status also corresponds to a End of Packet
         -- marker for the input Stream. This is only used when Store and
         -- Forward is enabled in the S2MM. 
      
      data2wsc_bytes_rcvd    : In  std_logic_vector(C_SF_BYTES_RCVD_WIDTH-1 downto 0);
         -- Input from the Write Data Controller indicating the actual
         -- number of bytes received from the Stream input for the 
         -- corresponding command status. This is only used when Store and
         -- Forward is enabled in the S2MM.
      
      
      
      -- Command/Status Interface --------------------------
      
      wsc2stat_status       : Out std_logic_vector(C_STS_WIDTH-1 downto 0);
         -- Read Status value collected during a Read Data transfer
         -- Output to the Command/Status Module 
      
      stat2wsc_status_ready : In  std_logic; 
         -- Input from the Command/Status Module indicating that the 
         -- Status Reg/FIFO is Full and cannot accept more staus writes
                        
      wsc2stat_status_valid : Out std_logic ;                  
         -- Control Signal to Write the Status value to the Status 
         -- Reg/FIFO

  
      -- Address and Data Controller Pipe halt --------------------------
      
      wsc2mstr_halt_pipe    : Out std_logic
         -- Indication to Halt the Data and Address Command pipeline due
         -- to the Status pipe getting full at some point

  
      );
  
  end entity axi_master_burst_wr_status_cntl;
  
  
  architecture implementation of axi_master_burst_wr_status_cntl is
 
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
 
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_set_cnt_width
    --
    -- Function Description:
    --    Sets a count width based on a fifo depth. A depth of 4 or less
    -- is a special case which requires a minimum count width of 3 bits.
    --
    -------------------------------------------------------------------
    function funct_set_cnt_width (fifo_depth : integer) return integer is
    
      Variable temp_cnt_width : Integer := 4;
    
    begin
    
      
      if (fifo_depth <= 4) then
      
         temp_cnt_width := 3;
      
      elsif (fifo_depth <= 8) then
      
         temp_cnt_width := 4;
      
      elsif (fifo_depth <= 16) then
      
         temp_cnt_width := 5;
      
-- coverage off      
      elsif (fifo_depth <= 32) then
      
         temp_cnt_width := 6;
      
      else  -- fifo depth <= 64
      
         temp_cnt_width := 7;
-- coverage on      
      
      end if;
      
      Return (temp_cnt_width);
       
       
    end function funct_set_cnt_width;
    
 
 
 
  
    -- Constant Declarations  --------------------------------------------
    
    Constant OKAY                   : std_logic_vector(1 downto 0) := "00";
    Constant EXOKAY                 : std_logic_vector(1 downto 0) := "01";
    Constant SLVERR                 : std_logic_vector(1 downto 0) := "10";
    Constant DECERR                 : std_logic_vector(1 downto 0) := "11";
    Constant STAT_RSVD              : std_logic_vector(3 downto 0) := "0000";
    Constant TAG_WIDTH              : integer := C_TAG_WIDTH;
    Constant STAT_REG_TAG_WIDTH     : integer := 4;
    Constant SYNC_FIFO_SELECT       : integer := 0;
    Constant SRL_FIFO_TYPE          : integer := 2;
    Constant DCNTL_SFIFO_DEPTH      : integer := C_STS_FIFO_DEPTH;
    Constant DCNTL_STATCNT_WIDTH    : integer := funct_set_cnt_width(C_STS_FIFO_DEPTH);-- bits
    Constant DCNTL_HALT_THRES       : unsigned(DCNTL_STATCNT_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(DCNTL_SFIFO_DEPTH-2,DCNTL_STATCNT_WIDTH);
    Constant DCNTL_STATCNT_ZERO     : unsigned(DCNTL_STATCNT_WIDTH-1 downto 0) := (others => '0');
    Constant DCNTL_STATCNT_MAX      : unsigned(DCNTL_STATCNT_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(DCNTL_SFIFO_DEPTH,DCNTL_STATCNT_WIDTH);
    Constant DCNTL_STATCNT_ONE      : unsigned(DCNTL_STATCNT_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(1, DCNTL_STATCNT_WIDTH);
    Constant WRESP_WIDTH            : integer := 2;
    Constant WRESP_SFIFO_WIDTH      : integer := WRESP_WIDTH;
    Constant WRESP_SFIFO_DEPTH      : integer := DCNTL_SFIFO_DEPTH;
    
    Constant ADDR_POSTED_CNTR_WIDTH : integer := funct_set_cnt_width(C_STS_FIFO_DEPTH);-- bits 
    
    
    Constant ADDR_POSTED_ZERO       : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := (others => '0');
    Constant ADDR_POSTED_ONE        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := TO_UNSIGNED(1, ADDR_POSTED_CNTR_WIDTH);
    Constant ADDR_POSTED_MAX        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := (others => '1');
    
    
    -- Signal Declarations  --------------------------------------------
    
    signal sig_valid_status_rdy      : std_logic := '0';
    signal sig_decerr                : std_logic := '0';
    signal sig_slverr                : std_logic := '0';
    signal sig_coelsc_okay_reg       : std_logic := '0';
    signal sig_coelsc_interr_reg     : std_logic := '0';
    signal sig_coelsc_decerr_reg     : std_logic := '0';
    signal sig_coelsc_slverr_reg     : std_logic := '0';
    signal sig_coelsc_tag_reg        : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_pop_coelsc_reg        : std_logic := '0';
    signal sig_push_coelsc_reg       : std_logic := '0';
    signal sig_coelsc_reg_empty      : std_logic := '0';
    signal sig_coelsc_reg_full       : std_logic := '0';
    signal sig_tag2status            : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_tag_reg          : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_data_err_reg          : std_logic := '0';
    signal sig_data_last_err_reg     : std_logic := '0';
    signal sig_data_cmd_cmplt_reg    : std_logic := '0';
    signal sig_bresp_reg             : std_logic_vector(1 downto 0) := (others => '0');
    signal sig_push_status           : std_logic := '0';
    Signal sig_status_push_ok        : std_logic := '0';
    signal sig_status_valid          : std_logic := '0';
    signal sig_wsc2data_ready        : std_logic := '0';
    signal sig_s2mm_bready           : std_logic := '0';
    signal sig_wresp_sfifo_in        : std_logic_vector(WRESP_SFIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_wresp_sfifo_out       : std_logic_vector(WRESP_SFIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_wresp_sfifo_wr_valid  : std_logic := '0';
    signal sig_wresp_sfifo_wr_ready  : std_logic := '0';
    signal sig_wresp_sfifo_wr_full   : std_logic := '0';
    signal sig_wresp_sfifo_rd_valid  : std_logic := '0';
    signal sig_wresp_sfifo_rd_ready  : std_logic := '0';
    signal sig_wresp_sfifo_rd_empty  : std_logic := '0';
    signal sig_halt_reg              : std_logic := '0';
    signal sig_halt_reg_dly1         : std_logic := '0';
    signal sig_halt_reg_dly2         : std_logic := '0';
    signal sig_halt_reg_dly3         : std_logic := '0';
    signal sig_addr_posted_cntr      : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_posted_cntr_eq_0 : std_logic := '0';
    signal sig_addr_posted_cntr_eq_1 : std_logic := '0';
    signal sig_addr_posted_cntr_max  : std_logic := '0';
    signal sig_decr_addr_posted_cntr : std_logic := '0';
    signal sig_incr_addr_posted_cntr : std_logic := '0';
    signal sig_no_posted_cmds        : std_logic := '0';
    signal sig_addr_posted           : std_logic := '0';
    signal sig_all_cmds_done         : std_logic := '0';
    signal sig_wsc2stat_status       : std_logic_vector(C_STS_WIDTH-1 downto 0) := (others => '0');
    signal sig_dcntl_sfifo_wr_valid  : std_logic := '0';
    signal sig_dcntl_sfifo_wr_ready  : std_logic := '0';
    signal sig_dcntl_sfifo_wr_full   : std_logic := '0';
    signal sig_dcntl_sfifo_rd_valid  : std_logic := '0';
    signal sig_dcntl_sfifo_rd_ready  : std_logic := '0';
    signal sig_dcntl_sfifo_rd_empty  : std_logic := '0';
    signal sig_wdc_statcnt           : unsigned(DCNTL_STATCNT_WIDTH-1 downto 0) := (others => '0');
    signal sig_incr_statcnt          : std_logic := '0';
    signal sig_decr_statcnt          : std_logic := '0';
    signal sig_statcnt_eq_max        : std_logic := '0';
    signal sig_statcnt_eq_0          : std_logic := '0';
    signal sig_statcnt_gt_eq_thres   : std_logic := '0';
    signal sig_wdc_status_going_full : std_logic := '0';
                                           
                                           
                                           
            
  begin --(architecture implementation)
  
    
    -- Assign the ready output to the AXI Write Response Channel
    s2mm_bready           <= sig_s2mm_bready or
                             sig_halt_reg;     -- force bready if a Halt is requested
    
    -- Assign the ready output to the Data Controller status interface
    wsc2data_ready        <= sig_wsc2data_ready;
    
    -- Assign the status valid output control to the Status FIFO
    wsc2stat_status_valid <= sig_status_valid ;
    
    -- Formulate the status output value to the Status FIFO
    wsc2stat_status       <=  sig_wsc2stat_status;
    
     
    -- Formulate the status write request signal
    sig_status_valid      <= sig_push_status;
    
                                           
     
    -- Indicate the desire to push a coelesced status word 
    -- to the Status FIFO
    sig_push_status       <= sig_coelsc_reg_full;
    
    
    
    -- Detect that a push of a new status word is completing
    sig_status_push_ok    <= sig_status_valid and
                             stat2wsc_status_ready; 
    
    sig_pop_coelsc_reg    <= sig_status_push_ok;
    
    
    -- Signal a halt to the execution pipe if new status
    -- is valid but the Status FIFO is not accepting it or
    -- the WDC Status FIFO is going full
    wsc2mstr_halt_pipe    <= (sig_status_valid and
                             not(stat2wsc_status_ready)) or
                             sig_wdc_status_going_full;
 
    
    -- Monitor the Status capture registers to detect a 
    -- qualified Status set and push to the coelescing register
    -- when available to do so
    sig_push_coelsc_reg   <= sig_valid_status_rdy and 
                             sig_coelsc_reg_empty;
    
    sig_valid_status_rdy  <= (sig_wresp_sfifo_rd_valid and 
                              sig_dcntl_sfifo_rd_valid) or
                             (sig_data_err_reg and
                              sig_dcntl_sfifo_rd_valid);     
          
 
 
    -- Decode the AXI MMap Read Respose       
    sig_decerr  <= '1'
      When sig_bresp_reg = DECERR
      Else '0'; 
           
    sig_slverr  <= '1'
      When sig_bresp_reg = SLVERR
      Else '0';      
          
    
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_TAG_LE_STAT
    --
    -- If Generate Description:
    -- Populates the TAG bits into the availble Status bits when
    -- the TAG width is less than or equal to the available number
    -- of bits in the Status word. 
    --
    ------------------------------------------------------------
    GEN_TAG_LE_STAT : if (TAG_WIDTH <= STAT_REG_TAG_WIDTH) generate
    
       -- local signals
         signal lsig_temp_tag_small : std_logic_vector(STAT_REG_TAG_WIDTH-1 downto 0) := (others => '0');
         
         
       begin
    
         sig_tag2status <= lsig_temp_tag_small;
         
         
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: POPULATE_SMALL_TAG
         --
         -- Process Description:
         --
         --
         -------------------------------------------------------------
         POPULATE_SMALL_TAG : process (sig_coelsc_tag_reg)
            begin
         
              -- Set default value
              lsig_temp_tag_small <= (others => '0');
          
              -- Now overload actual TAG bits
              lsig_temp_tag_small(TAG_WIDTH-1 downto 0) <= sig_coelsc_tag_reg;
          
         
            end process POPULATE_SMALL_TAG; 
         
         
       end generate GEN_TAG_LE_STAT;
     
     
     
     
     
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_TAG_GT_STAT
    --
    -- If Generate Description:
    -- Populates the TAG bits into the availble Status bits when
    -- the TAG width is greater than the available number of 
    -- bits in the Status word. The upper bits of the TAG are 
    -- clipped off (discarded). 
    --
    ------------------------------------------------------------
    GEN_TAG_GT_STAT : if (TAG_WIDTH > STAT_REG_TAG_WIDTH) generate
    
       -- local signals
         signal lsig_temp_tag_big : std_logic_vector(STAT_REG_TAG_WIDTH-1 downto 0) := (others => '0');
         
         
       begin
    
         
         sig_tag2status <= lsig_temp_tag_big;
         
         
         -------------------------------------------------------------
         -- Combinational Process
         --
         -- Label: POPULATE_BIG_TAG
         --
         -- Process Description:
         --
         --
         -------------------------------------------------------------
         POPULATE_SMALL_TAG : process (sig_coelsc_tag_reg)
            begin
         
              -- Set default value
              lsig_temp_tag_big <= (others => '0');
          
              -- Now overload actual TAG bits
              lsig_temp_tag_big <= sig_coelsc_tag_reg(STAT_REG_TAG_WIDTH-1 downto 0);
          
         
            end process POPULATE_SMALL_TAG; 
         
         
       end generate GEN_TAG_GT_STAT;
     
     
     
    
    
    
    
    
    
    
    
    
     
     
    
    
    
    -------------------------------------------------------------------------
    -- Write Response Channel input FIFO and logic
    
                        
    -- BRESP is the only fifo data
    sig_wresp_sfifo_in       <=  s2mm_bresp;     
    
    
    -- The fifo output is already in the right format
    sig_bresp_reg            <=  sig_wresp_sfifo_out;
    
    
    -- Write Side assignments
    sig_wresp_sfifo_wr_valid <=  s2mm_bvalid;
    
    sig_s2mm_bready          <=  sig_wresp_sfifo_wr_ready;
    
    
    -- read Side ready assignment
    sig_wresp_sfifo_rd_ready <=  sig_push_coelsc_reg;
    
    
    
    ------------------------------------------------------------
    -- Instance: I_WRESP_STATUS_FIFO 
    --
    -- Description:
    -- Instance for the AXI Write Response FIFO
    --
    ------------------------------------------------------------
     I_WRESP_STATUS_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
     generic map (
   
       C_DWIDTH             =>  WRESP_SFIFO_WIDTH         ,  
       C_DEPTH              =>  WRESP_SFIFO_DEPTH         ,  
       C_IS_ASYNC           =>  SYNC_FIFO_SELECT          ,  
       C_PRIM_TYPE          =>  SRL_FIFO_TYPE             ,  
       C_FAMILY             =>  C_FAMILY                     
      
       )
     port map (
       
       -- Write Clock and reset
       fifo_wr_reset        =>   mmap_reset               ,  
       fifo_wr_clk          =>   primary_aclk             ,  
       
       -- Write Side
       fifo_wr_tvalid       =>   sig_wresp_sfifo_wr_valid ,  
       fifo_wr_tready       =>   sig_wresp_sfifo_wr_ready ,  
       fifo_wr_tdata        =>   sig_wresp_sfifo_in       ,  
       fifo_wr_full         =>   sig_wresp_sfifo_wr_full  ,  
      
      
       -- Read Clock and reset (not used in Sync mode)
       fifo_async_rd_reset  =>   mmap_reset               ,    
       fifo_async_rd_clk    =>   primary_aclk             ,  
       
       -- Read Side
       fifo_rd_tvalid       =>   sig_wresp_sfifo_rd_valid ,  
       fifo_rd_tready       =>   sig_wresp_sfifo_rd_ready ,  
       fifo_rd_tdata        =>   sig_wresp_sfifo_out      ,  
       fifo_rd_empty        =>   sig_wresp_sfifo_rd_empty    
      
       );
   

    
    
    
    
    
    --------  Write Data Controller Status FIFO Going Full Logic -------------
    
    
    sig_incr_statcnt   <= sig_dcntl_sfifo_wr_valid and
                          sig_dcntl_sfifo_wr_ready;
    
    sig_decr_statcnt   <= sig_dcntl_sfifo_rd_valid and
                          sig_dcntl_sfifo_rd_ready;
    
          
    sig_statcnt_eq_max <= '1'
      when (sig_wdc_statcnt = DCNTL_STATCNT_MAX)
      Else '0';
          
    sig_statcnt_eq_0   <= '1'
      when (sig_wdc_statcnt = DCNTL_STATCNT_ZERO)
      Else '0';
          
    sig_statcnt_gt_eq_thres <= '1'
      when (sig_wdc_statcnt >= DCNTL_HALT_THRES)
      Else '0';
          
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_WDC_GOING_FULL_FLOP
    --
    -- Process Description:
    --  Implements a flop for the WDC Status FIFO going full flag.
    --
    -------------------------------------------------------------
    IMP_WDC_GOING_FULL_FLOP : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then
    
             sig_wdc_status_going_full <= '0';
           
           else
    
             sig_wdc_status_going_full <= sig_statcnt_gt_eq_thres;
    
           end if; 
        end if;       
      end process IMP_WDC_GOING_FULL_FLOP; 
    
          
          
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_DCNTL_FIFO_CNTR
    --
    -- Process Description:
    --   Implements a simple counter keeping track of the number
    -- of entries in the WDC Status FIFO. If the Status FIFO gets
    -- too full, the S2MM Data Pipe has to be halted.
    --
    -------------------------------------------------------------
    IMP_DCNTL_FIFO_CNTR : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then
    
             sig_wdc_statcnt <= (others => '0');
    
           elsif (sig_incr_statcnt   = '1' and 
                  sig_decr_statcnt   = '0' and
                  sig_statcnt_eq_max = '0') then
    
             sig_wdc_statcnt <= sig_wdc_statcnt + DCNTL_STATCNT_ONE;
    
           elsif (sig_incr_statcnt = '0' and 
                  sig_decr_statcnt = '1' and
                  sig_statcnt_eq_0 = '0') then
    
             sig_wdc_statcnt <= sig_wdc_statcnt - DCNTL_STATCNT_ONE;
    
           else
    
             null; -- Hold current count value
    
           end if; 
        end if;       
      end process IMP_DCNTL_FIFO_CNTR; 
          
          
          
          
          
          
          
          
          
          
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_OMIT_STORE_FORWARD
    --
    -- If Generate Description:
    --  Implements the logic needed when Store and Forward is
    -- not enabled in the S2MM function.
    --
    ------------------------------------------------------------
    GEN_OMIT_STORE_FORWARD : if (C_ENABLE_STORE_FORWARD = 0) generate
    
       -- Local Constants
       Constant DCNTL_SFIFO_WIDTH           : integer := STAT_REG_TAG_WIDTH+3;
       Constant DCNTL_SFIFO_CMD_CMPLT_INDEX : integer := 0;
       Constant DCNTL_SFIFO_TLAST_ERR_INDEX : integer := 1;
       Constant DCNTL_SFIFO_CALC_ERR_INDEX  : integer := 2;
       Constant DCNTL_SFIFO_TAG_INDEX       : integer := DCNTL_SFIFO_CALC_ERR_INDEX+1;
    
       
       -- local signals
       signal sig_dcntl_sfifo_in        : std_logic_vector(DCNTL_SFIFO_WIDTH-1 downto 0) := (others => '0');
       signal sig_dcntl_sfifo_out       : std_logic_vector(DCNTL_SFIFO_WIDTH-1 downto 0) := (others => '0');
    
    
       begin
    
       
         sig_wsc2stat_status       <=  sig_coelsc_okay_reg    &   
                                       sig_coelsc_slverr_reg  &
                                       sig_coelsc_decerr_reg  & 
                                       sig_coelsc_interr_reg  &
                                       sig_tag2status;
         
         
         
         -----------------------------------------------------------------------------
         -- Data Controller Status FIFO and Logic
         
         
         -- Concatonate Input bits to build Dcntl fifo data word
         sig_dcntl_sfifo_in      <=  data2wsc_tag        &   -- bit 3 to tag Width+2
                                     data2wsc_calc_error &   -- bit 2
                                     data2wsc_last_error &   -- bit 1
                                     data2wsc_cmd_cmplt  ;   -- bit 0
         
                       
         -- Rip the DCntl fifo outputs back to constituant pieces              
         sig_data_tag_reg        <= sig_dcntl_sfifo_out((DCNTL_SFIFO_TAG_INDEX+STAT_REG_TAG_WIDTH)-1 downto
                                                        DCNTL_SFIFO_TAG_INDEX);
                                                        
         sig_data_err_reg        <= sig_dcntl_sfifo_out(DCNTL_SFIFO_CALC_ERR_INDEX) ;
         
         sig_data_last_err_reg   <= sig_dcntl_sfifo_out(DCNTL_SFIFO_TLAST_ERR_INDEX);
         
         sig_data_cmd_cmplt_reg  <= sig_dcntl_sfifo_out(DCNTL_SFIFO_CMD_CMPLT_INDEX);
        
         
         
         -- Data Control Valid/Ready assignments
         sig_dcntl_sfifo_wr_valid <= data2wsc_valid     ;
         
         sig_wsc2data_ready       <= sig_dcntl_sfifo_wr_ready; 
         
         
         
         -- read side ready assignment
         sig_dcntl_sfifo_rd_ready <= sig_push_coelsc_reg;
               
                                                  
         
         ------------------------------------------------------------
         -- Instance: I_DATA_CNTL_STATUS_FIFO 
         --
         -- Description:
         -- Instance for the Command Qualifier FIFO
         --
         ------------------------------------------------------------
          I_DATA_CNTL_STATUS_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
          generic map (
        
            C_DWIDTH             =>  DCNTL_SFIFO_WIDTH         , 
            C_DEPTH              =>  DCNTL_SFIFO_DEPTH         , 
            C_IS_ASYNC           =>  SYNC_FIFO_SELECT          , 
            C_PRIM_TYPE          =>  SRL_FIFO_TYPE             , 
            C_FAMILY             =>  C_FAMILY                    
           
            )
          port map (
            
            -- Write Clock and reset
            fifo_wr_reset        =>   mmap_reset               , 
            fifo_wr_clk          =>   primary_aclk             , 
            
            -- Write Side
            fifo_wr_tvalid       =>   sig_dcntl_sfifo_wr_valid , 
            fifo_wr_tready       =>   sig_dcntl_sfifo_wr_ready , 
            fifo_wr_tdata        =>   sig_dcntl_sfifo_in       , 
            fifo_wr_full         =>   sig_dcntl_sfifo_wr_full  , 
           
           
            -- Read Clock and reset (not used in Sync mode)
            fifo_async_rd_reset  =>   mmap_reset               ,   
            fifo_async_rd_clk    =>   primary_aclk             , 
            
            -- Read Side
            fifo_rd_tvalid       =>   sig_dcntl_sfifo_rd_valid , 
            fifo_rd_tready       =>   sig_dcntl_sfifo_rd_ready , 
            fifo_rd_tdata        =>   sig_dcntl_sfifo_out      , 
            fifo_rd_empty        =>   sig_dcntl_sfifo_rd_empty   
           
            );
        

         
         
         
            
            
       
       
         -------------------------------------------------------------
         -- Synchronous Process with Sync Reset
         --
         -- Label: STATUS_COELESC_REG
         --
         -- Process Description:
         --   Implement error status coelescing register. 
         -- Once a bit is set it will remain set until the overall 
         -- status is written to the Status FIFO. 
         -- Tag bits are just registered at each valid dbeat.
         --
         -------------------------------------------------------------
         STATUS_COELESC_REG : process (primary_aclk)
            begin
              if (primary_aclk'event and primary_aclk = '1') then
                 if (mmap_reset         = '1' or
                     sig_pop_coelsc_reg = '1') then
                   
                   sig_coelsc_tag_reg       <= (others => '0');
                   sig_coelsc_interr_reg    <= '0';
                   sig_coelsc_decerr_reg    <= '0';
                   sig_coelsc_slverr_reg    <= '0';
                   sig_coelsc_okay_reg      <= '1'; -- set back to default of "OKAY"
       
                   sig_coelsc_reg_full      <= '0';
                   sig_coelsc_reg_empty     <= '1';
       
       
                   
                 Elsif (sig_push_coelsc_reg = '1') Then
                 
                   sig_coelsc_tag_reg       <= sig_data_tag_reg;                             
                   sig_coelsc_interr_reg    <= sig_data_err_reg      or 
                                               sig_data_last_err_reg or 
                                               sig_coelsc_interr_reg;
                   sig_coelsc_decerr_reg    <= not(sig_data_err_reg) and 
                                               (sig_decerr           or 
                                                sig_coelsc_decerr_reg);
                   sig_coelsc_slverr_reg    <= not(sig_data_err_reg) and 
                                               (sig_slverr           or 
                                                sig_coelsc_slverr_reg);
                   sig_coelsc_okay_reg      <= not(sig_decerr            or 
                                                   sig_coelsc_decerr_reg or
                                                   sig_slverr            or 
                                                   sig_coelsc_slverr_reg or
                                                   sig_data_err_reg      or
                                                   sig_data_last_err_reg or    
                                                   sig_coelsc_interr_reg      
                                                   );
       
                   sig_coelsc_reg_full      <= sig_data_cmd_cmplt_reg;
                   sig_coelsc_reg_empty     <= not(sig_data_cmd_cmplt_reg);
                                                 
                   
                 else
                   
                   null;  -- hold current state
                   
                 end if; 
              end if;       
            end process STATUS_COELESC_REG; 
       
       
       
       
       
       
       end generate GEN_OMIT_STORE_FORWARD;
    
    
    
    
    
    
    
    
    
    
    
   

    
    
    
    
    
    
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_ENABLE_STORE_FORWARD
    --
    -- If Generate Description:
    --  Implements the logic needed when Store and Forward is
    -- enabled in the S2MM function. Primary difference is the
    -- addition to the reported status of the End of Packet 
    -- marker (EOP) and the received byte count for the parent 
    -- command.
    --
    ------------------------------------------------------------
    GEN_ENABLE_STORE_FORWARD : if (C_ENABLE_STORE_FORWARD = 1) generate
    
       -- Local Constants
       Constant SF_DCNTL_SFIFO_WIDTH         : integer := TAG_WIDTH +
                                                          C_SF_BYTES_RCVD_WIDTH + 3;
       Constant SF_SFIFO_LS_TAG_INDEX        : integer := 0;
       Constant SF_SFIFO_MS_TAG_INDEX        : integer := SF_SFIFO_LS_TAG_INDEX + (TAG_WIDTH-1);
       Constant SF_SFIFO_CALC_ERR_INDEX      : integer := SF_SFIFO_MS_TAG_INDEX+1;
       Constant SF_SFIFO_CMD_CMPLT_INDEX     : integer := SF_SFIFO_CALC_ERR_INDEX+1;
       Constant SF_SFIFO_LS_BYTES_RCVD_INDEX : integer := SF_SFIFO_CMD_CMPLT_INDEX+1;
       Constant SF_SFIFO_MS_BYTES_RCVD_INDEX : integer := SF_SFIFO_LS_BYTES_RCVD_INDEX+
                                                          (C_SF_BYTES_RCVD_WIDTH-1);
       Constant SF_SFIFO_EOP_INDEX           : integer := SF_SFIFO_MS_BYTES_RCVD_INDEX+1;
       Constant BYTES_RCVD_FIELD_WIDTH       : integer := 23;
       
       
       -- local signals
       signal sig_dcntl_sfifo_in        : std_logic_vector(SF_DCNTL_SFIFO_WIDTH-1 downto 0) := (others => '0');
       signal sig_dcntl_sfifo_out       : std_logic_vector(SF_DCNTL_SFIFO_WIDTH-1 downto 0) := (others => '0');
       signal sig_data_bytes_rcvd       : std_logic_vector(C_SF_BYTES_RCVD_WIDTH-1 downto 0) := (others => '0');
       signal sig_data_eop              : std_logic := '0';
       signal sig_coelsc_bytes_rcvd     : std_logic_vector(C_SF_BYTES_RCVD_WIDTH-1 downto 0) := (others => '0');
       signal sig_coelsc_eop            : std_logic := '0';
       signal sig_coelsc_bytes_rcvd_pad : std_logic_vector(BYTES_RCVD_FIELD_WIDTH-1 downto 0) := (others => '0');
 
    
       begin
    
       
                                                                
         sig_wsc2stat_status     <=  sig_coelsc_eop            &
                                     sig_coelsc_bytes_rcvd_pad &
                                     sig_coelsc_okay_reg       &   
                                     sig_coelsc_slverr_reg     &
                                     sig_coelsc_decerr_reg     & 
                                     sig_coelsc_interr_reg     &
                                     sig_tag2status;
         
            
         
         
         -----------------------------------------------------------------------------
         -- Data Controller Status FIFO and Logic


     
         
         -- Concatonate Input bits to build Dcntl fifo input data word
         sig_dcntl_sfifo_in      <=  data2wsc_eop        & -- ms bit
                                     data2wsc_bytes_rcvd & -- bit 7 to C_SF_BYTES_RCVD_WIDTH+7  
                                     data2wsc_cmd_cmplt  & -- bit 6 
                                     data2wsc_calc_error & -- bit 4  
                                     data2wsc_tag;         -- bits 0 to 3
                       
                       
         -- Rip the DCntl fifo outputs back to constituant pieces              
         
         sig_data_eop            <= sig_dcntl_sfifo_out(SF_SFIFO_EOP_INDEX);
         
         sig_data_bytes_rcvd     <= sig_dcntl_sfifo_out(SF_SFIFO_MS_BYTES_RCVD_INDEX downto 
                                                        SF_SFIFO_LS_BYTES_RCVD_INDEX);
         
         sig_data_cmd_cmplt_reg  <= sig_dcntl_sfifo_out(SF_SFIFO_CMD_CMPLT_INDEX);
          
         sig_data_err_reg        <= sig_dcntl_sfifo_out(SF_SFIFO_CALC_ERR_INDEX);
         
         sig_data_tag_reg        <= sig_dcntl_sfifo_out(SF_SFIFO_MS_TAG_INDEX downto 
                                                        SF_SFIFO_LS_TAG_INDEX) ;
         
         
         
         
         -- Data Control Valid/Ready assignments
         sig_dcntl_sfifo_wr_valid <= data2wsc_valid ;
         
         sig_wsc2data_ready       <= sig_dcntl_sfifo_wr_ready; 
         
         
         
         -- read side ready assignment
         sig_dcntl_sfifo_rd_ready <= sig_push_coelsc_reg;
               
                                                  
         
         ------------------------------------------------------------
         -- Instance: I_SF_DATA_CNTL_STATUS_FIFO 
         --
         -- Description:
         -- Instance for the Command Qualifier FIFO when Store and
         -- Forward is included.
         --
         ------------------------------------------------------------
          I_SF_DATA_CNTL_STATUS_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
          generic map (
        
            C_DWIDTH             =>  SF_DCNTL_SFIFO_WIDTH      ,  
            C_DEPTH              =>  DCNTL_SFIFO_DEPTH         ,  
            C_IS_ASYNC           =>  SYNC_FIFO_SELECT          ,  
            C_PRIM_TYPE          =>  SRL_FIFO_TYPE             ,  
            C_FAMILY             =>  C_FAMILY                     
           
            )
          port map (
            
            -- Write Clock and reset
            fifo_wr_reset        =>   mmap_reset               ,  
            fifo_wr_clk          =>   primary_aclk             ,  
            
            -- Write Side
            fifo_wr_tvalid       =>   sig_dcntl_sfifo_wr_valid ,  
            fifo_wr_tready       =>   sig_dcntl_sfifo_wr_ready ,  
            fifo_wr_tdata        =>   sig_dcntl_sfifo_in       ,  
            fifo_wr_full         =>   sig_dcntl_sfifo_wr_full  ,  
           
            -- Read Clock and reset (not used in Sync mode)
            fifo_async_rd_reset  =>   mmap_reset               ,     
            fifo_async_rd_clk    =>   primary_aclk             ,   
            
            -- Read Side
            fifo_rd_tvalid       =>   sig_dcntl_sfifo_rd_valid ,  
            fifo_rd_tready       =>   sig_dcntl_sfifo_rd_ready ,  
            fifo_rd_tdata        =>   sig_dcntl_sfifo_out      ,  
            fifo_rd_empty        =>   sig_dcntl_sfifo_rd_empty    
           
            );
        

         
         
         
            
            
       
       
         -------------------------------------------------------------
         -- Synchronous Process with Sync Reset
         --
         -- Label: SF_STATUS_COELESC_REG
         --
         -- Process Description:
         --   Implement error status coelescing register. 
         -- Once a bit is set it will remain set until the overall 
         -- status is written to the Status FIFO. 
         -- Tag bits are just registered at each valid dbeat.
         --
         -------------------------------------------------------------
         SF_STATUS_COELESC_REG : process (primary_aclk)
            begin
              if (primary_aclk'event and primary_aclk = '1') then
                 if (mmap_reset         = '1' or
                     sig_pop_coelsc_reg = '1') then
                   
                   sig_coelsc_tag_reg       <= (others => '0');
                   sig_coelsc_interr_reg    <= '0';
                   sig_coelsc_decerr_reg    <= '0';
                   sig_coelsc_slverr_reg    <= '0';
                   sig_coelsc_okay_reg      <= '1'; -- set back to default of "OKAY"
                   sig_coelsc_bytes_rcvd    <= (others => '0');
                   sig_coelsc_eop           <= '0';
      
       
                   sig_coelsc_reg_full      <= '0';
                   sig_coelsc_reg_empty     <= '1';
       
       
                   
                 Elsif (sig_push_coelsc_reg = '1') Then
                 
                   sig_coelsc_tag_reg       <= sig_data_tag_reg;                             
                   sig_coelsc_interr_reg    <= sig_data_err_reg      or 
                                               sig_coelsc_interr_reg;
                   sig_coelsc_decerr_reg    <= not(sig_data_err_reg) and 
                                               (sig_decerr           or 
                                                sig_coelsc_decerr_reg);
                   sig_coelsc_slverr_reg    <= not(sig_data_err_reg) and 
                                               (sig_slverr           or 
                                                sig_coelsc_slverr_reg);
                   sig_coelsc_okay_reg      <= not(sig_decerr            or 
                                                   sig_coelsc_decerr_reg or
                                                   sig_slverr            or 
                                                   sig_coelsc_slverr_reg or
                                                   sig_data_err_reg      or
                                                   sig_coelsc_interr_reg      
                                                   );
                   sig_coelsc_bytes_rcvd    <= sig_data_bytes_rcvd;
                   sig_coelsc_eop           <= sig_data_eop;
      
       
                   sig_coelsc_reg_full      <= sig_data_cmd_cmplt_reg;
                   sig_coelsc_reg_empty     <= not(sig_data_cmd_cmplt_reg);
                                                 
                   
                 else
                   
                   null;  -- hold current state
                   
                 end if; 
              end if;       
            end process SF_STATUS_COELESC_REG; 
       
       
       
       
       
       
         
         ------------------------------------------------------------
         -- If Generate
         --
         -- Label: SF_GEN_PAD_BYTES_RCVD
         --
         -- If Generate Description:
         --  Pad the bytes received value with zeros to fill in the 
         -- status field width.
         --
         --
         ------------------------------------------------------------
         SF_GEN_PAD_BYTES_RCVD : if (C_SF_BYTES_RCVD_WIDTH < BYTES_RCVD_FIELD_WIDTH) generate
         
           begin
            
             sig_coelsc_bytes_rcvd_pad(BYTES_RCVD_FIELD_WIDTH-1 downto 
                                       C_SF_BYTES_RCVD_WIDTH) <= (others => '0');
            
            
             sig_coelsc_bytes_rcvd_pad(C_SF_BYTES_RCVD_WIDTH-1 downto 0) <=  sig_coelsc_bytes_rcvd;
            
           
           end generate SF_GEN_PAD_BYTES_RCVD;
       
       
       
         
         
         ------------------------------------------------------------
         -- If Generate
         --
         -- Label: SF_GEN_NO_PAD_BYTES_RCVD
         --
         -- If Generate Description:
         --  No padding required for the bytes received value.
         --
         --
         ------------------------------------------------------------
         SF_GEN_NO_PAD_BYTES_RCVD : if (C_SF_BYTES_RCVD_WIDTH = BYTES_RCVD_FIELD_WIDTH) generate
         
           begin
            
               sig_coelsc_bytes_rcvd_pad <= sig_coelsc_bytes_rcvd; -- no pad required
            
           
           end generate SF_GEN_NO_PAD_BYTES_RCVD;
       
       
          
          
       
       end generate GEN_ENABLE_STORE_FORWARD;
    
    
    
    
    
    
    
    
    
    
    
   -------  Soft Shutdown Logic ------------------------------- 
    
    
  
  
   -- Address Posted Counter Logic ---------------------t-----------------
   -- Supports soft shutdown by tracking when all commited Write 
   -- transfers to the AXI Bus have had corresponding Write Status 
   -- Reponses Received.   

    
    sig_addr_posted           <= addr2wsc_addr_posted ;
    
    sig_incr_addr_posted_cntr <= sig_addr_posted      ;
    
    sig_decr_addr_posted_cntr <= sig_s2mm_bready  and
                                 s2mm_bvalid          ;
        
    sig_addr_posted_cntr_eq_0 <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_ZERO)
      Else '0';

    sig_addr_posted_cntr_eq_1 <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_ONE)
      Else '0';

    
    sig_addr_posted_cntr_max <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_MAX)
      Else '0';
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_ADDR_POSTED_FIFO_CNTR
    --
    -- Process Description:
    --    This process implements a counter for the tracking  
    -- if an Address has been posted on the AXI address channel.
    -- The counter is used to track flushing operations where all
    -- transfers committed on the AXI Address Channel have to
    --  be completed before a halt can occur.
    -------------------------------------------------------------
    IMP_ADDR_POSTED_FIFO_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_addr_posted_cntr <= ADDR_POSTED_ZERO;
              
            elsif (sig_incr_addr_posted_cntr = '1' and
                   sig_decr_addr_posted_cntr = '0' and
                   sig_addr_posted_cntr_max  = '0') then
              
              sig_addr_posted_cntr <= sig_addr_posted_cntr + ADDR_POSTED_ONE ;
              
            elsif (sig_incr_addr_posted_cntr = '0' and
                   sig_decr_addr_posted_cntr = '1' and
                   sig_addr_posted_cntr_eq_0 = '0') then
              
              sig_addr_posted_cntr <= sig_addr_posted_cntr - ADDR_POSTED_ONE ;
              
            else
              null;  -- don't change state
            end if; 
         end if;       
       end process IMP_ADDR_POSTED_FIFO_CNTR; 
 
 
    
    
    wsc2rst_stop_cmplt <= sig_all_cmds_done;
    
    
    
    
    sig_no_posted_cmds <= (sig_addr_posted_cntr_eq_0 and
                            not(addr2wsc_calc_error)) or
                           (sig_addr_posted_cntr_eq_1 and
                            addr2wsc_calc_error);
    
  
                         
    sig_all_cmds_done <=  sig_no_posted_cmds and
                          sig_halt_reg_dly3;   
                               
                               
                               
    
    
  
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG
    --
    -- Process Description:
    --   Implements the flop for capturing the Halt request from 
    -- the Reset module.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_halt_reg      <= '0';
            
-- coverage off            
            elsif (rst2wsc_stop_request = '1') then
              
              sig_halt_reg <= '1';
-- coverage on            
            
            else
              null;  -- Hold current State
            end if; 
         end if;       
       end process IMP_HALT_REQ_REG; 
  
  
   
   
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG_DLY
    --
    -- Process Description:
    --   Implements the flops for delaying the halt request by 3
    -- clocks to allow the Address Controller to halt before the
    -- Data Contoller can safely indicate it has exhausted all
    -- transfers committed to the AXI Address Channel by the Address
    -- Controller.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG_DLY : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_halt_reg_dly1 <= '0';
              sig_halt_reg_dly2 <= '0';
              sig_halt_reg_dly3 <= '0';
            
            else
              
              sig_halt_reg_dly1 <= sig_halt_reg;
              sig_halt_reg_dly2 <= sig_halt_reg_dly1;
              sig_halt_reg_dly3 <= sig_halt_reg_dly2;
            
            end if; 
         end if;       
       end process IMP_HALT_REQ_REG_DLY; 
  
  
   
      
          
          
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_wrdata_cntl.vhd
  --
  -- Description:     
  --    This file implements the AXI Master Burst Write Data Controller module.                 
  --                  
  --                  
  --                  
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_wrdata_cntl.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0 $
  -- Date:            $1/19/2011$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXI DataMover V2_00_a axi_datamover_wrdata_cntl.vhd
  --     - Disabled the sig_end_stbs_match_err detection
  -- ^^^^^^
  --
  --     DET     2/15/2011     Initial for EDk 13.2
  -- ~~~~~~
  --    -- Per CR593812
  --     - Modifications to remove unused features to improve Code coverage.
  --       Used "-- coverage off" and "-- coverage on" strings.
  -- ^^^^^^
  --
  --     DET     2/22/2011     Initial
  -- ~~~~~~
  --    -- Per CR594443
  --     - Change to allow for posted AXI Write Commands to complete before
  ---      stopping the pushes to the Write Status controller on a undrrun or
  --       overrun condition.
  -- ^^^^^^
  -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  
  library axi_master_burst_v2_0_7;
  use axi_master_burst_v2_0_7.axi_master_burst_fifo;
  use axi_master_burst_v2_0_7.axi_master_burst_strb_gen;
  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_wrdata_cntl is
    generic (
      
      C_REALIGNER_INCLUDED   : Integer range  0 to   1 :=  0;
      C_ENABLE_STORE_FORWARD : Integer range  0 to   1 :=  0;
      C_SF_BYTES_RCVD_WIDTH  : Integer range  1 to  23 :=  1;
      C_SEL_ADDR_WIDTH       : Integer range  1 to   8 :=  5;
      C_DATA_CNTL_FIFO_DEPTH : Integer range  1 to  32 :=  4;
      C_MMAP_DWIDTH          : Integer range 32 to 256 := 32;
      C_STREAM_DWIDTH        : Integer range  8 to 256 := 32;
      C_TAG_WIDTH            : Integer range  1 to   8 :=  4;
      C_FAMILY               : String                  := "virtex7"
      
      );
    port (
      
      -- Clock input
      primary_aclk         : in  std_logic;
         -- Primary synchronization clock for the Master side
         -- interface and internal logic. It is also used 
         -- for the User interface synchronization when 
         -- C_STSCMD_IS_ASYNC = 0.
  
      -- Reset input
      mmap_reset           : in  std_logic;
         -- Reset used for the internal master logic
      

     
      
      -- Soft Shutdown internal interface ---------------------------
      rst2data_stop_request : in  std_logic;
         -- Active high soft stop request to modules
      
      data2addr_stop_req    : Out std_logic;
        -- Active high signal requesting the Address Controller
        -- to stop posting commands to the AXI Read Address Channel
        
      data2rst_stop_cmplt   : Out std_logic;
        -- Active high indication that the Data Controller has completed
        -- any pending transfers committed by the Address Controller
        -- after a stop has been requested by the Reset module.
      
      
        
  
      -- Store and Forward support signals for external User logic -------------
      wr_xfer_cmplt         : Out std_logic;
        -- Active high indication that the Data Controller has completed
        -- a single write data transfer on the AXI4 Write Data Channel.
        -- This signal is escentially echos the assertion of wlast sent
        -- to the AXI4.
  
      s2mm_ld_nxt_len        : out std_logic;
        -- Active high pulse indicating a new xfer length has been queued
        -- to the WDC Cmd FIFO
        
      s2mm_wr_len            : out std_logic_vector(7 downto 0);
        -- Bus indicating the AXI LEN value associated with the xfer command
        -- loaded into the WDC Command FIFO.
     
     
     
     -- AXI Write Data Channel Skid buffer I/O  -------------------------------
     
      data2skid_saddr_lsb   : out std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0);
        -- Write DATA output to skid buffer
      
      data2skid_wdata       : Out  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);
        -- Write DATA output to skid buffer
     
      data2skid_wstrb       : Out  std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
        -- Write DATA output to skid buffer
     
      data2skid_wlast       : Out  std_logic;
        -- Write LAST output to skid buffer
     
      data2skid_wvalid      : Out  std_logic;
        -- Write VALID output to skid buffer
     
      skid2data_wready      : In  std_logic;
        -- Write READY input from skid buffer
     
 
 
     -- AXI Slave Stream In -----------------------------------
     
      s2mm_strm_wvalid   : In  std_logic;
        -- AXI Stream VALID input
               
      s2mm_strm_wready   : Out  Std_logic;
        -- AXI Stream READY Output
                               
      s2mm_strm_wdata    : In  std_logic_vector(C_STREAM_DWIDTH-1 downto 0);         
        -- AXI Stream data input
               
      s2mm_strm_wstrb    : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);         
        -- AXI Stream STRB input
               
      s2mm_strm_wlast    : In std_logic;     
        -- AXI Stream LAST input
               
      
      
      -- Stream input sideband signal from Store and Forward and/or DRE
      
      s2mm_strm_eop      : In std_logic;     
        -- Stream End of Packet marker input
               
      
      s2mm_stbs_asserted : in  std_logic_vector(7 downto 0);
        -- Indicates the number of asserted WSTRB bits for the
        -- associated input stream data beat
     
      
      -- Realigner Underrun/overrun error flag used in non Store and Forward
      -- Mode
      realign2wdc_eop_error  : In  std_logic ;
        -- asserted active high and will only clear with reset
      
      
      
                
                
                
      -- Command Calculator Interface --------------------------
      
      mstr2data_tag        : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
         -- The next command tag
      
      mstr2data_saddr_lsb  : In std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0);
         -- The next command start address LSbs to use for the write strb
         -- demux (only used if Stream data width is less than the MMap Dwidth).
      
      mstr2data_len        : In std_logic_vector(7 downto 0);
         -- The LEN value output to the Address Channel
      
      mstr2data_strt_strb  : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
         -- The starting strobe value to use for the first stream data beat
      
      mstr2data_last_strb  : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
         -- The endiing (LAST) strobe value to use for the last stream 
         -- data beat
     
      mstr2data_drr        : In std_logic;
         -- The starting tranfer of a sequence of transfers
     
      mstr2data_eof        : In std_logic;
         -- The endiing tranfer of a sequence of transfers
     
      mstr2data_sequential : In std_logic;
         -- The next sequential tranfer of a sequence of transfers
         -- spawned from a single parent command
     
      mstr2data_calc_error : In std_logic;
         -- Indication if the next command in the calculation pipe 
         -- has a calculation error 
      
      mstr2data_cmd_cmplt  : In std_logic;
         -- The final child tranfer of a parent command fetched from
         -- the Command FIFO (not necessarily an EOF command)
     
      mstr2data_cmd_valid  : In std_logic;
         -- The next command valid indication to the Data Channel 
         -- Controller for the AXI MMap 
      
      data2mstr_cmd_ready  : Out std_logic ;
         -- Indication from the Data Channel Controller that the  
         -- command is being accepted on the AXI Address 
         -- Channel 
     
      
        
      -- Address Controller Interface --------------------------
      
      addr2data_addr_posted    : In std_logic ;
         -- Indication from the Address Channel Controller to the   
         -- Data Controller that an address has been posted to the
         -- AXI Address Channel


      data2addr_data_rdy       : out std_logic;
         -- Indication that the Data Channel is ready to send the first
         -- databeat of the next command on the write data channel. 
         -- This is used for the "wait for data" feature which keeps the
         -- address controller from issuing a transfer request until the
         -- corresponding data valid is asserted on the stream input. The
         -- WDC will continue to assert the output until an assertion on 
         -- the addr2data_addr_posted is received. 
  
  
  
      
      -- Premature TLAST assertion error flag
      
      data2all_tlast_error : Out std_logic;
         -- When asserted, this indicates the data controller detected
         -- a premature TLAST assertion on the incoming data stream.
            
      
      
      -- Data Controller Halted Status
      
      data2all_dcntlr_halted : Out std_logic;
         -- When asserted, this indicates the data controller has satisfied
         -- all pending transfers queued by the Address Controller and is halted.
      
       
 
      -- Input Stream Skid Buffer Halt control
      
      data2skid_halt       : Out std_logic;
         -- The data controller asserts this output for 1 primary clock period
         -- The pulse commands the MM2S Stream skid buffer to tun off outputs
         -- at the next tlast transmission.
      
       
 
       
      -- Write Status Controller Interface --------------------------
      
      data2wsc_tag         : Out std_logic_vector(C_TAG_WIDTH-1 downto 0);
         -- The command tag
      
      data2wsc_calc_err    : Out std_logic ;
         -- Indication that the current command out from the Cntl FIFO 
         -- has a calculation error 
      
      data2wsc_last_err    : Out std_logic ;
        -- Indication that the current write transfer encountered a premature
        -- TLAST assertion on the incoming Stream Channel  
     
      data2wsc_cmd_cmplt   : Out std_logic ;
         -- Indication by the Data Channel Controller that the
         -- corresponding status is the last status for a command
         -- pulled from the command FIFO

      wsc2data_ready       : in  std_logic; 
         -- Input from the Write Status Module indicating that the 
         -- Status Reg/FIFO is ready to accept data
                        
      data2wsc_valid       : Out  std_logic; 
         -- Output to the Command/Status Module indicating that the 
         -- Data Controller has valid tag and err indicators to write
         -- to the Status module
      
      data2wsc_eop         : Out  std_logic; 
         -- Output to the Write Status Controller indicating that the 
         -- associated command status also corresponds to a End of Packet
         -- marker for the input Stream. This is only used when Store and
         -- Forward is enabled in the S2MM. 
      
      data2wsc_bytes_rcvd  : Out std_logic_vector(C_SF_BYTES_RCVD_WIDTH-1 downto 0);
         -- Output to the Write Status Controller indicating the actual
         -- number of bytes received from the Stream input for the 
         -- corresponding command status. This is only used when Store and
         -- Forward is enabled in the S2MM.
      
      
      
      wsc2mstr_halt_pipe   : In  std_logic
         -- Indication to Halt the Data and Address Command pipeline due
         -- to the Status FIFO going full or an internal error being logged

    
      
      );
  
  end entity axi_master_burst_wrdata_cntl;
  
  
  architecture implementation of axi_master_burst_wrdata_cntl  is
  
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
    
    
    -- Function declaration   ----------------------------------------
    
    
-- coverage off    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_get_dbeat_residue_width
    --
    -- Function Description:
    --  Calculates the number of Least significant bits of the BTT field
    -- that are unused for the LEN calculation
    --
    -------------------------------------------------------------------
    function funct_get_dbeat_residue_width (bytes_per_beat : integer) return integer is

      Variable temp_dbeat_residue_width : Integer := 0; -- 8-bit stream

    begin

      case bytes_per_beat is
        when 32 =>
            temp_dbeat_residue_width := 5;
        when 16 =>
            temp_dbeat_residue_width := 4;
        when 8 =>
            temp_dbeat_residue_width := 3;
        when 4 =>
            temp_dbeat_residue_width := 2;
        when 2 =>
            temp_dbeat_residue_width := 1;
        when others =>  -- assume 1-byte transfers
            temp_dbeat_residue_width := 0;
      end case;

      Return (temp_dbeat_residue_width);

    end function funct_get_dbeat_residue_width;
-- coverage on    



    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_set_cnt_width
    --
    -- Function Description:
    --    Sets a count width based on a fifo depth. A depth of 4 or less
    -- is a special case which requires a minimum count width of 3 bits.
    --
    -------------------------------------------------------------------
    function funct_set_cnt_width (fifo_depth : integer) return integer is
    
      Variable temp_cnt_width : Integer := 4;
    
    begin
    
      
      if (fifo_depth <= 4) then
      
         temp_cnt_width := 3;
      
      elsif (fifo_depth <= 8) then
      
         temp_cnt_width := 4;
      
      elsif (fifo_depth <= 16) then
      
         temp_cnt_width := 5;
      
-- coverage off      
      elsif (fifo_depth <= 32) then
      
         temp_cnt_width := 6;
      
      else  -- fifo depth <= 64
      
         temp_cnt_width := 7;
-- coverage on      
      
      end if;
      
      Return (temp_cnt_width);
       
       
    end function funct_set_cnt_width;
    
 
 
 
  
    -- Constant Declarations  --------------------------------------------
    
    Constant STRM_STRB_WIDTH        : integer := C_STREAM_DWIDTH/8;
    Constant LEN_OF_ZERO            : std_logic_vector(7 downto 0) := (others => '0');
    Constant USE_SYNC_FIFO          : integer := 0;
    Constant REG_FIFO_PRIM          : integer := 0; 
    Constant BRAM_FIFO_PRIM         : integer := 1; 
    Constant SRL_FIFO_PRIM          : integer := 2; 
    Constant FIFO_PRIM_TYPE         : integer := SRL_FIFO_PRIM; 
    Constant TAG_WIDTH              : integer := C_TAG_WIDTH;
    Constant SADDR_LSB_WIDTH        : integer := C_SEL_ADDR_WIDTH;
    Constant LEN_WIDTH              : integer := 8;
    Constant STRB_WIDTH             : integer := C_STREAM_DWIDTH/8;
    Constant DRR_WIDTH              : integer := 1;
    Constant EOF_WIDTH              : integer := 1;
    Constant CALC_ERR_WIDTH         : integer := 1;
    Constant CMD_CMPLT_WIDTH        : integer := 1;
    Constant SEQUENTIAL_WIDTH       : integer := 1;
    Constant DCTL_FIFO_WIDTH        : Integer := TAG_WIDTH        +  -- Tag field
                                                 SADDR_LSB_WIDTH  +  -- LS Address field width
                                                 LEN_WIDTH        +  -- LEN field
                                                 STRB_WIDTH       +  -- Starting Strobe field
                                                 STRB_WIDTH       +  -- Ending Strobe field
                                                 DRR_WIDTH        +  -- DRE Re-alignment Request Flag Field
                                                 EOF_WIDTH        +  -- EOF flag field
                                                 SEQUENTIAL_WIDTH +  -- Sequential command flag
                                                 CMD_CMPLT_WIDTH  +  -- Command Complete Flag
                                                 CALC_ERR_WIDTH;     -- Calc error flag
    
    Constant TAG_STRT_INDEX         : integer := 0;
    Constant SADDR_LSB_STRT_INDEX   : integer := TAG_STRT_INDEX + TAG_WIDTH;
    Constant LEN_STRT_INDEX         : integer := SADDR_LSB_STRT_INDEX + SADDR_LSB_WIDTH;
    Constant STRT_STRB_STRT_INDEX   : integer := LEN_STRT_INDEX + LEN_WIDTH;
    Constant LAST_STRB_STRT_INDEX   : integer := STRT_STRB_STRT_INDEX + STRB_WIDTH;
    Constant DRR_STRT_INDEX         : integer := LAST_STRB_STRT_INDEX + STRB_WIDTH;
    Constant EOF_STRT_INDEX         : integer := DRR_STRT_INDEX + DRR_WIDTH;
    Constant SEQUENTIAL_STRT_INDEX  : integer := EOF_STRT_INDEX + EOF_WIDTH;
    Constant CMD_CMPLT_STRT_INDEX   : integer := SEQUENTIAL_STRT_INDEX+SEQUENTIAL_WIDTH;
    Constant CALC_ERR_STRT_INDEX    : integer := CMD_CMPLT_STRT_INDEX+CMD_CMPLT_WIDTH;        
    Constant ADDR_INCR_VALUE        : integer := C_STREAM_DWIDTH/8;
    
    --Constant ADDR_POSTED_CNTR_WIDTH : integer := 5; -- Allows for 32 address entry queue
    Constant ADDR_POSTED_CNTR_WIDTH : integer := funct_set_cnt_width(C_DATA_CNTL_FIFO_DEPTH); 
    
    
    
    Constant ADDR_POSTED_ZERO       : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := (others => '0');
    Constant ADDR_POSTED_ONE        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := TO_UNSIGNED(1, ADDR_POSTED_CNTR_WIDTH);
    Constant ADDR_POSTED_MAX        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) 
                                      := (others => '1');
                    
    
    
    
    
    -- Signal Declarations  --------------------------------------------
    
    signal sig_get_next_dqual        : std_logic := '0';
    signal sig_last_mmap_dbeat       : std_logic := '0';
    signal sig_last_mmap_dbeat_reg   : std_logic := '0';
    signal sig_mmap2data_ready       : std_logic := '0';
    signal sig_data2mmap_valid       : std_logic := '0';
    signal sig_data2mmap_last        : std_logic := '0';
    signal sig_data2mmap_data        : std_logic_vector(C_STREAM_DWIDTH-1 downto 0) := (others => '0');
    signal sig_ld_new_cmd            : std_logic := '0';
    signal sig_ld_new_cmd_reg        : std_logic := '0';
    signal sig_cmd_cmplt_reg         : std_logic := '0';
    signal sig_calc_error_reg        : std_logic := '0';
    signal sig_tag_reg               : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_lsb_reg          : std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_strt_strb_reg         : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_last_strb_reg         : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_addr_posted           : std_logic := '0';
    signal sig_dqual_rdy             : std_logic := '0';
    signal sig_good_mmap_dbeat       : std_logic := '0';
    signal sig_first_dbeat           : std_logic := '0';
    signal sig_last_dbeat            : std_logic := '0';
    signal sig_single_dbeat          : std_logic := '0';
    signal sig_new_len_eq_0          : std_logic := '0';
    signal sig_dbeat_cntr            : unsigned(7 downto 0) := (others => '0');
    Signal sig_dbeat_cntr_int        : Integer range 0 to 255 := 0;
    signal sig_dbeat_cntr_eq_0       : std_logic := '0';
    signal sig_dbeat_cntr_eq_1       : std_logic := '0';
    signal sig_wsc_ready             : std_logic := '0';
    signal sig_push_to_wsc           : std_logic := '0';
    signal sig_push_to_wsc_cmplt     : std_logic := '0';
    signal sig_set_push2wsc          : std_logic := '0';
    signal sig_data2wsc_tag          : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_data2wsc_calc_err     : std_logic := '0';
    signal sig_data2wsc_last_err     : std_logic := '0';
    signal sig_data2wsc_cmd_cmplt    : std_logic := '0';
    signal sig_tlast_error           : std_logic := '0';
    signal sig_tlast_error_strbs     : std_logic := '0';
    signal sig_end_stbs_match_err    : std_logic := '0';
    signal sig_tlast_error_reg       : std_logic := '0';
    signal sig_cmd_is_eof            : std_logic := '0';
    signal sig_push_err2wsc          : std_logic := '0';
    signal sig_tlast_error_ovrrun    : std_logic := '0';
    signal sig_tlast_error_undrrun   : std_logic := '0';
    signal sig_next_tag_reg          : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_next_strt_strb_reg    : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_next_last_strb_reg    : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_next_eof_reg          : std_logic := '0';
    signal sig_next_sequential_reg   : std_logic := '0';
    signal sig_next_cmd_cmplt_reg    : std_logic := '0';
    signal sig_next_calc_error_reg   : std_logic := '0';
    signal sig_pop_dqual_reg         : std_logic := '0';
    signal sig_push_dqual_reg        : std_logic := '0';
    signal sig_dqual_reg_empty       : std_logic := '0';
    signal sig_dqual_reg_full        : std_logic := '0';
    signal sig_addr_posted_cntr      : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_posted_cntr_eq_0 : std_logic := '0';
    signal sig_addr_posted_cntr_max  : std_logic := '0';
    signal sig_decr_addr_posted_cntr : std_logic := '0';
    signal sig_incr_addr_posted_cntr : std_logic := '0';
    signal sig_addr_posted_cntr_eq_1 : std_logic := '0';
    signal sig_apc_going2zero        : std_logic := '0';
    signal sig_aposted_cntr_ready    : std_logic := '0';
    signal sig_addr_chan_rdy         : std_logic := '0';
    Signal sig_no_posted_cmds        : std_logic := '0';
    signal sig_ls_addr_cntr          : unsigned(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_incr_ls_addr_cntr     : std_logic := '0';
    signal sig_addr_incr_unsgnd      : unsigned(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    Signal sig_cmd_fifo_data_in      : std_logic_vector(DCTL_FIFO_WIDTH-1 downto 0) := (others => '0');
    Signal sig_cmd_fifo_data_out     : std_logic_vector(DCTL_FIFO_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_next_tag         : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_next_sadddr_lsb  : std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_next_len         : std_logic_vector(7 downto 0) := (others => '0');
    signal sig_fifo_next_strt_strb   : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_fifo_next_last_strb   : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_fifo_next_drr         : std_logic := '0';
    signal sig_fifo_next_eof         : std_logic := '0';
    signal sig_fifo_next_cmd_cmplt   : std_logic := '0';
    signal sig_fifo_next_sequential  : std_logic := '0';
    signal sig_fifo_next_calc_error  : std_logic := '0';
    signal sig_cmd_fifo_empty        : std_logic := '0';
    signal sig_fifo_wr_cmd_valid     : std_logic := '0';
    signal sig_fifo_wr_cmd_ready     : std_logic := '0';
    signal sig_fifo_rd_cmd_valid     : std_logic := '0';
    signal sig_fifo_rd_cmd_ready     : std_logic := '0';
    signal sig_sequential_push       : std_logic := '0';
    signal sig_clr_dqual_reg         : std_logic := '0';
    signal sig_tlast_err_stop        : std_logic := '0';
    signal sig_halt_reg              : std_logic := '0';
    signal sig_halt_reg_dly1         : std_logic := '0';
    signal sig_halt_reg_dly2         : std_logic := '0';
    signal sig_halt_reg_dly3         : std_logic := '0';
    signal sig_data2skid_halt        : std_logic := '0';
    signal sig_stop_wvalid           : std_logic := '0';
    signal sig_data2rst_stop_cmplt   : std_logic := '0';
    signal sig_s2mm_strm_wready      : std_logic := '0';
    signal sig_good_strm_dbeat       : std_logic := '0';
    signal sig_halt_strb             : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_sfhalt_next_strt_strb : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');             
    signal sig_wfd_simult_clr_set    : std_logic := '0';
    signal sig_wr_xfer_cmplt         : std_logic := '0';
    signal sig_s2mm_ld_nxt_len       : std_logic := '0';
    signal sig_s2mm_wr_len           : std_logic_vector(7 downto 0) := (others => '0');
    signal sig_data2mstr_cmd_ready   : std_logic := '0';
    
    
    
  begin --(architecture implementation)
  
    -- Command calculator handshake
    data2mstr_cmd_ready <= sig_data2mstr_cmd_ready;
    
    
    -- Write Data Channel Skid Buffer Port assignments
    sig_mmap2data_ready  <= skid2data_wready     ;
    data2skid_wvalid     <= sig_data2mmap_valid  ;
    data2skid_wlast      <= sig_data2mmap_last   ;
    data2skid_wdata      <= sig_data2mmap_data   ;
    data2skid_saddr_lsb  <= sig_addr_lsb_reg     ;
    
    -- AXI MM2S Stream Channel Port assignments           
    sig_data2mmap_data   <= s2mm_strm_wdata      ;

    
    -- Premature TLAST assertion indication
    data2all_tlast_error <= sig_tlast_error_reg  ;
    
    
    
    
   
    -- Stream Input Ready Handshake
    s2mm_strm_wready     <= sig_s2mm_strm_wready ;                                           
    
    
    
    sig_good_strm_dbeat  <= s2mm_strm_wvalid and
                            sig_s2mm_strm_wready;
    
    
    sig_data2mmap_last   <= sig_dbeat_cntr_eq_0 and
                            sig_dqual_rdy;

                      

    -- Write Status Block interface signals
    data2wsc_valid       <= sig_push_to_wsc and
                            not(sig_tlast_err_stop) ; -- only allow 1 status write on TLAST errror
    sig_wsc_ready        <= wsc2data_ready          ;
    data2wsc_tag         <= sig_data2wsc_tag        ;   
    data2wsc_calc_err    <= sig_data2wsc_calc_err   ; 
    data2wsc_last_err    <= sig_data2wsc_last_err   ; 
    data2wsc_cmd_cmplt   <= sig_data2wsc_cmd_cmplt  ;   
    
                                      
    -- Address Channel Controller synchro pulse input                  
    sig_addr_posted      <= addr2data_addr_posted;
                                                        
    
    
    -- Request to halt the Address Channel Controller                  
    data2addr_stop_req   <= sig_halt_reg or
                            sig_tlast_error_reg;
 
    
    -- Halted flag to the reset module                  
    data2rst_stop_cmplt  <= sig_data2rst_stop_cmplt;
    
    
    -- Indicate the Write Data Controller is always ready
    data2addr_data_rdy   <= '1'; 
    
    
    
    -- Write Transfer Completed Status output 
    wr_xfer_cmplt        <= sig_wr_xfer_cmplt ;
    
    -- New LEN value is being loaded 
    s2mm_ld_nxt_len      <= sig_s2mm_ld_nxt_len;
    
    -- The new LEN value
    s2mm_wr_len          <= sig_s2mm_wr_len;
    
    
     
     
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_WR_CMPLT_FLAG
    --
    -- Process Description:
    --   Implements the status flag indicating that a write data 
    -- transfer has completed. This is an echo of a wlast assertion
    -- and a qualified data beat on the AXI4 Write Data Channel.
    --
    -------------------------------------------------------------
    IMP_WR_CMPLT_FLAG : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then
    
             sig_wr_xfer_cmplt <= '0';
    
           else
    
             sig_wr_xfer_cmplt <= sig_data2mmap_last and 
                                  sig_good_strm_dbeat;
                                  
           end if; 
        end if;       
      end process IMP_WR_CMPLT_FLAG; 
     
    
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_OMIT_STORE_FORWARD
    --
    -- If Generate Description:
    --   Omits any Store and Forward Support logic and includes
    -- any error detection needed in Non Store and Forward mode.
    --
    ------------------------------------------------------------
    GEN_OMIT_STORE_FORWARD : if (C_ENABLE_STORE_FORWARD = 0) generate
    
      begin
   
       
        
        
        sig_sfhalt_next_strt_strb <= sig_fifo_next_strt_strb;
        
        
        
        
        -- Just housekeep the output port signals
        
        data2wsc_eop         <= '0';
   
        data2wsc_bytes_rcvd  <= (others => '0');
   
       
        
        
        
        -- WRSTRB logic ------------------------------
                  

        -- Generate the Write Strobes for the MMap Write Data Channel
        -- for the non Store and Forward Case
        data2skid_wstrb  <= sig_strt_strb_reg 
          When (sig_first_dbeat  = '1')
          Else  sig_last_strb_reg
          When  (sig_last_dbeat  = '1')
          Else (others => '1');

        
                 
        -- Generate the Stream Ready for the Stream input side
        sig_s2mm_strm_wready <= sig_halt_reg            or  -- force tready if a halt requested
                                (sig_mmap2data_ready    and
                                sig_addr_chan_rdy       and -- This puts combinational logic in the stream WREADY path
                                sig_dqual_rdy           and
                                not(sig_calc_error_reg) and
                                not(sig_tlast_error_reg));   -- Stop the stream channel at a overrun/underrun detection
        
         
        
        -- MMap Write Data Channel Valid Handshaking
        sig_data2mmap_valid <= (s2mm_strm_wvalid       or
                               sig_tlast_error_reg     or  -- force valid if TLAST error 
                               sig_halt_reg       )    and -- force valid if halt requested       
                               sig_addr_chan_rdy       and -- xfers are commited on the address channel and       
                               sig_dqual_rdy           and -- there are commands in the command fifo        
                               not(sig_calc_error_reg) and
                               not(sig_stop_wvalid);       -- gate off wvalid immediately after a wlast for 1 clk
                                                           -- or when the soft shutdown has completed
              
      
        
        
        
        
        
        ------------------------------------------------------------
        -- If Generate
        --
        -- Label: GEN_LOCAL_ERR_DETECT
        --
        -- If Generate Description:
        --  Implements the local overrun and underrun detection when
        -- the S2MM Realigner is not included.
        --
        --
        ------------------------------------------------------------
        GEN_LOCAL_ERR_DETECT : if (C_REALIGNER_INCLUDED = 0) generate
        
        
           begin
        
             -------  Input Stream TLAST assertion error ------------------------------- 
             
             
             sig_tlast_error_ovrrun <= sig_cmd_is_eof       and
                                       sig_dbeat_cntr_eq_0  and
                                       sig_good_mmap_dbeat  and
                                       not(s2mm_strm_wlast);
             
             
             
             sig_tlast_error_undrrun <= s2mm_strm_wlast     and
                                        sig_good_mmap_dbeat and
                                        (not(sig_dbeat_cntr_eq_0) or
                                         not(sig_cmd_is_eof));
             
             
             sig_end_stbs_match_err  <=  '0';                            -- Disable this for aAXI Master burst
                    
                    
             -- sig_end_stbs_match_err  <=  '1'                            -- Set flag if the calculated end strobe value
             --   When ((s2mm_strm_wstrb    /= sig_next_last_strb_reg) and -- does not match the received strobe value 
             --        (s2mm_strm_wlast     = '1') and                     -- at TLAST assertion
             --        (sig_good_mmap_dbeat = '1'))                        -- Qualified databeat
             --   Else '0';
                    
                                 
             sig_tlast_error <=  (sig_tlast_error_ovrrun  or
                                  sig_tlast_error_undrrun or
                                  sig_end_stbs_match_err) and  
                                  not(sig_halt_reg);              -- Suppress TLAST error when in soft shutdown 
                                 
                                 
           
           
           end generate GEN_LOCAL_ERR_DETECT;
        
        
 
 
 
        ------------------------------------------------------------
        -- If Generate
        --
        -- Label: GEN_EXTERN_ERR_DETECT
        --
        -- If Generate Description:
        --  Omits the local overrun and underrun detection and relies
        -- on the S2MM Realigner for the detection.
        --
        ------------------------------------------------------------
        GEN_EXTERN_ERR_DETECT : if (C_REALIGNER_INCLUDED = 1) generate
        
        
           begin
        
 
              sig_tlast_error_undrrun <= '0';  -- not used here
 
              sig_tlast_error_ovrrun  <= '0';  -- not used here
 
              sig_end_stbs_match_err  <= '0';  -- not used here
 
 
           
              sig_tlast_error <= realign2wdc_eop_error and  -- External error detection asserted
                                 not(sig_halt_reg);         -- Suppress TLAST error when in soft shutdown
               
               
               
           
           end generate GEN_EXTERN_ERR_DETECT;
 
 
 
 
 
 
 
        
        
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_TLAST_ERR_REG
        --
        -- Process Description:
        --  Implements a sample and hold flop for the flag indicating
        -- that the input Stream TLAST assertion was not at the expected
        -- data beat relative to the commanded number of databeats
        -- from the associated command from the SCC or PCC.
        -------------------------------------------------------------
        IMP_TLAST_ERR_REG : process (primary_aclk)
           begin
             if (primary_aclk'event and primary_aclk = '1') then
                if (mmap_reset = '1') then
                  
                  sig_tlast_error_reg <= '0';
                
                elsif (sig_tlast_error = '1') then
                  
                  sig_tlast_error_reg <= '1';
                
                else
                  null;  -- hold current state
                end if; 
             end if;       
           end process IMP_TLAST_ERR_REG; 
           
           
           
           
           
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_TLAST_ERROR_STOP
        --
        -- Process Description:
        --  Implements the flop to generate a stop flag once the TLAST
        -- error condition has been relayed to the Write Status 
        -- Controller. This stop flag is used to prevent any more 
        -- pushes to the Write Status Controller.
        --
        -- However, if transfer requests have already been posted to 
        -- the AXI bus, they must be allowed to complete before stopping. 
        -------------------------------------------------------------
        IMP_TLAST_ERROR_STOP : process (primary_aclk)
           begin
             if (primary_aclk'event and primary_aclk = '1') then
                if (mmap_reset = '1') then
                  
                  sig_tlast_err_stop <= '0';
             
             --    elsif (sig_tlast_error_reg   = '1' and
             --           sig_push_to_wsc_cmplt = '1') then
                elsif (sig_tlast_error_reg   = '1' and
                       sig_push_to_wsc_cmplt = '1' and
                       (sig_no_posted_cmds   = '1' or
                        sig_apc_going2zero   = '1')) then
                  
                  sig_tlast_err_stop <= '1';
                
                else
                  null; -- Hold State
                end if; 
             end if;       
           end process IMP_TLAST_ERROR_STOP; 
           
           
           
      
      
      
      end generate GEN_OMIT_STORE_FORWARD;
   
   












-- coverage off
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_STORE_FORWARD
    --
    -- If Generate Description:
    --   Includes any Store and Forward Support logic. Primarily
    -- this is a counter for the input stream bytes received. The
    -- received byte count is relayed to the Write Status Controller
    -- for each parent command completed.
    -- When a packet completion is indicated via the EOP marker
    -- assertion, the status to the Write Status Controller also
    -- indicates the EOP condition.
    -- Note that underrun and overrun detection/error flagging
    -- is disabled in Store and Forward Mode.
    --
    ------------------------------------------------------------
    GEN_STORE_FORWARD : if (C_ENABLE_STORE_FORWARD = 1) generate
    
      -- local constants
      Constant BYTE_CNTR_WIDTH          : integer := C_SF_BYTES_RCVD_WIDTH;
      Constant NUM_ZEROS_WIDTH          : integer := 8;
      Constant BYTES_PER_DBEAT          : integer := C_STREAM_DWIDTH/8;
      Constant STRBGEN_ADDR_SLICE_WIDTH : integer := 
                                          funct_get_dbeat_residue_width(BYTES_PER_DBEAT);
      
      -- local signals
      signal lsig_byte_cntr             : unsigned(BYTE_CNTR_WIDTH-1 downto 0) := (others => '0');
      signal lsig_byte_cntr_incr_value  : unsigned(BYTE_CNTR_WIDTH-1 downto 0) := (others => '0');
      signal lsig_ld_byte_cntr          : std_logic := '0';
      signal lsig_incr_byte_cntr        : std_logic := '0';
      signal lsig_clr_byte_cntr         : std_logic := '0';
      signal lsig_end_of_cmd_reg        : std_logic := '0';
      signal lsig_eop_s_h_reg           : std_logic := '0';
      signal lsig_eop_reg               : std_logic := '0';
      signal sig_strbgen_addr           : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
      signal sig_strbgen_bytes          : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH   downto 0) := (others => '0');
      
      
      
      
      begin
   
       
        -- Assign the outputs to the Write Status Controller
        data2wsc_eop         <= lsig_eop_reg and 
                                not(sig_next_calc_error_reg);
         
        data2wsc_bytes_rcvd  <= STD_LOGIC_VECTOR(lsig_byte_cntr);
        
 
 
        -- WRSTRB logic ------------------------------
      
      
      
        sig_strbgen_bytes <= (others => '1'); -- set to the max value
      
        sig_strbgen_addr  <= STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_fifo_next_sadddr_lsb), 
                                                     STRBGEN_ADDR_SLICE_WIDTH)) ;
      
        ------------------------------------------------------------
        -- Instance: I_STRT_STRB_GEN
        --
        -- Description:
        --  Strobe generator used to generate the starting databeat
        -- strobe value for soft shutdown case where the S2MM has to 
        -- flush out all of the transfers that have been committed
        -- to the AXI Write address channel. Starting Strobes must
        -- match the committed address offest for each transfer. 
        -- 
        ------------------------------------------------------------
        I_STRT_STRB_GEN : entity axi_master_burst_v2_0_7.axi_master_burst_strb_gen
        generic map (

          C_ADDR_MODE       =>  0                          ,  -- 0 = normal, 1 = Address only
          C_STRB_WIDTH      =>  BYTES_PER_DBEAT            ,  
          C_OFFSET_WIDTH    =>  STRBGEN_ADDR_SLICE_WIDTH   ,  
          C_NUM_BYTES_WIDTH =>  STRBGEN_ADDR_SLICE_WIDTH+1    

          )
        port map (

          start_addr_offset =>  sig_strbgen_addr           ,  
          num_valid_bytes   =>  sig_strbgen_bytes          ,  

          strb_out          =>  sig_sfhalt_next_strt_strb     

          );


      
                  
        
        -- Generate the WSTRB to use during soft shutdown 
        sig_halt_strb  <= sig_strt_strb_reg 
          When (sig_first_dbeat   = '1' or
                sig_single_dbeat  = '1')
          Else  (others => '1');

           
                  
        -- Generate the Write Strobes for the MMap Write Data Channel
        -- for the Store and Forward case. Strobes come from the Stream
        -- input from the Store and forward module during normal operation.
        -- However, during soft shutdown, those strobes become unpredictable
        -- so generated strobes have to be used.
        data2skid_wstrb <=  sig_halt_strb
          When (sig_halt_reg = '1')
        
          Else s2mm_strm_wstrb;
          
          
          
        -- Generate the Stream Ready for the Stream input side
        sig_s2mm_strm_wready <=  sig_halt_reg             or -- force tready if a halt requested
                                 (sig_mmap2data_ready    and -- MMap is accepting the xfers
                                 sig_addr_chan_rdy       and -- xfers are commited on the address channel and 
                                 sig_dqual_rdy           and -- there are commands in the command fifo        
                                 not(sig_calc_error_reg) and -- No internal error                             
                                 not(sig_stop_wvalid));      -- Gate off stream ready immediately after a wlast for 1 clk
                                                             -- or when the soft shutdown has completed
         
        
        -- MMap Write Data Channel Valid Handshaking
        sig_data2mmap_valid <= (s2mm_strm_wvalid        or -- Normal Stream input valid       
                               sig_halt_reg       )    and -- force valid if halt requested       
                               sig_addr_chan_rdy       and -- xfers are commited on the address channel and       
                               sig_dqual_rdy           and -- there are commands in the command fifo        
                               not(sig_calc_error_reg) and -- No internal error
                               not(sig_stop_wvalid);       -- Gate off wvalid immediately after a wlast for 1 clk
                                                           -- or when the soft shutdown has completed
              
      
         
        -- TLAST Error housekeeping for Store and Forward Mode
        -- There is no Underrun/overrun in Stroe and Forward mode 
         
        sig_tlast_error_ovrrun  <= '0'; -- Not used with Store and Forward
        sig_tlast_error_undrrun <= '0'; -- Not used with Store and Forward
        sig_end_stbs_match_err  <= '0'; -- Not used with Store and Forward
        sig_tlast_error         <= '0'; -- Not used with Store and Forward
        sig_tlast_error_reg     <= '0'; -- Not used with Store and Forward
        sig_tlast_err_stop      <= '0'; -- Not used with Store and Forward
        
        
        
        
        
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_EOP_REG_FLOP
        --
        -- Process Description:
        --  Register the End of Packet marker.
        --
        -------------------------------------------------------------
        IMP_EOP_REG_FLOP : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then
        
                 lsig_end_of_cmd_reg <= '0';
                 lsig_eop_reg        <= '0';
               
               
               Elsif (sig_good_strm_dbeat = '1') Then
               
        
                 lsig_end_of_cmd_reg <= sig_next_cmd_cmplt_reg and
                                        s2mm_strm_wlast;
                 
                 lsig_eop_reg        <= s2mm_strm_eop;
               
               else

                 null; -- hold current state  
                   
               end if; 
            end if;       
          end process IMP_EOP_REG_FLOP; 
        
        
        
        
 
        -----  Byte Counter Logic -----------------------------------------------
        -- The Byte counter reflects the actual byte count received on the 
        -- Stream input for each parent command loaded into the S2MM command
        -- FIFO. Thus it counts input bytes until the command complete qualifier
        -- is set and the TLAST input from the Stream input.
      
      
        lsig_clr_byte_cntr        <= lsig_end_of_cmd_reg and   -- Clear if a new stream packet does not start 
                                     not(sig_good_strm_dbeat); -- immediately after the previous one finished.    
        
     
        lsig_ld_byte_cntr         <= lsig_end_of_cmd_reg and -- Only load if a new stream packet starts       
                                     sig_good_strm_dbeat;    -- immediately after the previous one finished.       
        
        lsig_incr_byte_cntr       <= sig_good_strm_dbeat; 
        
        
        lsig_byte_cntr_incr_value <=  RESIZE(UNSIGNED(s2mm_stbs_asserted), 
                                                       BYTE_CNTR_WIDTH);
     
        -------------------------------------------------------------
        -- Synchronous Process with Sync Reset
        --
        -- Label: IMP_BYTE_CMTR
        --
        -- Process Description:
        -- Keeps a running byte count per burst packet loaded into the 
        -- xfer FIFO. It is based on the strobes set on the incoming
        -- Stream dbeat.
        --
        -------------------------------------------------------------
        IMP_BYTE_CMTR : process (primary_aclk)
           begin
             if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset         = '1' or
                   lsig_clr_byte_cntr = '1') then 

                 lsig_byte_cntr <= (others => '0');
                 
               elsif (lsig_ld_byte_cntr = '1') then

                 lsig_byte_cntr <= lsig_byte_cntr_incr_value;
                 
               elsif (lsig_incr_byte_cntr = '1') then

                 lsig_byte_cntr <= lsig_byte_cntr + lsig_byte_cntr_incr_value;
                 
               else
                 null;  -- hold current value
               end if; 
             end if;       
           end process IMP_BYTE_CMTR; 
     
     
        
 
   
      end generate GEN_STORE_FORWARD;
   
-- coverage on   
    
    
    
    
    
    
              
    
    -- Internal logic ------------------------------
    
    sig_good_mmap_dbeat  <= sig_mmap2data_ready and 
                            sig_data2mmap_valid;
    
    
    sig_last_mmap_dbeat  <= sig_good_mmap_dbeat and 
                            sig_data2mmap_last;
     
     
    sig_get_next_dqual   <= sig_last_mmap_dbeat; 
    
    
    
    
    
    
         
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: REG_LAST_DBEAT
    --
    -- Process Description:
    --   This implements a FLOP that creates a pulse
    -- indicating the LAST signal for an outgoing write data channel
    -- has been sent. Note that it is possible to have back to 
    -- back LAST databeats.
    --
    -------------------------------------------------------------
    REG_LAST_DBEAT : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then

             sig_last_mmap_dbeat_reg <= '0';
             
           else
             
             sig_last_mmap_dbeat_reg <= sig_last_mmap_dbeat;
             
           end if; 
         end if;       
       end process REG_LAST_DBEAT; 
  
 
 
 
 
    
    
    -----  Write Status Interface Stuff --------------------------
    
    sig_push_to_wsc_cmplt <= sig_push_to_wsc and sig_wsc_ready;
    
    
    sig_set_push2wsc      <= (sig_good_mmap_dbeat and
                             sig_dbeat_cntr_eq_0) or
                             sig_push_err2wsc;
                             
    
    
    
    
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_INTERR_PUSH_FLOP
    --
    -- Process Description:
    -- Generate a 1 clock wide pulse when a calc error has propagated
    -- from the Command Calculator. This pulse is used to force a 
    -- push of the error status to the Write Status Controller
    -- without a AXI transfer completion.
    --
    -------------------------------------------------------------
    IMP_INTERR_PUSH_FLOP : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset       = '1' or
                sig_push_err2wsc = '1') then
              sig_push_err2wsc <= '0';
            elsif (sig_ld_new_cmd_reg = '1' and
                   sig_calc_error_reg = '1') then
              sig_push_err2wsc <= '1';
            else
              null; -- hold state
            end if; 
         end if;       
       end process IMP_INTERR_PUSH_FLOP; 
    
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_PUSH2WSC_FLOP
    --
    -- Process Description:
    -- Implements a Sample and hold register for the outbound status
    -- signals to the Write Status Controller (WSC). This register
    -- has to support back to back transfer completions.
    --
    -------------------------------------------------------------
    IMP_PUSH2WSC_FLOP : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset             = '1'  or
               (sig_push_to_wsc_cmplt = '1'  and
                sig_set_push2wsc      = '0')) then
              
              sig_push_to_wsc        <= '0';
              sig_data2wsc_tag       <=  (others => '0');
              sig_data2wsc_calc_err  <=  '0';
              sig_data2wsc_last_err  <=  '0';
              sig_data2wsc_cmd_cmplt <=  '0';
              
            elsif (sig_set_push2wsc   = '1' and 
                   sig_tlast_err_stop = '0') then
              
              sig_push_to_wsc        <= '1';
              sig_data2wsc_tag       <= sig_tag_reg          ;
              sig_data2wsc_calc_err  <= sig_calc_error_reg   ;
              sig_data2wsc_last_err  <= sig_tlast_error_reg or 
                                        sig_tlast_error      ;
              -- sig_data2wsc_cmd_cmplt <= sig_cmd_cmplt_reg   or 
              --                           sig_tlast_error_reg or
              --                           sig_tlast_error      ;
              
              sig_data2wsc_cmd_cmplt <= sig_cmd_cmplt_reg    or 
                                        (sig_tlast_error_reg and
                                        (sig_no_posted_cmds  or
                                         sig_apc_going2zero ));
              
            else
              null;  -- hold current state
            end if; 
         end if;       
       end process IMP_PUSH2WSC_FLOP; 
     
  
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_LD_NEW_CMD_REG
    --
    -- Process Description:
    -- Registers the flag indicating a new command has been 
    -- loaded. Needs to be a 1 clk wide pulse.
    --
    -------------------------------------------------------------
    IMP_LD_NEW_CMD_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset         = '1' or
                sig_ld_new_cmd_reg = '1') then
              sig_ld_new_cmd_reg <= '0';
            else
              sig_ld_new_cmd_reg <= sig_ld_new_cmd;
            end if; 
         end if;       
       end process IMP_LD_NEW_CMD_REG; 
    
    
    
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_NXT_LEN_REG
    --
    -- Process Description:
    -- Registers the load control and length value for a command 
    -- passed to the WDC input command interface. The registered
    -- signals are used for the external Store and forward support
    -- ports.
    --
    -------------------------------------------------------------
    IMP_NXT_LEN_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset         = '1') then

              sig_s2mm_ld_nxt_len <= '0';
              sig_s2mm_wr_len     <= (others => '0');
              
            else
              sig_s2mm_ld_nxt_len <= mstr2data_cmd_valid and
                                     sig_data2mstr_cmd_ready;
              sig_s2mm_wr_len     <= mstr2data_len;
                                     
                                     
            end if; 
         end if;       
       end process IMP_NXT_LEN_REG; 
    
    
    
    
    
    
    
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_NO_DATA_CNTL_FIFO
    --
    -- If Generate Description:
     --   Omits the input data control FIFO if the requested FIFO
     -- depth is 1. The Data Qualifier Register serves as a 
     -- 1 deep FIFO by itself.
    --
    ------------------------------------------------------------
    GEN_NO_DATA_CNTL_FIFO : if (C_DATA_CNTL_FIFO_DEPTH = 1) generate
    
       
      begin

        -- Command Calculator Handshake output
        sig_data2mstr_cmd_ready <= sig_fifo_wr_cmd_ready  ;           
       
        sig_fifo_rd_cmd_valid   <= mstr2data_cmd_valid    ;
        
        sig_fifo_wr_cmd_ready  <= sig_push_dqual_reg      ;
        
        sig_fifo_next_tag         <= mstr2data_tag        ;    
        sig_fifo_next_sadddr_lsb  <= mstr2data_saddr_lsb  ;    
        sig_fifo_next_len         <= mstr2data_len        ;    
        sig_fifo_next_strt_strb   <= mstr2data_strt_strb  ;    
        sig_fifo_next_last_strb   <= mstr2data_last_strb  ;    
        sig_fifo_next_drr         <= mstr2data_drr        ;    
        sig_fifo_next_eof         <= mstr2data_eof        ;    
        sig_fifo_next_sequential  <= mstr2data_sequential ;    
        sig_fifo_next_cmd_cmplt   <= mstr2data_cmd_cmplt  ;    
        sig_fifo_next_calc_error  <= mstr2data_calc_error ;    
                                                             
             
   
      end generate GEN_NO_DATA_CNTL_FIFO;
  
  
 
    
    
    
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_DATA_CNTL_FIFO
     --
     -- If Generate Description:
     --   Includes the input data control FIFO if the requested 
     -- FIFO depth is more than 1.
     --
     ------------------------------------------------------------
     GEN_DATA_CNTL_FIFO : if (C_DATA_CNTL_FIFO_DEPTH > 1) generate

       begin

       
         -- Command Calculator Handshake output
         sig_data2mstr_cmd_ready  <= sig_fifo_wr_cmd_ready;           
         
         sig_fifo_wr_cmd_valid    <= mstr2data_cmd_valid  ;
         
         
         -- pop the fifo when dqual reg is pushed
         sig_fifo_rd_cmd_ready    <= sig_push_dqual_reg;     
                                                               

         
         
                              
         -- Format the input fifo data word
         sig_cmd_fifo_data_in  <=   mstr2data_calc_error &
                                    mstr2data_cmd_cmplt  &
                                    mstr2data_sequential &
                                    mstr2data_eof        &
                                    mstr2data_drr        &
                                    mstr2data_last_strb  &
                                    mstr2data_strt_strb  &
                                    mstr2data_len        &
                                    mstr2data_saddr_lsb  &
                                    mstr2data_tag ;
         
          
         -- Rip the output fifo data word
         sig_fifo_next_tag        <= sig_cmd_fifo_data_out((TAG_STRT_INDEX+TAG_WIDTH)-1 downto 
                                                            TAG_STRT_INDEX);                   
         sig_fifo_next_sadddr_lsb <= sig_cmd_fifo_data_out((SADDR_LSB_STRT_INDEX+SADDR_LSB_WIDTH)-1 downto 
                                                            SADDR_LSB_STRT_INDEX);
         sig_fifo_next_len        <= sig_cmd_fifo_data_out((LEN_STRT_INDEX+LEN_WIDTH)-1 downto 
                                                            LEN_STRT_INDEX);
         sig_fifo_next_strt_strb  <= sig_cmd_fifo_data_out((STRT_STRB_STRT_INDEX+STRB_WIDTH)-1 downto 
                                                            STRT_STRB_STRT_INDEX);
         sig_fifo_next_last_strb  <= sig_cmd_fifo_data_out((LAST_STRB_STRT_INDEX+STRB_WIDTH)-1 downto 
                                                            LAST_STRB_STRT_INDEX);
         sig_fifo_next_drr        <= sig_cmd_fifo_data_out(DRR_STRT_INDEX);
         sig_fifo_next_eof        <= sig_cmd_fifo_data_out(EOF_STRT_INDEX);
         sig_fifo_next_sequential <= sig_cmd_fifo_data_out(SEQUENTIAL_STRT_INDEX);
         sig_fifo_next_cmd_cmplt  <= sig_cmd_fifo_data_out(CMD_CMPLT_STRT_INDEX);
         sig_fifo_next_calc_error <= sig_cmd_fifo_data_out(CALC_ERR_STRT_INDEX);

         
         
         
         ------------------------------------------------------------
         -- Instance: I_DATA_CNTL_FIFO 
         --
         -- Description:
         -- Instance for the Command Qualifier FIFO
         --
         ------------------------------------------------------------
          I_DATA_CNTL_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
          generic map (
        
            C_DWIDTH             =>  DCTL_FIFO_WIDTH        , 
            C_DEPTH              =>  C_DATA_CNTL_FIFO_DEPTH , 
            C_IS_ASYNC           =>  USE_SYNC_FIFO          , 
            C_PRIM_TYPE          =>  FIFO_PRIM_TYPE         , 
            C_FAMILY             =>  C_FAMILY                 
           
            )
          port map (
            
            -- Write Clock and reset
            fifo_wr_reset        =>   mmap_reset            , 
            fifo_wr_clk          =>   primary_aclk          , 
            
            -- Write Side
            fifo_wr_tvalid       =>   sig_fifo_wr_cmd_valid , 
            fifo_wr_tready       =>   sig_fifo_wr_cmd_ready , 
            fifo_wr_tdata        =>   sig_cmd_fifo_data_in  , 
            fifo_wr_full         =>   open                  , 
           
           
            -- Read Clock and reset
            fifo_async_rd_reset  =>   mmap_reset            ,   
            fifo_async_rd_clk    =>   primary_aclk          , 
            
            -- Read Side
            fifo_rd_tvalid       =>   sig_fifo_rd_cmd_valid , 
            fifo_rd_tready       =>   sig_fifo_rd_cmd_ready , 
            fifo_rd_tdata        =>   sig_cmd_fifo_data_out , 
            fifo_rd_empty        =>   sig_cmd_fifo_empty      
           
            );
        

       end generate GEN_DATA_CNTL_FIFO;
         
          
    
   
  
  
  
  
  
    -- Data Qualifier Register ------------------------------------
    
    
    sig_ld_new_cmd           <= sig_push_dqual_reg              ;
    sig_dqual_rdy            <= sig_dqual_reg_full              ;
    sig_strt_strb_reg        <= sig_next_strt_strb_reg          ;
    sig_last_strb_reg        <= sig_next_last_strb_reg          ;
    sig_tag_reg              <= sig_next_tag_reg                ;
    sig_cmd_cmplt_reg        <= sig_next_cmd_cmplt_reg          ;
    sig_calc_error_reg       <= sig_next_calc_error_reg         ;
    
    sig_cmd_is_eof           <= sig_next_eof_reg                ;
    
    
    
    -- new for no bubbles between child requests
    sig_sequential_push      <= sig_good_mmap_dbeat and -- MMap handshake qualified
                                sig_last_dbeat      and -- last data beat of transfer
                                sig_next_sequential_reg;-- next queued command is sequential 
                                                        -- to the current command
    
    
    sig_push_dqual_reg       <= (sig_sequential_push    or
                                 sig_dqual_reg_empty)   and 
                                sig_fifo_rd_cmd_valid   and
                                sig_aposted_cntr_ready  and 
                                not(sig_calc_error_reg) and -- 13.1 addition => An error has not been propagated
                                not(wsc2mstr_halt_pipe);    -- The Wr Status Controller is not  
                                                            -- stalling the command execution pipe


                                                         
    sig_pop_dqual_reg         <= not(sig_next_calc_error_reg) and 
                                 sig_get_next_dqual and 
                                 sig_dqual_reg_full  ; 
    
  
    -- new for no bubbles between child requests
    sig_clr_dqual_reg        <=  mmap_reset         or
                                 (sig_pop_dqual_reg and
                                 not(sig_push_dqual_reg));
  
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_DQUAL_REG
    --
    -- Process Description:
    --    This process implements a register for the Data 
    -- Control and qualifiers. It operates like a 1 deep Sync FIFO.
    --
    -------------------------------------------------------------
    IMP_DQUAL_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (sig_clr_dqual_reg = '1') then
              
              sig_next_tag_reg         <= (others => '0');
              sig_next_strt_strb_reg   <= (others => '0');
              sig_next_last_strb_reg   <= (others => '0');
              sig_next_eof_reg         <= '0'            ;
              sig_next_sequential_reg  <= '0'            ;
              sig_next_cmd_cmplt_reg   <= '0'            ;
              sig_next_calc_error_reg  <= '0'            ;
                                                        
              sig_dqual_reg_empty      <= '1'            ;
              sig_dqual_reg_full       <= '0'            ;
                                                        
            elsif (sig_push_dqual_reg = '1') then
              
              sig_next_tag_reg        <= sig_fifo_next_tag         ;
              sig_next_strt_strb_reg  <= sig_sfhalt_next_strt_strb ;
              sig_next_last_strb_reg  <= sig_fifo_next_last_strb   ;
              sig_next_eof_reg        <= sig_fifo_next_eof         ;
              sig_next_sequential_reg <= sig_fifo_next_sequential  ;
              sig_next_cmd_cmplt_reg  <= sig_fifo_next_cmd_cmplt   ;
              sig_next_calc_error_reg <= sig_fifo_next_calc_error  ;
              
              sig_dqual_reg_empty     <= '0';
              sig_dqual_reg_full      <= '1';
              
            else
              null;  -- don't change state
            end if; 
         end if;       
       end process IMP_DQUAL_REG; 
     

  
  
  
    
    
    -- Address LS Cntr logic  --------------------------
   
    sig_addr_lsb_reg         <= STD_LOGIC_VECTOR(sig_ls_addr_cntr);
    sig_addr_incr_unsgnd     <= TO_UNSIGNED(ADDR_INCR_VALUE, C_SEL_ADDR_WIDTH);
    sig_incr_ls_addr_cntr    <= sig_good_mmap_dbeat;
    
   
   
   
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: DO_ADDR_LSB_CNTR
    --
    -- Process Description:
    --  Implements the LS Address Counter used for controlling
    -- the Write STRB  DeMux during Burst transfers
    --
    -------------------------------------------------------------
    DO_ADDR_LSB_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset         = '1' or
               (sig_pop_dqual_reg  = '1'and
                sig_push_dqual_reg = '0')) then                 -- Clear the Counter
              
              sig_ls_addr_cntr <= (others => '0');
            
            elsif (sig_push_dqual_reg = '1') then               -- Load the Counter
              
              sig_ls_addr_cntr <= unsigned(sig_fifo_next_sadddr_lsb);
            
            elsif (sig_incr_ls_addr_cntr = '1') then            -- Increment the Counter
              
              sig_ls_addr_cntr <= sig_ls_addr_cntr + sig_addr_incr_unsgnd;
            
            else
              null;  -- Hold Current value
            end if; 
         end if;       
       end process DO_ADDR_LSB_CNTR; 
    
    
    
    
    
    
    
    
    
    
    
    
   -- Address Posted Counter Logic --------------------------------------
   
    sig_addr_chan_rdy         <= not(sig_addr_posted_cntr_eq_0 or 
                                     sig_apc_going2zero)         ; -- Gates data channel xfer handshake
    
    sig_aposted_cntr_ready    <= not(sig_addr_posted_cntr_max)   ; -- Gates new command fetching
    
    sig_no_posted_cmds        <= sig_addr_posted_cntr_eq_0       ; -- Used for flushing cmds that are posted
    
 
 
 
    
    sig_incr_addr_posted_cntr <= sig_addr_posted         ;
    
    sig_decr_addr_posted_cntr <= sig_last_mmap_dbeat_reg ;
    
    sig_addr_posted_cntr_eq_0 <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_ZERO)
      Else '0';
    
    sig_addr_posted_cntr_max <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_MAX)
      Else '0';
    
    
    sig_addr_posted_cntr_eq_1 <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_ONE)
      Else '0';
    
    sig_apc_going2zero  <= sig_addr_posted_cntr_eq_1 and
                           sig_decr_addr_posted_cntr and
                           not(sig_incr_addr_posted_cntr);
    
    
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_ADDR_POSTED_FIFO_CNTR
    --
    -- Process Description:
    --    This process implements a counter for the tracking  
    -- if an Address has been posted on the AXI address channel.
    -- The Data Controller must wait for an address to be posted
    -- before proceeding with the corresponding data transfer on
    -- the Data Channel. The counter is also used to track flushing
    -- operations where all transfers commited on the  AXI Address
    -- Channel have to be completed before a halt can occur.
    -------------------------------------------------------------
    IMP_ADDR_POSTED_FIFO_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_addr_posted_cntr <= ADDR_POSTED_ZERO;
              
            elsif (sig_incr_addr_posted_cntr = '1' and
                   sig_decr_addr_posted_cntr = '0' and
                   sig_addr_posted_cntr_max  = '0') then
              
              sig_addr_posted_cntr <= sig_addr_posted_cntr + ADDR_POSTED_ONE ;
              
            elsif (sig_incr_addr_posted_cntr = '0' and
                   sig_decr_addr_posted_cntr = '1' and
                   sig_addr_posted_cntr_eq_0 = '0') then
              
              sig_addr_posted_cntr <= sig_addr_posted_cntr - ADDR_POSTED_ONE ;
              
            else
              null;  -- don't change state
            end if; 
         end if;       
       end process IMP_ADDR_POSTED_FIFO_CNTR; 
 
 
      
      
      
    ------- First/Middle/Last Dbeat detimination -------------------
     
     sig_new_len_eq_0 <= '1'
       When  (sig_fifo_next_len = LEN_OF_ZERO)
       else '0';
     
     
      
      
     -------------------------------------------------------------
     -- Synchronous Process with Sync Reset
     --
     -- Label: DO_FIRST_MID_LAST
     --
     -- Process Description:
     --  Implements the detection of the First/Mid/Last databeat of
     -- a transfer.
     --
     -------------------------------------------------------------
     DO_FIRST_MID_LAST : process (primary_aclk)
        begin
          if (primary_aclk'event and primary_aclk = '1') then
             if (mmap_reset = '1') then
               
               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '0';
               sig_single_dbeat  <= '0';
             
             elsif (sig_ld_new_cmd = '1') then
               
               sig_first_dbeat   <= not(sig_new_len_eq_0);
               sig_last_dbeat    <= sig_new_len_eq_0;
               sig_single_dbeat  <= sig_new_len_eq_0;
             
             Elsif (sig_dbeat_cntr_eq_1 = '1' and
                    sig_good_mmap_dbeat = '1') Then
             
               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '1';
               sig_single_dbeat  <= '0';
             
             Elsif (sig_dbeat_cntr_eq_0 = '0' and
                    sig_dbeat_cntr_eq_1 = '0' and
                    sig_good_mmap_dbeat = '1') Then
             
               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '0';
               sig_single_dbeat  <= '0';
             
             else
               null; -- hold current state
             end if; 
          end if;       
        end process DO_FIRST_MID_LAST; 
    
    
   
   
   
   -------  Data Controller Halted Indication ------------------------------- 
    
 
    data2all_dcntlr_halted <= sig_no_posted_cmds or
                              sig_calc_error_reg;
 
 
    
    
       
       
       
       
       
       
    
    
   -------  Data Beat counter logic ------------------------------- 
    
    
    
    
    
    sig_dbeat_cntr_int  <= TO_INTEGER(sig_dbeat_cntr);
    
    sig_dbeat_cntr_eq_0 <= '1'
      when (sig_dbeat_cntr_int = 0)
      Else '0';
    
    sig_dbeat_cntr_eq_1 <= '1'
      when (sig_dbeat_cntr_int = 1)
      Else '0';
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: DO_DBEAT_CNTR
    --
    -- Process Description:
    -- Implements the transfer data beat counter used to track 
    -- progress of the transfer.
    --
    -------------------------------------------------------------
    DO_DBEAT_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              sig_dbeat_cntr <= (others => '0');
            elsif (sig_ld_new_cmd = '1') then
              sig_dbeat_cntr <= unsigned(sig_fifo_next_len);
            Elsif (sig_good_mmap_dbeat = '1' and
                   sig_dbeat_cntr_eq_0 = '0') Then
              sig_dbeat_cntr <= sig_dbeat_cntr-1;
            else
              null; -- Hold current state
            end if; 
         end if;       
       end process DO_DBEAT_CNTR; 
  
  
  
  
  
  
  
  
  
  
  
  
   -------  Soft Shutdown Logic ------------------------------- 
    
    
    
    
    
    -- Formulate the soft shutdown complete flag
    sig_data2rst_stop_cmplt  <= (sig_halt_reg_dly3        and   -- Normal Mode shutdown
                                 sig_no_posted_cmds       and 
                                 not(sig_calc_error_reg)) or
                                (sig_halt_reg_dly3  and         -- Shutdown after error trap
                                 sig_calc_error_reg);
    
    
              
    
    -- Generate a gate signal to deassert the WVALID output
    -- for 1 clock cycle after a WLAST is issued. This only 
    -- occurs when in soft shutdown mode. 
    sig_stop_wvalid  <= (sig_last_mmap_dbeat_reg and
                        sig_halt_reg) or
                        sig_data2rst_stop_cmplt;
  
  
    
    
    
    -- Assign the output port skid buf control for the
    -- input Stream skid buffer
    data2skid_halt      <= sig_data2skid_halt;
    
    -- Create a 1 clock wide pulse to tell the input
    -- stream skid buffer to shut down.
    sig_data2skid_halt  <=  sig_halt_reg_dly2 and 
                            not(sig_halt_reg_dly3);
    
    
  
  
     
     
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG
    --
    -- Process Description:
    --   Implements the flop for capturing the Halt request from 
    -- the Reset module.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_halt_reg      <= '0';
            
-- coverage off            
            elsif (rst2data_stop_request = '1') then
              
              sig_halt_reg <= '1';
-- coverage on            
            
            else
              null;  -- Hold current State
            end if; 
         end if;       
       end process IMP_HALT_REQ_REG; 
  
  
   
   
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG_DLY
    --
    -- Process Description:
    --   Implements the flops for delaying the halt request by 3
    -- clocks to allow the Address Controller to halt before the
    -- Data Contoller can safely indicate it has exhausted all
    -- transfers committed to the AXI Address Channel by the Address
    -- Controller.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG_DLY : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              
              sig_halt_reg_dly1 <= '0';
              sig_halt_reg_dly2 <= '0';
              sig_halt_reg_dly3 <= '0';
            
            else
              
              sig_halt_reg_dly1 <= sig_halt_reg;
              sig_halt_reg_dly2 <= sig_halt_reg_dly1;
              sig_halt_reg_dly3 <= sig_halt_reg_dly2;
            
            end if; 
         end if;       
       end process IMP_HALT_REQ_REG_DLY; 
  
  
   
    
    
    
    
    
    
  
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_stbs_set.vhd
  --
  -- Description:     
  --    This file implements a module to count the number of strobe bits that 
  --    are asserted active high on the input strobe bus. This module does not
  --    support sparse strobe assertions (asserted strobes must be contiguous
  --    with each other).              
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_stbs_set.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0 $
  -- Date:            $1/19/2011$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXI DataMover v2_00_a axi_datamvore_stbs_set.vhd
  -- ^^^^^^
  -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
  --
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  


  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_stbs_set is
    generic (
      
      C_STROBE_WIDTH    : Integer range 1 to 32 := 8
        -- Specifies the width (in bits) ob the input strobe bus.
      
      );
    port (
      
      tstrb_in          : in  std_logic_vector(C_STROBE_WIDTH-1 downto 0);
        -- Input Strobe bus
     
      num_stbs_asserted : Out std_logic_vector(7 downto 0)
        -- Indicates the number of asserted tstrb_in bits 
     
 
      );
  
  end entity axi_master_burst_stbs_set;
  
  
  architecture implementation of axi_master_burst_stbs_set is
  
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
    
    -- Function
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_8bit_stbs_set
    --
    -- Function Description:
    --  Implements an 8-bit lookup table for calculating the number
    -- of asserted bits within an 8-bit strobe vector.
    --
    -- Note that this function assumes that asserted strobes are 
    -- contiguous with each other (no sparse strobe assertions). 
    --
    -------------------------------------------------------------------
    function funct_8bit_stbs_set (strb_8 : std_logic_vector(7 downto 0)) return unsigned is
    
      Constant ASSERTED_VALUE_WIDTH : integer := 4;-- 4 bits needed
      
      
      Variable lvar_num_set : Integer range 0 to 8 := 0;
    
    begin
    
      case strb_8 is
        
        -------  1 bit --------------------------
        when "00000001" | "00000010" | "00000100" | "00001000" | 
             "00010000" | "00100000" | "01000000" | "10000000" =>
        
          lvar_num_set := 1;
        
        
        -------  2 bit --------------------------
        when "00000011" | "00000110" | "00001100" | "00011000" | 
             "00110000" | "01100000" | "11000000"  =>
        
          lvar_num_set := 2;
        
        
        -------  3 bit --------------------------
        when "00000111" | "00001110" | "00011100" | "00111000" | 
             "01110000" | "11100000"   =>
        
          lvar_num_set := 3;
        
        
        -------  4 bit --------------------------
        when "00001111" | "00011110" | "00111100" | "01111000" | 
             "11110000"    =>
        
          lvar_num_set := 4;
        
        
        -------  5 bit --------------------------
        when "00011111" | "00111110" | "01111100" | "11111000"  =>
        
          lvar_num_set := 5;
        
        
        -------  6 bit --------------------------
        when "00111111" | "01111110" | "11111100"  =>
        
          lvar_num_set := 6;
        
        
        -------  7 bit --------------------------
        when "01111111" | "11111110"   =>
        
          lvar_num_set := 7;
        
        
        -------  8 bit --------------------------
        when "11111111"    =>
        
          lvar_num_set := 8;
        
        
        ------- all zeros or sparse strobes ------
        When others =>  
        
          lvar_num_set := 0;
        
      end case;
      
      
      Return (TO_UNSIGNED(lvar_num_set, ASSERTED_VALUE_WIDTH));
       
       
      
    end function funct_8bit_stbs_set;
    
    
    
    
    
    
    -- Constants
    
    Constant LOGIC_LOW              : std_logic := '0';
    Constant LOGIC_HIGH             : std_logic := '1';
    Constant BITS_FOR_STBS_ASSERTED : integer := 8; -- increments of 8 bits
    Constant NUM_ZEROS_WIDTH        : integer := BITS_FOR_STBS_ASSERTED;
    
    
    -- Signals
    
    signal sig_strb_input           : std_logic_vector(C_STROBE_WIDTH-1 downto 0) := (others => '0');
    signal sig_stbs_asserted        : std_logic_vector(BITS_FOR_STBS_ASSERTED-1 downto 0) := (others => '0');


    
    
  begin --(architecture implementation)
  
   
   num_stbs_asserted     <= sig_stbs_asserted;
   
   sig_strb_input        <= tstrb_in         ;
    
    
    
    
 
 
    -------------------------------------------------------------------------
    ----------------  Asserted TSTRB calculation logic  --------------------- 
    -------------------------------------------------------------------------
    
    
 
   
     
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_1_STRB
     --
     -- If Generate Description:
     --   1-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_1_STRB : if (C_STROBE_WIDTH = 1) generate
     
     
        begin
     
          -------------------------------------------------------------
          -- Combinational Process
          --
          -- Label: IMP_1BIT_STRB
          --
          -- Process Description:
          --
          --
          -------------------------------------------------------------
          IMP_1BIT_STRB : process (sig_strb_input)
             begin
          
               
               -- Concatonate the strobe to the ls bit of
               -- the asserted value
               sig_stbs_asserted <= "0000000" &
                                    sig_strb_input(0);
          
             end process IMP_1BIT_STRB; 
        
        end generate GEN_1_STRB;
   
   
   
   
   
   
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_2_STRB
     --
     -- If Generate Description:
     --   2-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_2_STRB : if (C_STROBE_WIDTH = 2) generate
     
     
        signal lsig_num_set     : integer range 0 to 2 := 0;
        signal lsig_strb_vect   : std_logic_vector(1 downto 0) := (others => '0');
        
        begin
     
          
          lsig_strb_vect <=  sig_strb_input;
          
          
          -------------------------------------------------------------
          -- Combinational Process
          --
          -- Label: IMP_2BIT_STRB
          --
          -- Process Description:
          --  Calculates the number of strobes set fo the 2-bit 
          -- strobe case
          --
          -------------------------------------------------------------
          IMP_2BIT_STRB : process (lsig_strb_vect)
             begin
              
               case lsig_strb_vect is
                 when "01" | "10" =>
                   lsig_num_set <= 1;
                 when "11" =>
                   lsig_num_set <= 2;
                 when others =>
                   lsig_num_set <= 0;
               end case;
               
             end process IMP_2BIT_STRB; 
             
          
          sig_stbs_asserted <= STD_LOGIC_VECTOR(TO_UNSIGNED(lsig_num_set,
                                                            BITS_FOR_STBS_ASSERTED));
     
        
        end generate GEN_2_STRB;
   
   
   
   
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_4_STRB
     --
     -- If Generate Description:
     --   4-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_4_STRB : if (C_STROBE_WIDTH = 4) generate
     
     
       signal lsig_strb_vect   : std_logic_vector(7 downto 0) := (others => '0');
        
       begin
     
          
         lsig_strb_vect <=  "0000" & sig_strb_input; -- make and 8-bit vector 
                                                     -- for the function call
          
          
         sig_stbs_asserted <= STD_LOGIC_VECTOR(RESIZE(funct_8bit_stbs_set(lsig_strb_vect),
                                                      BITS_FOR_STBS_ASSERTED));
     
     
       end generate GEN_4_STRB;
   
   
  
  
   
   
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_8_STRB
     --
     -- If Generate Description:
     --   8-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_8_STRB : if (C_STROBE_WIDTH = 8) generate
     
     
       signal lsig_strb_vect   : std_logic_vector(7 downto 0) := (others => '0');
        
       begin
     
          
         lsig_strb_vect <=  sig_strb_input; -- make and 8-bit vector 
                                            -- for the function call
          
          
         sig_stbs_asserted <= STD_LOGIC_VECTOR(RESIZE(funct_8bit_stbs_set(lsig_strb_vect),
                                                           BITS_FOR_STBS_ASSERTED));
     
     
       end generate GEN_8_STRB;
   
   
   
   
   
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_16_STRB
     --
     -- If Generate Description:
     --   16-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_16_STRB : if (C_STROBE_WIDTH = 16) generate
     
       Constant RESULT_BIT_WIDTH : integer := 8;
       
       signal lsig_strb_vect1    : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_strb_vect2    : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_num_in_stbs1  : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_in_stbs2  : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_total     : unsigned(RESULT_BIT_WIDTH-1 downto 0) := (others => '0');
        
       begin
     
          
         lsig_strb_vect1   <=  sig_strb_input(7 downto 0); -- make and 8-bit vector 
                                                           -- for the function call
          
         lsig_strb_vect2   <=  sig_strb_input(15 downto 8); -- make and 8-bit vector 
                                                            -- for the function call
          
          
         lsig_num_in_stbs1 <=  funct_8bit_stbs_set(lsig_strb_vect1) ;
          
         lsig_num_in_stbs2 <=  funct_8bit_stbs_set(lsig_strb_vect2) ;
          
          
         lsig_num_total    <= RESIZE(lsig_num_in_stbs1 , RESULT_BIT_WIDTH) +
                              RESIZE(lsig_num_in_stbs2 , RESULT_BIT_WIDTH);
          
          
          
         sig_stbs_asserted <= STD_LOGIC_VECTOR(lsig_num_total);
     
     
       end generate GEN_16_STRB;
   
   
   
   
   
   
   
     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_32_STRB
     --
     -- If Generate Description:
     --   32-bit strobe bus width case
     --
     --
     ------------------------------------------------------------
     GEN_32_STRB : if (C_STROBE_WIDTH = 32) generate
     
       Constant RESULT_BIT_WIDTH : integer := 8;
       
       signal lsig_strb_vect1   : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_strb_vect2   : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_strb_vect3   : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_strb_vect4   : std_logic_vector(7 downto 0) := (others => '0');
       signal lsig_num_in_stbs1 : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_in_stbs2 : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_in_stbs3 : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_in_stbs4 : unsigned(3 downto 0) := (others => '0');
       signal lsig_num_total    : unsigned(RESULT_BIT_WIDTH-1 downto 0) := (others => '0');
        
       begin
     
          
         lsig_strb_vect1   <=  sig_strb_input(7 downto 0);   -- make and 8-bit vector 
                                                       -- for the function call
          
         lsig_strb_vect2   <=  sig_strb_input(15 downto 8);  -- make and 8-bit vector 
                                                       -- for the function call
          
         lsig_strb_vect3   <=  sig_strb_input(23 downto 16); -- make and 8-bit vector 
                                                       -- for the function call
          
         lsig_strb_vect4   <=  sig_strb_input(31 downto 24); -- make and 8-bit vector 
                                                       -- for the function call
          
          
         lsig_num_in_stbs1 <=  funct_8bit_stbs_set(lsig_strb_vect1) ;
          
         lsig_num_in_stbs2 <=  funct_8bit_stbs_set(lsig_strb_vect2) ;
         
         lsig_num_in_stbs3 <=  funct_8bit_stbs_set(lsig_strb_vect3) ;
         
         lsig_num_in_stbs4 <=  funct_8bit_stbs_set(lsig_strb_vect4) ;
          
          
         lsig_num_total    <= RESIZE(lsig_num_in_stbs1 , RESULT_BIT_WIDTH) +
                              RESIZE(lsig_num_in_stbs2 , RESULT_BIT_WIDTH) +
                              RESIZE(lsig_num_in_stbs3 , RESULT_BIT_WIDTH) +
                              RESIZE(lsig_num_in_stbs4 , RESULT_BIT_WIDTH);
          
          
          
         sig_stbs_asserted <= STD_LOGIC_VECTOR(lsig_num_total);
     
     
       end generate GEN_32_STRB;
   
   
   
 
 
  
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_skid_buf.vhd
--
-- Description:     
--  Implements the AXi Skid Buffer in the Option 2 (Registerd outputs) mode.                
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_skid_buf.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_skid_buf.vhd
-- ^^^^^^
--
--     DET     2/10/2011     Initial for EDK 13.2
-- ~~~~~~
--    -- Per CR593362
--     - Removed resets from the data path of the Skid and Output registers.
-- ^^^^^^
--
--     DET     2/15/2011     Initial for EDk 13.2
-- ~~~~~~
--    -- Per CR593812
--     - Modifications to remove unused features to improve Code coverage.
--       Used "-- coverage off" and "-- coverage on" strings.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



-------------------------------------------------------------------------------

entity axi_master_burst_skid_buf is
  generic (
    C_WDATA_WIDTH : INTEGER range 8 to 512 := 32  
       --  Width of the Stream Data bus (in bits)
               
    );
  port (
    
    ---------------------------------------------------------------------------
    -- System Ports
    ---------------------------------------------------------------------------
    aclk         : In  std_logic ;                                    -- Clock input
    arst         : In  std_logic ;                                    -- Reset input
    
    ---------------------------------------------------------------------------
    -- Shutdown control (assert for 1 clk pulse)
    ---------------------------------------------------------------------------
    skid_stop    : In std_logic  ;                                    -- Stop Control
    
    ---------------------------------------------------------------------------
    -- Slave Side (Stream Data Input) 
    ---------------------------------------------------------------------------
    s_valid      : In  std_logic ;                                    -- AXI4 Slave Stream
    s_ready      : Out std_logic ;                                    -- AXI4 Slave Stream
    s_data       : In  std_logic_vector(C_WDATA_WIDTH-1 downto 0);    -- AXI4 Slave Stream
    s_strb       : In  std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0);-- AXI4 Slave Stream
    s_last       : In  std_logic ;                                    -- AXI4 Slave Stream

    ---------------------------------------------------------------------------
    -- Master Side (Stream Data Output 
    ---------------------------------------------------------------------------
    m_valid      : Out std_logic ;                                     -- AXI4 Master Stream
    m_ready      : In  std_logic ;                                     -- AXI4 Master Stream
    m_data       : Out std_logic_vector(C_WDATA_WIDTH-1 downto 0);     -- AXI4 Master Stream
    m_strb       : Out std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0); -- AXI4 Master Stream
    m_last       : Out std_logic                                       -- AXI4 Master Stream
   );

end entity axi_master_burst_skid_buf;


architecture implementation of axi_master_burst_skid_buf is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";

-- Signals decalrations -------------------------

  Signal sig_reset_reg         : std_logic := '0';
  signal sig_spcl_s_ready_set  : std_logic := '0';
  signal sig_data_skid_reg     : std_logic_vector(C_WDATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_skid_reg     : std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_skid_reg     : std_logic := '0';
  signal sig_skid_reg_en       : std_logic := '0';
  signal sig_data_skid_mux_out : std_logic_vector(C_WDATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_skid_mux_out : std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_skid_mux_out : std_logic := '0';
  signal sig_skid_mux_sel      : std_logic := '0';
  signal sig_data_reg_out      : std_logic_vector(C_WDATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_reg_out      : std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_reg_out      : std_logic := '0';
  signal sig_data_reg_out_en   : std_logic := '0';
  signal sig_m_valid_out       : std_logic := '0';
  signal sig_m_valid_dup       : std_logic := '0';
  signal sig_m_valid_comb      : std_logic := '0';
  signal sig_s_ready_out       : std_logic := '0';
  signal sig_s_ready_dup       : std_logic := '0';
  signal sig_s_ready_comb      : std_logic := '0';
  signal sig_stop_request      : std_logic := '0';
  signal sig_stopped           : std_logic := '0';
  signal sig_sready_stop       : std_logic := '0';
  signal sig_sready_early_stop : std_logic := '0';
  signal sig_sready_stop_set   : std_logic := '0';
  signal sig_sready_stop_reg   : std_logic := '0';
  signal sig_mvalid_stop_reg   : std_logic := '0';
  signal sig_mvalid_stop       : std_logic := '0';
  signal sig_mvalid_early_stop : std_logic := '0';
  signal sig_mvalid_stop_set   : std_logic := '0';
  signal sig_slast_with_stop   : std_logic := '0';
  signal sig_sstrb_stop_mask   : std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_sstrb_with_stop   : std_logic_vector((C_WDATA_WIDTH/8)-1 downto 0) := (others => '0');
  
  

 
-- Register duplication attribute assignments to control fanout
-- on handshake output signals  
  
  Attribute KEEP : string; -- declaration
  Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration
  
  Attribute KEEP of sig_m_valid_out : signal is "TRUE"; -- definition
  Attribute KEEP of sig_m_valid_dup : signal is "TRUE"; -- definition
  Attribute KEEP of sig_s_ready_out : signal is "TRUE"; -- definition
  Attribute KEEP of sig_s_ready_dup : signal is "TRUE"; -- definition
  
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_m_valid_out : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_m_valid_dup : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_s_ready_out : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_s_ready_dup : signal is "no"; 
  
  
  

begin --(architecture implementation)

   m_valid <= sig_m_valid_out;         
   s_ready <= sig_s_ready_out; 
    
   m_strb  <= sig_strb_reg_out;
   m_last  <= sig_last_reg_out;                
   m_data  <= sig_data_reg_out;    
            
  
  
  
   -- Special shutdown logic version od Slast.
   -- A halt request forces a tlast through the skig buffer
   sig_slast_with_stop <= s_last or sig_stop_request;
   sig_sstrb_with_stop <= s_strb or sig_sstrb_stop_mask;
  
  
   -- Assign the special s_ready FLOP set signal
   sig_spcl_s_ready_set <= sig_reset_reg;
  
            
   -- Generate the ouput register load enable control
   sig_data_reg_out_en <= m_ready or not(sig_m_valid_dup);

   -- Generate the skid input register load enable control
   sig_skid_reg_en     <= sig_s_ready_dup;
  
   -- Generate the skid mux select control
   sig_skid_mux_sel    <= not(sig_s_ready_dup);
   
   
   -- Skid Mux  
   sig_data_skid_mux_out <=  sig_data_skid_reg
     When (sig_skid_mux_sel = '1')
     Else  s_data;
  
   sig_strb_skid_mux_out <=  sig_strb_skid_reg
     When (sig_skid_mux_sel = '1')
     Else  sig_sstrb_with_stop;
  
   sig_last_skid_mux_out <=  sig_last_skid_reg
     When (sig_skid_mux_sel = '1')
     Else  sig_slast_with_stop;
  
   
   -- m_valid combinational logic        
   sig_m_valid_comb <= s_valid or
                      (sig_m_valid_dup and
                      (not(sig_s_ready_dup) or
                       not(m_ready)));
   
   
   
   -- s_ready combinational logic        
   sig_s_ready_comb <= m_ready or
                      (sig_s_ready_dup and
                      (not(sig_m_valid_dup) or
                       not(s_valid)));
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: REG_THE_RST
   --
   -- Process Description:
   -- Register input reset
   --
   -------------------------------------------------------------
   REG_THE_RST : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
            sig_reset_reg <= arst;
           
        end if;       
      end process REG_THE_RST; 
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: S_READY_FLOP
   --
   -- Process Description:
   -- Registers s_ready handshake signals per Skid Buffer 
   -- Option 2 scheme
   --
   -------------------------------------------------------------
   S_READY_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst                  = '1' or
               sig_sready_stop       = '1' or
               sig_sready_early_stop = '1') then  -- Special stop condition

             sig_s_ready_out  <= '0';
             sig_s_ready_dup  <= '0';
            
           Elsif (sig_spcl_s_ready_set = '1') Then
           
             sig_s_ready_out  <= '1';
             sig_s_ready_dup  <= '1';
           
           else

             sig_s_ready_out  <= sig_s_ready_comb;
             sig_s_ready_dup  <= sig_s_ready_comb;
            
           end if; 
        end if;       
      end process S_READY_FLOP; 
   
   
   
   
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: M_VALID_FLOP
   --
   -- Process Description:
   -- Registers m_valid handshake signals per Skid Buffer 
   -- Option 2 scheme
   --
   -------------------------------------------------------------
   M_VALID_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst                  = '1' or
               sig_spcl_s_ready_set  = '1' or    -- Fix from AXI DMA
               sig_mvalid_stop       = '1' or
               sig_mvalid_stop_set   = '1') then -- Special stop condition

             sig_m_valid_out  <= '0';
             sig_m_valid_dup  <= '0';
            
           else

             sig_m_valid_out  <= sig_m_valid_comb;
             sig_m_valid_dup  <= sig_m_valid_comb;
            
           end if; 
        end if;       
      end process M_VALID_FLOP; 
   
   
   
   
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: SKID_DATA_REG
   --
   -- Process Description:
   -- This process implements the skid register for the 
   -- Skid Buffer Data signals. Note that reset has been removed
   -- to reduce route of resets for very wide data buses.
   --
   -------------------------------------------------------------
   SKID_DATA_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
           if  (sig_skid_reg_en = '1') then
             
             sig_data_skid_reg <= s_data;
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process SKID_DATA_REG; 
            
            
   
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: SKID_CNTL_REG
   --
   -- Process Description:
   -- This process implements the skid registers for the 
   -- Skid Buffer control signals
   --
   -------------------------------------------------------------
   SKID_CNTL_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_strb_skid_reg <= (others => '0');
             sig_last_skid_reg <= '0';
             
           elsif (sig_skid_reg_en = '1') then
             
             sig_strb_skid_reg <= sig_sstrb_with_stop;
             sig_last_skid_reg <= sig_slast_with_stop;
             
           else
             null;  -- hold current state
           end if;
            
        end if;       
      end process SKID_CNTL_REG; 
            
            
   
            
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: OUTPUT_DATA_REG
   --
   -- Process Description:
   -- This process implements the output register for the 
   -- Skid Buffer Data signals. Note that reset has been removed
   -- to reduce route of resets for very wide data buses.
   --
   -------------------------------------------------------------
   OUTPUT_DATA_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
           if (sig_data_reg_out_en = '1') then
             
             sig_data_reg_out <= sig_data_skid_mux_out;
             
           else
             null;  -- hold current state
           end if;
            
        end if;       
      end process OUTPUT_DATA_REG; 
            
            
  
  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: OUTPUT_CNTL_REG
   --
   -- Process Description:
   -- This process implements the output registers for the 
   -- Skid Buffer Control signals.
   --
   -------------------------------------------------------------
   OUTPUT_CNTL_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst                = '1' or
               sig_mvalid_stop_reg = '1') then
             
             sig_strb_reg_out <= (others => '0');
             sig_last_reg_out <= '0';
             
           elsif (sig_data_reg_out_en = '1') then
             
             sig_strb_reg_out <= sig_strb_skid_mux_out;
             sig_last_reg_out <= sig_last_skid_mux_out;
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process OUTPUT_CNTL_REG; 
            
            
  
  
  
  
  
  
  
  
  
  
  
  
  
   -------- Special Stop Logic --------------------------------------
   
   
   sig_sready_stop        <= sig_sready_stop_reg; 
  
  
   sig_sready_early_stop  <= skid_stop; -- deassert S_READY immediately
   
  
   sig_sready_stop_set    <= sig_sready_early_stop;
   
                                     
   sig_mvalid_stop        <=  sig_mvalid_stop_reg;
                                     
                                     
   sig_mvalid_early_stop  <= sig_m_valid_dup and
                            m_ready and
                            skid_stop;
  
    
   sig_mvalid_stop_set    <=  sig_mvalid_early_stop or
                              (sig_stop_request and 
                               not(sig_m_valid_dup)) or
                              (sig_m_valid_dup and
                               m_ready         and
                               sig_stop_request);
   
   
   
                             
    
    
                                     
                                     
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_STOP_REQ_FLOP
   --
   -- Process Description:
   -- This process implements the Stop request flop. It is a 
   -- sample and hold register that can only be cleared by reset.
   --
   -------------------------------------------------------------
   IMP_STOP_REQ_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_stop_request    <= '0';
             sig_sstrb_stop_mask <= (others => '0');
             
-- coverage off           
           elsif (skid_stop = '1') then
             
             sig_stop_request    <= '1';
             sig_sstrb_stop_mask <= (others => '1');
-- coverage on           
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process IMP_STOP_REQ_FLOP; 
            
            
  
  
  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_CLR_SREADY_FLOP
   --
   -- Process Description:
   -- This process implements the flag to clear the s_ready 
   -- flop at a stop condition.
   --
   -------------------------------------------------------------
   IMP_CLR_SREADY_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_sready_stop_reg <= '0';
 
-- coverage off            
           elsif (sig_sready_stop_set  = '1') then
             
             sig_sready_stop_reg <= '1';
-- coverage on            
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process IMP_CLR_SREADY_FLOP; 
            
            
  
  
  
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: IMP_CLR_MVALID_FLOP
   --
   -- Process Description:
   -- This process implements the flag to clear the m_valid 
   -- flop at a stop condition.
   --
   -------------------------------------------------------------
   IMP_CLR_MVALID_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_mvalid_stop_reg <= '0';
             
-- coverage off            
           elsif (sig_mvalid_stop_set  = '1') then
             
             sig_mvalid_stop_reg <= '1';
-- coverage on            
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process IMP_CLR_MVALID_FLOP; 
            
            


end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_skid2mm_buf.vhd
--
-- Description:     
--  Implements the AXi Skid Buffer in the Option 2 (Registerd outputs) mode.                
--
--  This Module also provides Write Data Bus Mirroring and WSTRB
--  Demuxing to match a narrow Stream to a wider MMap Write 
--  Channel. By doing this in the skid buffer, the resource 
--  utilization of the skid buffer can be minimized by only
--  having to buffer/mux the Stream data width, not the MMap
--  Data width.   
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_skid2mm_buf.vhd
--                  |
--                  |- axi_master_burst_wr_demux.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $10/19/2009$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_skid2axi_buf.vhd
-- ^^^^^^
--
--     DET     2/10/2011     Initial for EDK 13.2
-- ~~~~~~
--    -- Per CR593362
--     - Removed resets from the data path of the Skid and Output registers.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


library axi_master_burst_v2_0_7; 
use axi_master_burst_v2_0_7.axi_master_burst_wr_demux;

-------------------------------------------------------------------------------

entity axi_master_burst_skid2mm_buf is
  generic (
    
    C_MDATA_WIDTH         : INTEGER range 32 to 256 := 32 ;
       --  Width of the MMap Write Data bus (in bits)
    C_SDATA_WIDTH         : INTEGER range 8 to 256 := 32 ;
       --  Width of the Stream Data bus (in bits)
    C_ADDR_LSB_WIDTH      : INTEGER range 1 to 8 := 5
       --  Width of the LS address bus needed to Demux the WSTRB
       
    );
  port (
    
    --------------------------------------------------------------------------
    -- System Ports
    --------------------------------------------------------------------------
    aclk         : In  std_logic ;                                          -- clock
    arst         : In  std_logic ;                                          -- reset
    
    --------------------------------------------------------------------------
    -- Slave Side (Wr Data Controller Input Side ) 
    --------------------------------------------------------------------------
    s_addr_lsb   : in  std_logic_vector(C_ADDR_LSB_WIDTH-1 downto 0);       -- Demuxing Control 
    s_valid      : In  std_logic ;                                          -- AXI4 Stream Like 
    s_ready      : Out std_logic ;                                          -- AXI4 Stream Like 
    s_data       : In  std_logic_vector(C_SDATA_WIDTH-1 downto 0);          -- AXI4 Stream Like 
    s_strb       : In  std_logic_vector((C_SDATA_WIDTH/8)-1 downto 0);      -- AXI4 Stream Like 
    s_last       : In  std_logic ;                                          -- AXI4 Stream Like 

    --------------------------------------------------------------------------
    -- Master Side (MMap Write Data Output Side) 
    --------------------------------------------------------------------------
    m_valid      : Out std_logic ;                                          -- AXI4 Stream Like
    m_ready      : In  std_logic ;                                          -- AXI4 Stream Like
    m_data       : Out std_logic_vector(C_MDATA_WIDTH-1 downto 0);          -- AXI4 Stream Like
    m_strb       : Out std_logic_vector((C_MDATA_WIDTH/8)-1 downto 0);      -- AXI4 Stream Like
    m_last       : Out std_logic                                            -- AXI4 Stream Like
    );

end entity axi_master_burst_skid2mm_buf;


architecture implementation of axi_master_burst_skid2mm_buf is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  Constant IN_DATA_WIDTH       : integer := C_SDATA_WIDTH;
  Constant MM2STRM_WIDTH_RATIO : integer := C_MDATA_WIDTH/C_SDATA_WIDTH;
  
  
-- Signals decalrations -------------------------

  Signal sig_reset_reg         : std_logic := '0';
  signal sig_spcl_s_ready_set  : std_logic := '0';
  signal sig_data_skid_reg     : std_logic_vector(IN_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_skid_reg     : std_logic_vector((C_MDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_skid_reg     : std_logic := '0';
  signal sig_skid_reg_en       : std_logic := '0';
  signal sig_data_skid_mux_out : std_logic_vector(IN_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_skid_mux_out : std_logic_vector((C_MDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_skid_mux_out : std_logic := '0';
  signal sig_skid_mux_sel      : std_logic := '0';
  signal sig_data_reg_out      : std_logic_vector(IN_DATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_strb_reg_out      : std_logic_vector((C_MDATA_WIDTH/8)-1 downto 0) := (others => '0');
  signal sig_last_reg_out      : std_logic := '0';
  signal sig_data_reg_out_en   : std_logic := '0';
  signal sig_m_valid_out       : std_logic := '0';
  signal sig_m_valid_dup       : std_logic := '0';
  signal sig_m_valid_comb      : std_logic := '0';
  signal sig_s_ready_out       : std_logic := '0';
  signal sig_s_ready_dup       : std_logic := '0';
  signal sig_s_ready_comb      : std_logic := '0';
  signal sig_mirror_data_out   : std_logic_vector(C_MDATA_WIDTH-1 downto 0) := (others => '0');
  signal sig_wstrb_demux_out   : std_logic_vector((C_MDATA_WIDTH/8)-1 downto 0) := (others => '0');
                                         
                                         
                                         
 
-- Register duplication attribute assignments to control fanout
-- on handshake output signals  
  
  Attribute KEEP : string; -- declaration
  Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration
  
  Attribute KEEP of sig_m_valid_out : signal is "TRUE"; -- definition
  Attribute KEEP of sig_m_valid_dup : signal is "TRUE"; -- definition
  Attribute KEEP of sig_s_ready_out : signal is "TRUE"; -- definition
  Attribute KEEP of sig_s_ready_dup : signal is "TRUE"; -- definition
  
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_m_valid_out : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_m_valid_dup : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_s_ready_out : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_s_ready_dup : signal is "no"; 
  
  
  

begin --(architecture implementation)

   m_valid <= sig_m_valid_out;         
   s_ready <= sig_s_ready_out; 
    
   m_strb  <= sig_strb_reg_out;
   m_last  <= sig_last_reg_out;                
   m_data  <= sig_mirror_data_out;
            
   -- Assign the special s_ready FLOP set signal
   sig_spcl_s_ready_set <= sig_reset_reg;
  
            
   -- Generate the ouput register load enable control
   sig_data_reg_out_en <= m_ready or not(sig_m_valid_dup);

   -- Generate the skid inpit register load enable control
   sig_skid_reg_en     <= sig_s_ready_dup;
  
   -- Generate the skid mux select control
   sig_skid_mux_sel    <= not(sig_s_ready_dup);
   
   
   -- Skid Mux  
   sig_data_skid_mux_out <=  sig_data_skid_reg
     When (sig_skid_mux_sel = '1')
     Else  s_data;
  
   sig_strb_skid_mux_out <=  sig_strb_skid_reg
     When (sig_skid_mux_sel = '1')
     --Else  s_strb;
     Else  sig_wstrb_demux_out;
  
   sig_last_skid_mux_out <=  sig_last_skid_reg
     When (sig_skid_mux_sel = '1')
     Else  s_last;
  
   
   -- m_valid combinational logic        
   sig_m_valid_comb <= s_valid or
                      (sig_m_valid_dup and
                      (not(sig_s_ready_dup) or
                       not(m_ready)));
   
   
   
   -- s_ready combinational logic        
   sig_s_ready_comb <= m_ready or
                      (sig_s_ready_dup and
                      (not(sig_m_valid_dup) or
                       not(s_valid)));
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: REG_THE_RST
   --
   -- Process Description:
   -- Register input reset
   --
   -------------------------------------------------------------
   REG_THE_RST : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
            sig_reset_reg <= arst;
           
        end if;       
      end process REG_THE_RST; 
   
   
   
   
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: s_ready_FLOP
   --
   -- Process Description:
   -- Registers s_ready handshake signals per Skid Buffer 
   -- Option 2 scheme
   --
   -------------------------------------------------------------
   s_ready_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then

             sig_s_ready_out  <= '0';
             sig_s_ready_dup  <= '0';
            
           Elsif (sig_spcl_s_ready_set = '1') Then
           
             sig_s_ready_out  <= '1';
             sig_s_ready_dup  <= '1';
           
           else

             sig_s_ready_out  <= sig_s_ready_comb;
             sig_s_ready_dup  <= sig_s_ready_comb;
            
           end if; 
        end if;       
      end process s_ready_FLOP; 
   
   
   
   
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: m_valid_FLOP
   --
   -- Process Description:
   -- Registers m_valid handshake signals per Skid Buffer 
   -- Option 2 scheme
   --
   -------------------------------------------------------------
   m_valid_FLOP : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst                 = '1' or
               sig_spcl_s_ready_set = '1') then -- Fix from AXI DMA

             sig_m_valid_out  <= '0';
             sig_m_valid_dup  <= '0';
            
           else

             sig_m_valid_out  <= sig_m_valid_comb;
             sig_m_valid_dup  <= sig_m_valid_comb;
            
           end if; 
        end if;       
      end process m_valid_FLOP; 
   
   
   
   
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: SKID_DATA_REG
   --
   -- Process Description:
   -- This process implements the Skid register for the 
   -- Skid Buffer Data signals.
   --
   -------------------------------------------------------------
   SKID_DATA_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
           if  (sig_skid_reg_en = '1') then
             
             sig_data_skid_reg <= s_data;
             
           else
             null;  -- hold current state
           end if;
            
        end if;       
      end process SKID_DATA_REG; 
            
            
   
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: SKID_CNTL_REG
   --
   -- Process Description:
   -- This process implements the Output registers for the 
   -- Skid Buffer Control signals
   --
   -------------------------------------------------------------
   SKID_CNTL_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_strb_skid_reg <= (others => '0');
             sig_last_skid_reg <= '0';
             
           elsif (sig_skid_reg_en = '1') then
             
             sig_strb_skid_reg <= sig_wstrb_demux_out;
             sig_last_skid_reg <= s_last;
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process SKID_CNTL_REG; 
            
            
   
            
            
            
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: OUTPUT_DATA_REG
   --
   -- Process Description:
   -- This process implements the Output register for the 
   -- Data signals.
   --
   -------------------------------------------------------------
   OUTPUT_DATA_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           
           if (sig_data_reg_out_en = '1') then
             
             sig_data_reg_out <= sig_data_skid_mux_out;
             
           else
             null;  -- hold current state
           end if;
            
        end if;       
      end process OUTPUT_DATA_REG; 
            
            
 
   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: OUTPUT_CNTL_REG
   --
   -- Process Description:
   -- This process implements the Output registers for the 
   -- control signals.
   --
   -------------------------------------------------------------
   OUTPUT_CNTL_REG : process (aclk)
      begin
        if (aclk'event and aclk = '1') then
           if (arst = '1') then
             
             sig_strb_reg_out <= (others => '0');
             sig_last_reg_out <= '0';
             
           elsif (sig_data_reg_out_en = '1') then
             
             sig_strb_reg_out <= sig_strb_skid_mux_out;
             sig_last_reg_out <= sig_last_skid_mux_out;
             
           else
             null;  -- hold current state
           end if; 
        end if;       
      end process OUTPUT_CNTL_REG; 
            
            
 
 
 
 
 
 
   -------------------------------------------------------------
   -- Combinational Process
   --
   -- Label: DO_WR_DATA_MIRROR
   --
   -- Process Description:
   -- Implement the Write Data Mirror structure
   -- 
   -- Note that it is required that the Stream Width be less than
   -- or equal to the MMap WData width.
   --
   -------------------------------------------------------------
   DO_WR_DATA_MIRROR : process (sig_data_reg_out)
      begin
   
        for slice_index in 0 to MM2STRM_WIDTH_RATIO-1 loop
        
          sig_mirror_data_out(((C_SDATA_WIDTH*slice_index)+C_SDATA_WIDTH)-1 
                              downto C_SDATA_WIDTH*slice_index)
                              
                              <= sig_data_reg_out;
        
        end loop;
 
   
      end process DO_WR_DATA_MIRROR; 
   
 
 
 
 
        
    ------------------------------------------------------------
    -- Instance: I_WSTRB_DEMUX 
    --
    -- Description:
    -- Instance for the Write Strobe DeMux.    
    --
    ------------------------------------------------------------
     I_WSTRB_DEMUX : entity axi_master_burst_v2_0_7.axi_master_burst_wr_demux
     generic map (
      
       C_SEL_ADDR_WIDTH     =>  C_ADDR_LSB_WIDTH   ,  
       C_MMAP_DWIDTH        =>  C_MDATA_WIDTH      ,  
       C_STREAM_DWIDTH      =>  C_SDATA_WIDTH         
      
       )
     port map (
   
       wstrb_in             =>  s_strb              , 
       demux_wstrb_out      =>  sig_wstrb_demux_out ,        
       debeat_saddr_lsb     =>  s_addr_lsb            
   
       );
   
 
 

end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_rd_status_cntl.vhd
--
-- Description:     
--    This file implements the AXI Master Burst Read Status Controller.                 
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_rd_status_cntl.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI datamover v2_00_a axi_datamover_rd_status_cntl.vhd
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


-------------------------------------------------------------------------------

entity axi_master_burst_rd_status_cntl is
  generic (
    
    C_STS_WIDTH          : Integer               := 8;
    C_TAG_WIDTH          : Integer range  1 to 8 := 4
    
    );
  port (
    
    -- Clock input
    primary_aclk           : in  std_logic;
       -- Primary synchronization clock for the Master side
       -- interface and internal logic. It is also used 
       -- for the User interface synchronization when 
       -- C_STSCMD_IS_ASYNC = 0.

    -- Reset input
    mmap_reset             : in  std_logic;
       -- Reset used for the internal master logic
    
    
    
              
              
    -- Command Calculator Interface --------------------------
   
    calc2rsc_calc_error    : in std_logic ;
       -- Indication from the Command Calculator that a calculation
       -- error has occured.  
   
   
   
    
      
    -- Address Controller Status --------------------------
    
    addr2rsc_calc_error    : In std_logic ;
       -- Indication from the Data Channel Controller FIFO that it
       -- is empty (no commands pending)

    addr2rsc_fifo_empty    : In std_logic ;
       -- Indication from the Address Controller FIFO that it
       -- is empty (no commands pending)

                  
                  
                  
    --  Data Controller Status --------------------------
    
    data2rsc_tag           : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The command tag
    
    data2rsc_calc_error    : In std_logic ;
       -- Indication from the Data Channel Controller FIFO that it
       -- is empty (no commands pending)

    data2rsc_okay          : In std_logic ;
       -- Indication that the AXI Read transfer completed with OK status 
    
    data2rsc_decerr        : In std_logic ;
       -- Indication that the AXI Read transfer completed with decode error status 
    
    data2rsc_slverr        : In std_logic ;
       -- Indication that the AXI Read transfer completed with slave error status 
    
    data2rsc_cmd_cmplt     : In std_logic ;
       -- Indication by the Data Channel Controller that the
       -- corresponding status is the last status for a parent command
       -- pulled from the command FIFO

    rsc2data_ready         : Out  std_logic; 
       -- Handshake bit from the Read Status Controller Module indicating  
       -- that the it is ready to accept a new Read status transfer
                      
    data2rsc_valid         : in  std_logic ;
       -- Handshake bit output to the Read Status Controller Module  
       -- indicating that the Data Controller has valid tag and status 
       -- indicators to transfer


    
    -- Command/Status Interface --------------------------
    
    rsc2stat_status        : Out std_logic_vector(C_STS_WIDTH-1 downto 0);
       -- Read Status value collected during a Read Data transfer
       -- Output to the Command/Status Module 
    
    stat2rsc_status_ready  : In  std_logic; 
       -- Input from the Command/Status Module indicating that the 
       -- Status Reg/FIFO is ready to accept a transfer
                      
    rsc2stat_status_valid  : Out std_logic ;                  
       -- Control Signal to the Status Reg/FIFO indicating a new status 
       -- output value is valid and ready for transfer


  
  
    -- Address and Data Controller Pipe halt --------------------------
    
    rsc2mstr_halt_pipe     : Out std_logic
       -- Indication to Halt the Data and Address Command pipeline due
       -- to the Status FIFO going full or an internal error being logged


    );

end entity axi_master_burst_rd_status_cntl;


architecture implementation of axi_master_burst_rd_status_cntl is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  -- Constant Declarations  --------------------------------------------
  
  Constant OKAY               : std_logic_vector(1 downto 0) := "00";
  Constant EXOKAY             : std_logic_vector(1 downto 0) := "01";
  Constant SLVERR             : std_logic_vector(1 downto 0) := "10";
  Constant DECERR             : std_logic_vector(1 downto 0) := "11";
  Constant STAT_RSVD          : std_logic_vector(3 downto 0) := "0000";
  Constant TAG_WIDTH          : integer := C_TAG_WIDTH;
  Constant STAT_REG_TAG_WIDTH : integer := 4;
  
  
  -- Signal Declarations  --------------------------------------------
  
  signal sig_tag2status            : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_rsc2status_valid      : std_logic := '0';
  signal sig_rsc2data_ready        : std_logic := '0';
  signal sig_rd_sts_okay_reg       : std_logic := '0';
  signal sig_rd_sts_interr_reg     : std_logic := '0';
  signal sig_rd_sts_decerr_reg     : std_logic := '0';
  signal sig_rd_sts_slverr_reg     : std_logic := '0';
  signal sig_rd_sts_tag_reg        : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_pop_rd_sts_reg        : std_logic := '0';
  signal sig_push_rd_sts_reg       : std_logic := '0';
  Signal sig_rd_sts_push_ok        : std_logic := '0';
  signal sig_rd_sts_reg_empty      : std_logic := '0';
  signal sig_rd_sts_reg_full       : std_logic := '0';
  
  
  
  
  
          
begin --(architecture implementation)

  -- Assign the status write output control
  rsc2stat_status_valid  <= sig_rsc2status_valid ;
  
  sig_rsc2status_valid   <= sig_rd_sts_reg_full;
  
                                         
  -- Formulate the status outout value (assumes an 8-bit status width)
  rsc2stat_status        <=  sig_rd_sts_okay_reg    &   
                             sig_rd_sts_slverr_reg  &
                             sig_rd_sts_decerr_reg  & 
                             sig_rd_sts_interr_reg  &
                             sig_tag2status;
  
  -- Detect that a push of a new status word is completing
  sig_rd_sts_push_ok   <= sig_rsc2status_valid and 
                          stat2rsc_status_ready;
  
  -- Signal a halt to the execution pipe if new status
  -- is valid but the Status FIFO is not accepting it
  rsc2mstr_halt_pipe   <=  sig_rsc2status_valid and
                           (not(stat2rsc_status_ready) ); 
 
  
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_TAG_LE_STAT
  --
  -- If Generate Description:
  -- Populates the TAG bits into the availble Status bits when
  -- the TAG width is less than or equal to the available number
  -- of bits in the Status word. 
  --
  ------------------------------------------------------------
  GEN_TAG_LE_STAT : if (TAG_WIDTH <= STAT_REG_TAG_WIDTH) generate
  
     -- local signals
       signal lsig_temp_tag_small : std_logic_vector(STAT_REG_TAG_WIDTH-1 downto 0) := (others => '0');
       
       
     begin
  
       sig_tag2status <= lsig_temp_tag_small;
       
       
       
       -------------------------------------------------------------
       -- Combinational Process
       --
       -- Label: POPULATE_SMALL_TAG
       --
       -- Process Description:
       --
       --
       -------------------------------------------------------------
       POPULATE_SMALL_TAG : process (sig_rd_sts_tag_reg)
          begin
       
            -- Set default value
            lsig_temp_tag_small <= (others => '0');
        
            -- Now overload actual TAG bits
            lsig_temp_tag_small(TAG_WIDTH-1 downto 0) <= sig_rd_sts_tag_reg;
        
       
          end process POPULATE_SMALL_TAG; 
       
       
     end generate GEN_TAG_LE_STAT;
   
   
   
   
   
  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_TAG_GT_STAT
  --
  -- If Generate Description:
  -- Populates the TAG bits into the availble Status bits when
  -- the TAG width is greater than the available number of 
  -- bits in the Status word. The upper bits of the TAG are 
  -- clipped off (discarded). 
  --
  ------------------------------------------------------------
  GEN_TAG_GT_STAT : if (TAG_WIDTH > STAT_REG_TAG_WIDTH) generate
  
     -- local signals
       signal lsig_temp_tag_big : std_logic_vector(STAT_REG_TAG_WIDTH-1 downto 0);
       
       
     begin
  
       
       sig_tag2status <= lsig_temp_tag_big;
       
       
       -------------------------------------------------------------
       -- Combinational Process
       --
       -- Label: POPULATE_BIG_TAG
       --
       -- Process Description:
       --
       --
       -------------------------------------------------------------
       POPULATE_SMALL_TAG : process (sig_rd_sts_tag_reg)
          begin
       
            -- Set default value
            lsig_temp_tag_big <= (others => '0');
        
            -- Now overload actual TAG bits
            lsig_temp_tag_big <= sig_rd_sts_tag_reg(STAT_REG_TAG_WIDTH-1 downto 0);
        
       
          end process POPULATE_SMALL_TAG; 
       
       
     end generate GEN_TAG_GT_STAT;
   
   
   
   
   
        
 ------- Read Status Collection Logic --------------------------------       
  
  rsc2data_ready      <=  sig_rsc2data_ready ;
  
  sig_rsc2data_ready  <= sig_rd_sts_reg_empty;
  
  
  sig_push_rd_sts_reg <= data2rsc_valid and
                         sig_rsc2data_ready;
        
  sig_pop_rd_sts_reg  <= sig_rd_sts_push_ok;
  
  
        
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: RD_STATUS_FIFO_REG
  --
  -- Process Description:
  --   Implement Read status FIFO register. 
  -- This register holds the Read status from the Data Controller
  -- until it is transfered to the Status FIFO.
  --
  -------------------------------------------------------------
  RD_STATUS_FIFO_REG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset         = '1' or
              sig_pop_rd_sts_reg = '1') then
            
            sig_rd_sts_tag_reg       <= (others => '0');
            sig_rd_sts_interr_reg    <= '0';
            sig_rd_sts_decerr_reg    <= '0';
            sig_rd_sts_slverr_reg    <= '0';
            sig_rd_sts_okay_reg      <= '1'; -- set back to default of "OKAY"

            sig_rd_sts_reg_full      <= '0';
            sig_rd_sts_reg_empty     <= '1';


            
          Elsif (sig_push_rd_sts_reg = '1') Then
          
            sig_rd_sts_tag_reg       <= data2rsc_tag;                             
            sig_rd_sts_interr_reg    <= data2rsc_calc_error or 
                                        sig_rd_sts_interr_reg;
            sig_rd_sts_decerr_reg    <= data2rsc_decerr or sig_rd_sts_decerr_reg;
            sig_rd_sts_slverr_reg    <= data2rsc_slverr or sig_rd_sts_slverr_reg;
            sig_rd_sts_okay_reg      <= data2rsc_okay and 
                                        not(data2rsc_decerr          or 
                                            sig_rd_sts_decerr_reg    or
                                            data2rsc_slverr          or 
                                            sig_rd_sts_slverr_reg    or
                                            data2rsc_calc_error      or
                                            sig_rd_sts_interr_reg      
                                            );
            
            sig_rd_sts_reg_full      <= data2rsc_cmd_cmplt or
                                        data2rsc_calc_error;
            sig_rd_sts_reg_empty     <= not(data2rsc_cmd_cmplt or
                                            data2rsc_calc_error);
                                          
          else
            
            null;  -- hold current state
            
          end if; 
       end if;       
     end process RD_STATUS_FIFO_REG; 
    
  
  
  
  
        
        
        

end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_rddata_cntl.vhd
  --
  -- Description:
  --    This file implements the AXI Master Burst Read Data Controller module.
  --
  --
  --
  --
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:
  --              axi_master_burst_rddata_cntl.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0$
  -- Date:            $1/19/2011$
  --
  -- History:
  --
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from DataMover v2_00_a axi_datamover_rddata_cntl.vhd
  -- ^^^^^^
  --
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --    -- See CR590244 for DataMover
  --     - Added additional check on the pop of the status coelscing register.
  --       THis is needed to handle the case of a simultaneous push and pop of
  --       the coelescing register.
  -- ^^^^^^
  --
  --     DET     2/15/2011     Initial for EDk 13.2
  -- ~~~~~~
  --    -- Per CR593812
  --     - Modifications to remove unused features to improve Code coverage.
  --       Used "-- coverage off" and "-- coverage on" strings.
  -- ^^^^^^
  -- ~~~~~~
  --       Fixed CR #688186
  -- ^^^^^^
 -- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
 -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;


  library axi_master_burst_v2_0_7;
  use axi_master_burst_v2_0_7.axi_master_burst_rdmux;
  use axi_master_burst_v2_0_7.axi_master_burst_fifo;


  -------------------------------------------------------------------------------

  entity axi_master_burst_rddata_cntl is
    generic (

      C_INCLUDE_DRE          : Integer range  0 to   1 :=  0;
      C_ALIGN_WIDTH          : Integer range  1 to   3 :=  3;
      C_SEL_ADDR_WIDTH       : Integer range  1 to   8 :=  5;
      C_DATA_CNTL_FIFO_DEPTH : Integer range  1 to  32 :=  4;
      C_MMAP_DWIDTH          : Integer range 32 to 256 := 32;
      C_STREAM_DWIDTH        : Integer range  8 to 256 := 32;
      C_TAG_WIDTH            : Integer range  1 to   8 :=  4;
      C_FAMILY               : String                  := "virtex7"

      );
    port (

      -- Clock input
      primary_aclk          : in  std_logic;
         -- Primary synchronization clock for the Master side
         -- interface and internal logic. It is also used
         -- for the User interface synchronization when
         -- C_STSCMD_IS_ASYNC = 0.

      -- Reset input
      mmap_reset            : in  std_logic;
         -- Reset used for the internal master logic



      -- Soft Shutdown internal interface ---------------------------
      rst2data_stop_request : in  std_logic;
         -- Active high soft stop request to modules

      data2addr_stop_req    : Out std_logic;
        -- Active high signal requesting the Address Controller
        -- to stop posting commands to the AXI Read Address Channel

      data2rst_stop_cmplt   : Out std_logic;
        -- Active high indication that the Data Controller has completed
        -- any pending transfers committed by the Address Controller
        -- after a stop has been requested by the Reset module.



      -- External Address Pipelining Contol support
      mm2s_rd_xfer_cmplt    : out std_logic;
        -- Active high indication that the Data Controller has completed
        -- a single read data transfer on the AXI4 Read Data Channel.
        -- This signal escentially echos the assertion of rlast received
        -- from the AXI4.




     -- AXI Read Data Channel I/O  ----------------------------------

      mm2s_rdata            : In  std_logic_vector(C_MMAP_DWIDTH-1 downto 0);
        -- AXI Read data input

      mm2s_rresp            : In  std_logic_vector(1 downto 0);
        -- AXI Read response input

      mm2s_rlast            : In  std_logic;
        -- AXI Read LAST input

      mm2s_rvalid           : In  std_logic;
        -- AXI Read VALID input

      mm2s_rready           : Out std_logic;
        -- AXI Read data READY output




     -- MM2S DRE Control  -------------------------------------------

      mm2s_dre_new_align      : Out std_logic;
        -- Active high signal indicating new DRE aligment required

      mm2s_dre_use_autodest   : Out std_logic;
        -- Active high signal indicating to the DRE to use an auto-
        -- calculated desination alignment based on the last transfer

      mm2s_dre_src_align      : Out std_logic_vector(C_ALIGN_WIDTH-1 downto 0);
        -- Bit field indicating the byte lane of the first valid data byte
        -- being sent to the DRE

      mm2s_dre_dest_align     : Out std_logic_vector(C_ALIGN_WIDTH-1 downto 0);
        -- Bit field indicating the desired byte lane of the first valid data byte
        -- to be output by the DRE

      mm2s_dre_flush          : Out std_logic;
        -- Active high signal indicating to the DRE to flush the current
        -- contents to the output register in preparation of a new alignment
        -- that will be comming on the next transfer input




     -- AXI Master Stream  ------------------------------------------

      mm2s_strm_wvalid   : Out std_logic;
        -- AXI Stream VALID Output

      mm2s_strm_wready   : In  Std_logic;
        -- AXI Stream READY input

      mm2s_strm_wdata    : Out std_logic_vector(C_STREAM_DWIDTH-1 downto 0);
        -- AXI Stream data output

      mm2s_strm_wstrb    : Out std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
        -- AXI Stream STRB output

      mm2s_strm_wlast    : Out std_logic;
        -- AXI Stream LAST output




      -- Command Calculator Interface --------------------------

      mstr2data_tag        : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
         -- The next command tag

      mstr2data_saddr_lsb  : In std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0);
         -- The next command start address LSbs to use for the read data
         -- mux (only used if Stream data width is 8 or 16 bits).

      mstr2data_len        : In std_logic_vector(7 downto 0);
         -- The LEN value output to the Address Channel

      mstr2data_strt_strb  : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
         -- The starting strobe value to use for the first stream data beat

      mstr2data_last_strb  : In std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
         -- The endiing (LAST) strobe value to use for the last stream
         -- data beat

      mstr2data_drr        : In std_logic;
         -- The starting tranfer of a sequence of transfers

      mstr2data_eof        : In std_logic;
         -- The endiing tranfer of a sequence of transfers

      mstr2data_sequential : In std_logic;
         -- The next sequential tranfer of a sequence of transfers
         -- spawned from a single parent command

      mstr2data_calc_error : In std_logic;
         -- Indication if the next command in the calculation pipe
         -- has a calculation error

      mstr2data_cmd_cmplt  : In std_logic;
         -- The indication to the Data Channel that the current
         -- sub-command output is the last one compiled from the
         -- parent command pulled from the Command FIFO

      mstr2data_cmd_valid  : In std_logic;
         -- The next command valid indication to the Data Channel
         -- Controller for the AXI MMap

      data2mstr_cmd_ready  : Out std_logic ;
         -- Indication from the Data Channel Controller that the
         -- command is being accepted on the AXI Address Channel

      mstr2data_dre_src_align   : In std_logic_vector(C_ALIGN_WIDTH-1 downto 0);
         -- The source (input) alignment for the DRE

      mstr2data_dre_dest_align  : In std_logic_vector(C_ALIGN_WIDTH-1 downto 0);
         -- The destinstion (output) alignment for the DRE





      -- Address Controller Interface --------------------------

      addr2data_addr_posted : In std_logic ;
         -- Indication from the Address Channel Controller to the
         -- Data Controller that an address has been posted to the
         -- AXI Address Channel



      -- Data Controller General Halted Status

      data2all_dcntlr_halted : Out std_logic;
         -- When asserted, this indicates the data controller has satisfied
         -- all pending transfers queued by the Address Controller and is halted.



      -- Output Stream Skid Buffer Halt control

      data2skid_halt : Out std_logic;
         -- The data controller asserts this output for 1 primary clock period
         -- The pulse commands the MM2S Stream skid buffer to tun off outputs
         -- at the next tlast transmission.




      -- Read Status Controller Interface --------------------------

      data2rsc_tag       : Out std_logic_vector(C_TAG_WIDTH-1 downto 0);
         -- The propagated command tag from the Command Calculator

      data2rsc_calc_err  : Out std_logic ;
         -- Indication that the current command out from the Cntl FIFO
         -- has a propagated calculation error from the Command Calculator

      data2rsc_okay      : Out std_logic ;
         -- Indication that the AXI Read transfer completed with OK status

      data2rsc_decerr    : Out std_logic ;
         -- Indication that the AXI Read transfer completed with decode error status

      data2rsc_slverr    : Out std_logic ;
         -- Indication that the AXI Read transfer completed with slave error status

      data2rsc_cmd_cmplt : Out std_logic ;
         -- Indication by the Data Channel Controller that the
         -- corresponding status is the last status for a parent command
         -- pulled from the command FIFO

      rsc2data_ready     : in  std_logic;
         -- Handshake bit from the Read Status Controller Module indicating
         -- that the it is ready to accept a new Read status transfer

      data2rsc_valid     : Out  std_logic ;
         -- Handshake bit output to the Read Status Controller Module
         -- indicating that the Data Controller has valid tag and status
         -- indicators to transfer

      rsc2mstr_halt_pipe : In std_logic
         -- Status Flag indicating the Status Controller needs to stall the command
         -- execution pipe due to a Status flow issue or internal error. Generally
         -- this will occur if the Status FIFO is not being serviced fast enough to
         -- keep ahead of the command execution.

      );

  end entity axi_master_burst_rddata_cntl;


  architecture implementation of axi_master_burst_rddata_cntl is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


    -- Function declaration   ----------------------------------------



    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_set_cnt_width
    --
    -- Function Description:
    --    Sets a count width based on a fifo depth. A depth of 4 or less
    -- is a special case which requires a minimum count width of 3 bits.
    --
    -------------------------------------------------------------------
    function funct_set_cnt_width (fifo_depth : integer) return integer is

      Variable temp_cnt_width : Integer := 4;

    begin


      if (fifo_depth <= 4) then

         temp_cnt_width := 3;

      elsif (fifo_depth <= 8) then

         temp_cnt_width := 4;

      elsif (fifo_depth <= 16) then

         temp_cnt_width := 5;

-- coverage off
      elsif (fifo_depth <= 32) then

         temp_cnt_width := 6;

      else  -- fifo depth <= 64

         temp_cnt_width := 7;

-- coverage on
      end if;

      Return (temp_cnt_width);


    end function funct_set_cnt_width;





    -- Constant Declarations  --------------------------------------------

    Constant OKAY                   : std_logic_vector(1 downto 0) := "00";
    Constant EXOKAY                 : std_logic_vector(1 downto 0) := "01";
    Constant SLVERR                 : std_logic_vector(1 downto 0) := "10";
    Constant DECERR                 : std_logic_vector(1 downto 0) := "11";

    Constant STRM_STRB_WIDTH        : integer := C_STREAM_DWIDTH/8;
    Constant LEN_OF_ZERO            : std_logic_vector(7 downto 0) := (others => '0');
    Constant USE_SYNC_FIFO          : integer := 0;
    Constant REG_FIFO_PRIM          : integer := 0;
    Constant BRAM_FIFO_PRIM         : integer := 1;
    Constant SRL_FIFO_PRIM          : integer := 2;
    Constant FIFO_PRIM_TYPE         : integer := SRL_FIFO_PRIM;
    Constant TAG_WIDTH              : integer := C_TAG_WIDTH;
    Constant SADDR_LSB_WIDTH        : integer := C_SEL_ADDR_WIDTH;
    Constant LEN_WIDTH              : integer := 8;
    Constant STRB_WIDTH             : integer := C_STREAM_DWIDTH/8;
    Constant SOF_WIDTH              : integer := 1;
    Constant EOF_WIDTH              : integer := 1;
    Constant CMD_CMPLT_WIDTH        : integer := 1;
    Constant SEQUENTIAL_WIDTH       : integer := 1;
    Constant CALC_ERR_WIDTH         : integer := 1;
    Constant DRE_ALIGN_WIDTH        : integer := C_ALIGN_WIDTH;

    Constant DCTL_FIFO_WIDTH        : Integer := TAG_WIDTH        +  -- Tag field
                                                 SADDR_LSB_WIDTH  +  -- LS Address field width
                                                 LEN_WIDTH        +  -- LEN field
                                                 STRB_WIDTH       +  -- Starting Strobe field
                                                 STRB_WIDTH       +  -- Ending Strobe field
                                                 SOF_WIDTH        +  -- SOF Flag Field
                                                 EOF_WIDTH        +  -- EOF flag field
                                                 SEQUENTIAL_WIDTH +  -- Calc error flag
                                                 CMD_CMPLT_WIDTH  +  -- Sequential command flag
                                                 CALC_ERR_WIDTH   +  -- Command Complete Flag
                                                 DRE_ALIGN_WIDTH  +  -- DRE Source Align width
                                                 DRE_ALIGN_WIDTH ;   -- DRE Dest Align width


    -- Caution, the INDEX calculations are order dependent so don't rearrange
    Constant TAG_STRT_INDEX         : integer := 0;
    Constant SADDR_LSB_STRT_INDEX   : integer := TAG_STRT_INDEX + TAG_WIDTH;
    Constant LEN_STRT_INDEX         : integer := SADDR_LSB_STRT_INDEX + SADDR_LSB_WIDTH;
    Constant STRT_STRB_STRT_INDEX   : integer := LEN_STRT_INDEX + LEN_WIDTH;
    Constant LAST_STRB_STRT_INDEX   : integer := STRT_STRB_STRT_INDEX + STRB_WIDTH;
    Constant SOF_STRT_INDEX         : integer := LAST_STRB_STRT_INDEX + STRB_WIDTH;
    Constant EOF_STRT_INDEX         : integer := SOF_STRT_INDEX + SOF_WIDTH;
    Constant SEQUENTIAL_STRT_INDEX  : integer := EOF_STRT_INDEX + EOF_WIDTH;
    Constant CMD_CMPLT_STRT_INDEX   : integer := SEQUENTIAL_STRT_INDEX + SEQUENTIAL_WIDTH;
    Constant CALC_ERR_STRT_INDEX    : integer := CMD_CMPLT_STRT_INDEX + CMD_CMPLT_WIDTH;
    Constant DRE_SRC_STRT_INDEX     : integer := CALC_ERR_STRT_INDEX + CALC_ERR_WIDTH;
    Constant DRE_DEST_STRT_INDEX    : integer := DRE_SRC_STRT_INDEX + DRE_ALIGN_WIDTH;

    Constant ADDR_INCR_VALUE        : integer := C_STREAM_DWIDTH/8;

    --Constant ADDR_POSTED_CNTR_WIDTH : integer := 5; -- allows up to 32 entry address queue
    Constant ADDR_POSTED_CNTR_WIDTH : integer := funct_set_cnt_width(C_DATA_CNTL_FIFO_DEPTH);


    Constant ADDR_POSTED_ZERO       : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0)
                                      := (others => '0');
    Constant ADDR_POSTED_ONE        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0)
                                      := TO_UNSIGNED(1, ADDR_POSTED_CNTR_WIDTH);
    Constant ADDR_POSTED_MAX        : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0)
                                       := (others => '1');




    -- Signal Declarations  --------------------------------------------

    signal sig_good_dbeat               : std_logic := '0';
    signal sig_get_next_dqual           : std_logic := '0';
    signal sig_last_mmap_dbeat          : std_logic := '0';
    signal sig_last_mmap_dbeat_reg      : std_logic := '0';
    signal sig_data2mmap_ready          : std_logic := '0';
    signal sig_mmap2data_valid          : std_logic := '0';
    signal sig_mmap2data_last           : std_logic := '0';
    signal sig_aposted_cntr_ready       : std_logic := '0';
    signal sig_ld_new_cmd               : std_logic := '0';
    signal sig_ld_new_cmd_reg           : std_logic := '0';
    signal sig_cmd_cmplt_reg            : std_logic := '0';
    signal sig_tag_reg                  : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_lsb_reg             : std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_strt_strb_reg            : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');
    signal sig_last_strb_reg            : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_posted              : std_logic := '0';
    signal sig_addr_chan_rdy            : std_logic := '0';
    signal sig_dqual_rdy                : std_logic := '0';
    signal sig_good_mmap_dbeat          : std_logic := '0';
    signal sig_first_dbeat              : std_logic := '0';
    signal sig_last_dbeat               : std_logic := '0';
    signal sig_new_len_eq_0             : std_logic := '0';
    signal sig_dbeat_cntr               : unsigned(7 downto 0) := (others => '0');
    Signal sig_dbeat_cntr_int           : Integer range 0 to 255 := 0;
    signal sig_dbeat_cntr_eq_0          : std_logic := '0';
    signal sig_dbeat_cntr_eq_1          : std_logic := '0';
    signal sig_calc_error_reg           : std_logic := '0';
    signal sig_decerr                   : std_logic := '0';
    signal sig_slverr                   : std_logic := '0';
    signal sig_coelsc_okay_reg          : std_logic := '0';
    signal sig_coelsc_interr_reg        : std_logic := '0';
    signal sig_coelsc_decerr_reg        : std_logic := '0';
    signal sig_coelsc_slverr_reg        : std_logic := '0';
    signal sig_coelsc_cmd_cmplt_reg     : std_logic := '0';
    signal sig_coelsc_tag_reg           : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_pop_coelsc_reg           : std_logic := '0';
    signal sig_push_coelsc_reg          : std_logic := '0';
    signal sig_coelsc_reg_empty         : std_logic := '0';
    signal sig_coelsc_reg_full          : std_logic := '0';
    signal sig_rsc2data_ready           : std_logic := '0';
    signal sig_cmd_cmplt_last_dbeat     : std_logic := '0';
    signal sig_next_tag_reg             : std_logic_vector(TAG_WIDTH-1 downto 0) := (others => '0');
    signal sig_next_strt_strb_reg       : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');
    signal sig_next_last_strb_reg       : std_logic_vector(STRM_STRB_WIDTH-1 downto 0) := (others => '0');
    signal sig_next_eof_reg             : std_logic := '0';
    signal sig_next_sequential_reg      : std_logic := '0';
    signal sig_next_cmd_cmplt_reg       : std_logic := '0';
    signal sig_next_calc_error_reg      : std_logic := '0';
    signal sig_next_dre_src_align_reg   : std_logic_vector(C_ALIGN_WIDTH-1 downto 0) := (others => '0');
    signal sig_next_dre_dest_align_reg  : std_logic_vector(C_ALIGN_WIDTH-1 downto 0) := (others => '0');
    signal sig_pop_dqual_reg            : std_logic := '0';
    signal sig_push_dqual_reg           : std_logic := '0';
    signal sig_dqual_reg_empty          : std_logic := '0';
    signal sig_dqual_reg_full           : std_logic := '0';
    signal sig_addr_posted_cntr         : unsigned(ADDR_POSTED_CNTR_WIDTH-1 downto 0) := (others => '0');
    signal sig_addr_posted_cntr_eq_0    : std_logic := '0';
    signal sig_addr_posted_cntr_max     : std_logic := '0';
    signal sig_decr_addr_posted_cntr    : std_logic := '0';
    signal sig_incr_addr_posted_cntr    : std_logic := '0';
    signal sig_ls_addr_cntr             : unsigned(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_incr_ls_addr_cntr        : std_logic := '0';
    signal sig_addr_incr_unsgnd         : unsigned(C_SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal sig_no_posted_cmds           : std_logic := '0';
    Signal sig_cmd_fifo_data_in         : std_logic_vector(DCTL_FIFO_WIDTH-1 downto 0);
    Signal sig_cmd_fifo_data_out        : std_logic_vector(DCTL_FIFO_WIDTH-1 downto 0);
    signal sig_fifo_next_tag            : std_logic_vector(TAG_WIDTH-1 downto 0);
    signal sig_fifo_next_sadddr_lsb     : std_logic_vector(SADDR_LSB_WIDTH-1 downto 0);
    signal sig_fifo_next_len            : std_logic_vector(LEN_WIDTH-1 downto 0);
    signal sig_fifo_next_strt_strb      : std_logic_vector(STRB_WIDTH-1 downto 0);
    signal sig_fifo_next_last_strb      : std_logic_vector(STRB_WIDTH-1 downto 0);
    signal sig_fifo_next_drr            : std_logic := '0';
    signal sig_fifo_next_eof            : std_logic := '0';
    signal sig_fifo_next_cmd_cmplt      : std_logic := '0';
    signal sig_fifo_next_calc_error     : std_logic := '0';
    signal sig_fifo_next_sequential     : std_logic := '0';
    signal sig_fifo_next_dre_src_align  : std_logic_vector(C_ALIGN_WIDTH-1 downto 0) := (others => '0');
    signal sig_fifo_next_dre_dest_align : std_logic_vector(C_ALIGN_WIDTH-1 downto 0) := (others => '0');
    signal sig_cmd_fifo_empty           : std_logic := '0';
    signal sig_fifo_wr_cmd_valid        : std_logic := '0';
    signal sig_fifo_wr_cmd_ready        : std_logic := '0';
    signal sig_fifo_rd_cmd_valid        : std_logic := '0';
    signal sig_fifo_rd_cmd_ready        : std_logic := '0';
    signal sig_sequential_push          : std_logic := '0';
    signal sig_clr_dqual_reg            : std_logic := '0';
    signal sig_advance_pipe             : std_logic := '0';
    signal sig_halt_reg                 : std_logic := '0';
    signal sig_halt_reg_dly1            : std_logic := '0';
    signal sig_halt_reg_dly2            : std_logic := '0';
    signal sig_halt_reg_dly3            : std_logic := '0';
    signal sig_data2skid_halt           : std_logic := '0';
    signal sig_rd_xfer_cmplt            : std_logic := '0';



  begin --(architecture implementation)

    -- AXI MMap Data Channel Port assignments
    mm2s_rready          <= sig_data2mmap_ready;
    sig_mmap2data_valid  <= mm2s_rvalid        ;
    sig_mmap2data_last   <= mm2s_rlast and
                            mm2s_rvalid ;--Added to FIX CR#688186 -- 19-11-2012

    -- Read Status Block interface
    data2rsc_valid       <= sig_coelsc_reg_full      ;
    sig_rsc2data_ready   <= rsc2data_ready           ;

    data2rsc_tag         <= sig_coelsc_tag_reg       ;
    data2rsc_calc_err    <= sig_coelsc_interr_reg    ;
    data2rsc_okay        <= sig_coelsc_okay_reg      ;
    data2rsc_decerr      <= sig_coelsc_decerr_reg    ;
    data2rsc_slverr      <= sig_coelsc_slverr_reg    ;
    data2rsc_cmd_cmplt   <= sig_coelsc_cmd_cmplt_reg ;



    -- AXI MM2S Stream Channel Port assignments
    mm2s_strm_wvalid     <= (mm2s_rvalid             and
                            sig_advance_pipe)        or
                            (sig_halt_reg            and  -- Force tvalid high on a Halt and
                             sig_dqual_reg_full      and  -- a transfer is scheduled and
                             not(sig_no_posted_cmds) and  -- there are cmds posted to AXi and
                             not(sig_calc_error_reg));    -- not a calc error



    mm2s_strm_wlast      <= (mm2s_rlast              and
                             mm2s_rvalid             and --Added to FIX CR#688186 -- 19-11-2012
                             sig_next_eof_reg)        or
                            (sig_halt_reg            and  -- Force tvalid high on a Halt and
                             sig_dqual_reg_full      and  -- a transfer is scheduled and
                             not(sig_no_posted_cmds) and  -- there are cmds posted to AXi and
                             not(sig_calc_error_reg));    -- not a calc error;


    -- Generate the Write Strobes for the Stream interface
    mm2s_strm_wstrb <= (others => '1')
      When (sig_halt_reg = '1')        -- Force tstrb high on a Halt
      else sig_strt_strb_reg
      When (sig_first_dbeat = '1')
      Else sig_last_strb_reg
      When (sig_last_dbeat = '1')
      Else (others => '1');


    -- Address Channel Controller synchro pulse input
    sig_addr_posted      <= addr2data_addr_posted;



    -- Request to halt the Address Channel Controller
    data2addr_stop_req   <= sig_halt_reg;


    -- Halted flag to the reset module
    data2rst_stop_cmplt  <= (sig_halt_reg_dly3 and   -- Normal Mode shutdown
                            sig_no_posted_cmds and
                            not(sig_calc_error_reg)) or
                            (sig_halt_reg_dly3 and   -- Shutdown after error trap
                             sig_calc_error_reg);



    -- Read Transfer Completed Status output
    mm2s_rd_xfer_cmplt <=  sig_rd_xfer_cmplt;



    -- Internal logic ------------------------------


    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_RD_CMPLT_FLAG
    --
    -- Process Description:
    --   Implements the status flag indicating that a read data
    -- transfer has completed. This is an echo of a rlast assertion
    -- and a qualified data beat on the AXI4 Read Data Channel
    -- inputs.
    --
    -------------------------------------------------------------
    IMP_RD_CMPLT_FLAG : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then

             sig_rd_xfer_cmplt <= '0';

           else

             sig_rd_xfer_cmplt <= sig_mmap2data_last and
                                  sig_good_mmap_dbeat;

           end if;
        end if;
      end process IMP_RD_CMPLT_FLAG;





    -- General flag for advancing the MMap Read and the Stream
    -- data pipelines
    sig_advance_pipe     <=  sig_addr_chan_rdy        and
                             sig_dqual_rdy            and
                             not(sig_coelsc_reg_full) and  -- new status back-pressure term
                             not(sig_calc_error_reg);


    -- test for Kevin's status throttle case
    sig_data2mmap_ready  <= (mm2s_strm_wready or
                             sig_halt_reg)    and    -- Ignore the Stream ready on a Halt request
                             sig_advance_pipe;



    sig_good_mmap_dbeat  <= sig_data2mmap_ready and
                            sig_mmap2data_valid;


    sig_last_mmap_dbeat  <= sig_good_mmap_dbeat and
                            sig_mmap2data_last;


    sig_get_next_dqual   <= sig_last_mmap_dbeat;







    ------------------------------------------------------------
    -- Instance: I_READ_MUX
    --
    -- Description:
    --  Instance of the MM2S Read Data Channel Read Mux
    --
    ------------------------------------------------------------
    I_READ_MUX : entity axi_master_burst_v2_0_7.axi_master_burst_rdmux
    generic map (

      C_SEL_ADDR_WIDTH     =>  C_SEL_ADDR_WIDTH,   --  : Integer range 1  to  32 :=  5;
      C_MMAP_DWIDTH        =>  C_MMAP_DWIDTH   ,   --  : Integer range 32 to 256 := 32;
      C_STREAM_DWIDTH      =>  C_STREAM_DWIDTH     --  : Integer range  8 to 256 := 32

      )
    port map (

      mmap_read_data_in    =>  mm2s_rdata           ,   -- : In  std_logic_vector(C_MMAP_DWIDTH-1 downto 0);
      mux_data_out         =>  mm2s_strm_wdata      ,   -- : Out std_logic_vector(C_STREAM_DWIDTH-1 downto 0);
      mstr2data_saddr_lsb  =>  sig_addr_lsb_reg         -- : In std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0)

      );






    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: REG_LAST_DBEAT
    --
    -- Process Description:
    --   This implements a FLOP that creates a pulse
    -- indicating the LAST signal for an incoming read data channel
    -- has been received. Note that it is possible to have back to
    -- back LAST databeats.
    --
    -------------------------------------------------------------
    REG_LAST_DBEAT : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset = '1') then

             sig_last_mmap_dbeat_reg <= '0';

           else

             sig_last_mmap_dbeat_reg <= sig_last_mmap_dbeat;

           end if;
         end if;
       end process REG_LAST_DBEAT;







     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_NO_DATA_CNTL_FIFO
     --
     -- If Generate Description:
     --   Omits the input data control FIFO if the requested FIFO
     -- depth is 1. The Data Qualifier Register serves as a
     -- 1 deep FIFO by itself.
     --
     ------------------------------------------------------------
     GEN_NO_DATA_CNTL_FIFO : if (C_DATA_CNTL_FIFO_DEPTH = 1) generate

       begin

         -- Command Calculator Handshake output
         data2mstr_cmd_ready    <= sig_fifo_wr_cmd_ready;

         sig_fifo_rd_cmd_valid  <= mstr2data_cmd_valid ;



         -- pre 13.1 sig_fifo_wr_cmd_ready  <= sig_dqual_reg_empty     and
         -- pre 13.1                           sig_aposted_cntr_ready  and
         -- pre 13.1                           not(rsc2mstr_halt_pipe) and  -- The Rd Status Controller is not stalling
         -- pre 13.1                           not(sig_calc_error_reg);     -- the command execution pipe and there is
         -- pre 13.1                                                        -- no calculation error being propagated

         sig_fifo_wr_cmd_ready  <= sig_push_dqual_reg;




         sig_fifo_next_tag             <= mstr2data_tag        ;
         sig_fifo_next_sadddr_lsb      <= mstr2data_saddr_lsb  ;
         sig_fifo_next_len             <= mstr2data_len        ;
         sig_fifo_next_strt_strb       <= mstr2data_strt_strb  ;
         sig_fifo_next_last_strb       <= mstr2data_last_strb  ;
         sig_fifo_next_drr             <= mstr2data_drr        ;
         sig_fifo_next_eof             <= mstr2data_eof        ;
         sig_fifo_next_sequential      <= mstr2data_sequential ;
         sig_fifo_next_cmd_cmplt       <= mstr2data_cmd_cmplt  ;
         sig_fifo_next_calc_error      <= mstr2data_calc_error ;

         sig_fifo_next_dre_src_align   <= mstr2data_dre_src_align  ;
         sig_fifo_next_dre_dest_align  <= mstr2data_dre_dest_align ;



       end generate GEN_NO_DATA_CNTL_FIFO;






     ------------------------------------------------------------
     -- If Generate
     --
     -- Label: GEN_DATA_CNTL_FIFO
     --
     -- If Generate Description:
     --   Includes the input data control FIFO if the requested
     -- FIFO depth is more than 1.
     --
     ------------------------------------------------------------
     GEN_DATA_CNTL_FIFO : if (C_DATA_CNTL_FIFO_DEPTH > 1) generate

       begin


         -- Command Calculator Handshake output
         data2mstr_cmd_ready    <= sig_fifo_wr_cmd_ready;

         sig_fifo_wr_cmd_valid  <= mstr2data_cmd_valid  ;


         sig_fifo_rd_cmd_ready    <= sig_push_dqual_reg;  -- pop the fifo when dqual reg is pushed





         -- Format the input fifo data word
         sig_cmd_fifo_data_in  <=   mstr2data_dre_dest_align &
                                    mstr2data_dre_src_align  &
                                    mstr2data_calc_error     &
                                    mstr2data_cmd_cmplt      &
                                    mstr2data_sequential     &
                                    mstr2data_eof            &
                                    mstr2data_drr            &
                                    mstr2data_last_strb      &
                                    mstr2data_strt_strb      &
                                    mstr2data_len            &
                                    mstr2data_saddr_lsb      &
                                    mstr2data_tag ;


         -- Rip the output fifo data word
         sig_fifo_next_tag        <= sig_cmd_fifo_data_out((TAG_STRT_INDEX+TAG_WIDTH)-1 downto
                                                            TAG_STRT_INDEX);
         sig_fifo_next_sadddr_lsb <= sig_cmd_fifo_data_out((SADDR_LSB_STRT_INDEX+SADDR_LSB_WIDTH)-1 downto
                                                            SADDR_LSB_STRT_INDEX);
         sig_fifo_next_len        <= sig_cmd_fifo_data_out((LEN_STRT_INDEX+LEN_WIDTH)-1 downto
                                                            LEN_STRT_INDEX);
         sig_fifo_next_strt_strb  <= sig_cmd_fifo_data_out((STRT_STRB_STRT_INDEX+STRB_WIDTH)-1 downto
                                                            STRT_STRB_STRT_INDEX);
         sig_fifo_next_last_strb  <= sig_cmd_fifo_data_out((LAST_STRB_STRT_INDEX+STRB_WIDTH)-1 downto
                                                            LAST_STRB_STRT_INDEX);
         sig_fifo_next_drr        <= sig_cmd_fifo_data_out(SOF_STRT_INDEX);
         sig_fifo_next_eof        <= sig_cmd_fifo_data_out(EOF_STRT_INDEX);
         sig_fifo_next_sequential <= sig_cmd_fifo_data_out(SEQUENTIAL_STRT_INDEX);
         sig_fifo_next_cmd_cmplt  <= sig_cmd_fifo_data_out(CMD_CMPLT_STRT_INDEX);
         sig_fifo_next_calc_error <= sig_cmd_fifo_data_out(CALC_ERR_STRT_INDEX);

         sig_fifo_next_dre_src_align   <= sig_cmd_fifo_data_out((DRE_SRC_STRT_INDEX+DRE_ALIGN_WIDTH)-1 downto
                                                                 DRE_SRC_STRT_INDEX);
         sig_fifo_next_dre_dest_align  <= sig_cmd_fifo_data_out((DRE_DEST_STRT_INDEX+DRE_ALIGN_WIDTH)-1 downto
                                                                 DRE_DEST_STRT_INDEX);




         ------------------------------------------------------------
         -- Instance: I_DATA_CNTL_FIFO
         --
         -- Description:
         -- Instance for the Command Qualifier FIFO
         --
         ------------------------------------------------------------
          I_DATA_CNTL_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
          generic map (

            C_DWIDTH             =>  DCTL_FIFO_WIDTH        ,
            C_DEPTH              =>  C_DATA_CNTL_FIFO_DEPTH ,
            C_IS_ASYNC           =>  USE_SYNC_FIFO          ,
            C_PRIM_TYPE          =>  FIFO_PRIM_TYPE         ,
            C_FAMILY             =>  C_FAMILY

            )
          port map (

            -- Write Clock and reset
            fifo_wr_reset        =>   mmap_reset            ,
            fifo_wr_clk          =>   primary_aclk          ,

            -- Write Side
            fifo_wr_tvalid       =>   sig_fifo_wr_cmd_valid ,
            fifo_wr_tready       =>   sig_fifo_wr_cmd_ready ,
            fifo_wr_tdata        =>   sig_cmd_fifo_data_in  ,
            fifo_wr_full         =>   open                  ,

            -- Read Clock and reset
            fifo_async_rd_reset  =>   mmap_reset            ,
            fifo_async_rd_clk    =>   primary_aclk          ,

            -- Read Side
            fifo_rd_tvalid       =>   sig_fifo_rd_cmd_valid ,
            fifo_rd_tready       =>   sig_fifo_rd_cmd_ready ,
            fifo_rd_tdata        =>   sig_cmd_fifo_data_out ,
            fifo_rd_empty        =>   sig_cmd_fifo_empty

            );


       end generate GEN_DATA_CNTL_FIFO;









    -- Data Qualifier Register ------------------------------------

    sig_ld_new_cmd           <= sig_push_dqual_reg      ;
    sig_addr_chan_rdy        <= not(sig_addr_posted_cntr_eq_0);
    sig_dqual_rdy            <= sig_dqual_reg_full      ;
    sig_strt_strb_reg        <= sig_next_strt_strb_reg  ;
    sig_last_strb_reg        <= sig_next_last_strb_reg  ;
    sig_tag_reg              <= sig_next_tag_reg        ;
    sig_cmd_cmplt_reg        <= sig_next_cmd_cmplt_reg  ;
    sig_calc_error_reg       <= sig_next_calc_error_reg ;


    -- Flag indicating that there are no posted commands to AXI
    sig_no_posted_cmds       <= sig_addr_posted_cntr_eq_0;



    -- new for no bubbles between child requests
    sig_sequential_push      <= sig_good_mmap_dbeat and -- MMap handshake qualified
                                sig_last_dbeat      and -- last data beat of transfer
                                sig_next_sequential_reg;-- next queued command is sequential
                                                        -- to the current command


    -- pre 13.1 sig_push_dqual_reg       <= (sig_sequential_push   or
    -- pre 13.1                              sig_dqual_reg_empty)  and
    -- pre 13.1                             sig_fifo_rd_cmd_valid  and
    -- pre 13.1                             sig_aposted_cntr_ready and
    -- pre 13.1                             not(rsc2mstr_halt_pipe);  -- The Rd Status Controller is not
                                                                      -- stalling the command execution pipe

    sig_push_dqual_reg       <= (sig_sequential_push    or
                                 sig_dqual_reg_empty)   and
                                sig_fifo_rd_cmd_valid   and
                                sig_aposted_cntr_ready  and
                                not(sig_calc_error_reg) and -- 13.1 addition => An error has not been propagated
                                not(rsc2mstr_halt_pipe);    -- The Rd Status Controller is not
                                                            -- stalling the command execution pipe


    sig_pop_dqual_reg        <= not(sig_next_calc_error_reg) and
                                sig_get_next_dqual and
                                sig_dqual_reg_full  ;


    -- new for no bubbles between child requests
    sig_clr_dqual_reg        <=  mmap_reset         or
                                 (sig_pop_dqual_reg and
                                 not(sig_push_dqual_reg));


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_DQUAL_REG
  --
  -- Process Description:
  --    This process implements a register for the Data
  -- Control and qualifiers. It operates like a 1 deep Sync FIFO.
  --
  -------------------------------------------------------------
  IMP_DQUAL_REG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (sig_clr_dqual_reg = '1') then

            sig_next_tag_reg             <= (others => '0');
            sig_next_strt_strb_reg       <= (others => '0');
            sig_next_last_strb_reg       <= (others => '0');
            sig_next_eof_reg             <= '0';
            sig_next_cmd_cmplt_reg       <= '0';
            sig_next_sequential_reg      <= '0';
            sig_next_calc_error_reg      <= '0';
            sig_next_dre_src_align_reg   <= (others => '0');
            sig_next_dre_dest_align_reg  <= (others => '0');

            sig_dqual_reg_empty          <= '1';
            sig_dqual_reg_full           <= '0';

          elsif (sig_push_dqual_reg = '1') then

            sig_next_tag_reg             <= sig_fifo_next_tag            ;
            sig_next_strt_strb_reg       <= sig_fifo_next_strt_strb      ;
            sig_next_last_strb_reg       <= sig_fifo_next_last_strb      ;
            sig_next_eof_reg             <= sig_fifo_next_eof            ;
            sig_next_cmd_cmplt_reg       <= sig_fifo_next_cmd_cmplt      ;
            sig_next_sequential_reg      <= sig_fifo_next_sequential     ;
            sig_next_calc_error_reg      <= sig_fifo_next_calc_error     ;
            sig_next_dre_src_align_reg   <= sig_fifo_next_dre_src_align  ;
            sig_next_dre_dest_align_reg  <= sig_fifo_next_dre_dest_align ;

            sig_dqual_reg_empty          <= '0';
            sig_dqual_reg_full           <= '1';

          else
            null;  -- don't change state
          end if;
       end if;
     end process IMP_DQUAL_REG;







    -- Address LS Cntr logic  --------------------------

    sig_addr_lsb_reg         <= STD_LOGIC_VECTOR(sig_ls_addr_cntr);
    sig_addr_incr_unsgnd     <= TO_UNSIGNED(ADDR_INCR_VALUE, C_SEL_ADDR_WIDTH);
    sig_incr_ls_addr_cntr    <= sig_good_mmap_dbeat;

    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: DO_ADDR_LSB_CNTR
    --
    -- Process Description:
    --  Implements the LS Address Counter used for controlling
    -- the Read Data Mux during Burst transfers
    --
    -------------------------------------------------------------
    DO_ADDR_LSB_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset         = '1'  or
               (sig_pop_dqual_reg  = '1'  and
                sig_push_dqual_reg = '0')) then                 -- Clear the Counter

              sig_ls_addr_cntr <= (others => '0');

            elsif (sig_push_dqual_reg = '1') then               -- Load the Counter

              sig_ls_addr_cntr <= unsigned(sig_fifo_next_sadddr_lsb);

            elsif (sig_incr_ls_addr_cntr = '1') then            -- Increment the Counter

              sig_ls_addr_cntr <= sig_ls_addr_cntr + sig_addr_incr_unsgnd;

            else
              null;  -- Hold Current value
            end if;
         end if;
       end process DO_ADDR_LSB_CNTR;












    ----- Address posted Counter logic --------------------------------

    sig_incr_addr_posted_cntr <= sig_addr_posted              ;


    sig_decr_addr_posted_cntr <= sig_last_mmap_dbeat_reg      ;


    sig_aposted_cntr_ready    <= not(sig_addr_posted_cntr_max);

    sig_addr_posted_cntr_eq_0 <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_ZERO)
      Else '0';

    sig_addr_posted_cntr_max <= '1'
      when (sig_addr_posted_cntr = ADDR_POSTED_MAX)
      Else '0';





    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_ADDR_POSTED_FIFO_CNTR
    --
    -- Process Description:
    --    This process implements a register for the Address
    -- Posted FIFO that operates like a 1 deep Sync FIFO.
    --
    -------------------------------------------------------------
    IMP_ADDR_POSTED_FIFO_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then

              sig_addr_posted_cntr <= ADDR_POSTED_ZERO;

            elsif (sig_incr_addr_posted_cntr = '1' and
                   sig_decr_addr_posted_cntr  = '0' and
                   sig_addr_posted_cntr_max = '0') then

              sig_addr_posted_cntr <= sig_addr_posted_cntr + ADDR_POSTED_ONE ;

            elsif (sig_incr_addr_posted_cntr  = '0' and
                   sig_decr_addr_posted_cntr   = '1' and
                   sig_addr_posted_cntr_eq_0 = '0') then

              sig_addr_posted_cntr <= sig_addr_posted_cntr - ADDR_POSTED_ONE ;

            else
              null;  -- don't change state
            end if;
         end if;
       end process IMP_ADDR_POSTED_FIFO_CNTR;








    ------- First/Middle/Last Dbeat detirmination -------------------

     sig_new_len_eq_0 <= '1'
       When  (sig_fifo_next_len = LEN_OF_ZERO)
       else '0';




     -------------------------------------------------------------
     -- Synchronous Process with Sync Reset
     --
     -- Label: DO_FIRST_MID_LAST
     --
     -- Process Description:
     --  Implements the detection of the First/Mid/Last databeat of
     -- a transfer.
     --
     -------------------------------------------------------------
     DO_FIRST_MID_LAST : process (primary_aclk)
        begin
          if (primary_aclk'event and primary_aclk = '1') then
             if (mmap_reset = '1') then

               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '0';

             elsif (sig_ld_new_cmd = '1') then

               sig_first_dbeat   <= not(sig_new_len_eq_0);
               sig_last_dbeat    <= sig_new_len_eq_0;

             Elsif (sig_dbeat_cntr_eq_1 = '1' and
                    sig_good_mmap_dbeat = '1') Then

               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '1';

             Elsif (sig_dbeat_cntr_eq_0 = '0' and
                    sig_dbeat_cntr_eq_1 = '0' and
                    sig_good_mmap_dbeat = '1') Then

               sig_first_dbeat   <= '0';
               sig_last_dbeat    <= '0';

             else
               null; -- hols current state
             end if;
          end if;
        end process DO_FIRST_MID_LAST;





   -------  Data Controller Halted Indication -------------------------------


    data2all_dcntlr_halted <= sig_no_posted_cmds  and
                              (sig_calc_error_reg or
                               rst2data_stop_request);




   -------  Data Beat counter logic -------------------------------
    sig_dbeat_cntr_int  <= TO_INTEGER(sig_dbeat_cntr);

    sig_dbeat_cntr_eq_0 <= '1'
      when (sig_dbeat_cntr_int = 0)
      Else '0';

    sig_dbeat_cntr_eq_1 <= '1'
      when (sig_dbeat_cntr_int = 1)
      Else '0';




    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: DO_DBEAT_CNTR
    --
    -- Process Description:
    --
    --
    -------------------------------------------------------------
    DO_DBEAT_CNTR : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then
              sig_dbeat_cntr <= (others => '0');
            elsif (sig_ld_new_cmd = '1') then
              sig_dbeat_cntr <= unsigned(sig_fifo_next_len);
            Elsif (sig_good_mmap_dbeat = '1' and
                   sig_dbeat_cntr_eq_0 = '0') Then
              sig_dbeat_cntr <= sig_dbeat_cntr-1;
            else
              null; -- Hold current state
            end if;
         end if;
       end process DO_DBEAT_CNTR;






   ------  Read Response Status Logic  ------------------------------

   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: LD_NEW_CMD_PULSE
   --
   -- Process Description:
   -- Generate a 1 Clock wide pulse when a new command has been
   -- loaded into the Command Register
   --
   -------------------------------------------------------------
   LD_NEW_CMD_PULSE : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset         = '1' or
               sig_ld_new_cmd_reg = '1') then
             sig_ld_new_cmd_reg <= '0';
           elsif (sig_ld_new_cmd = '1') then
             sig_ld_new_cmd_reg <= '1';
           else
             null; -- hold State
           end if;
        end if;
      end process LD_NEW_CMD_PULSE;



   sig_pop_coelsc_reg  <= sig_coelsc_reg_full and
                          sig_rsc2data_ready ;

   sig_push_coelsc_reg <= (sig_good_mmap_dbeat and
                           not(sig_coelsc_reg_full)) or
                          (sig_ld_new_cmd_reg and
                           sig_calc_error_reg) ;

   sig_cmd_cmplt_last_dbeat <= (sig_cmd_cmplt_reg and sig_mmap2data_last) or
                                sig_calc_error_reg;



  -------  Read Response Decode

   -- Decode the AXI MMap Read Response
   sig_decerr  <= '1'
     When mm2s_rresp = DECERR
     Else '0';

   sig_slverr  <= '1'
     When mm2s_rresp = SLVERR
     Else '0';





    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: RD_RESP_COELESC_REG
    --
    -- Process Description:
    --   Implement the Read error/status coelescing register.
    -- Once a bit is set it will remain set until the overall
    -- status is written to the Status Controller.
    -- Tag bits are just registered at each valid dbeat.
    --
    -------------------------------------------------------------
    STATUS_COELESC_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset         = '1' or
                (sig_pop_coelsc_reg  = '1' and                  -- Added more qualification here for simultaneus
                 sig_push_coelsc_reg = '0')) then               -- push and pop condition per CR590244

              sig_coelsc_tag_reg       <= (others => '0');
              sig_coelsc_cmd_cmplt_reg <= '0';
              sig_coelsc_interr_reg    <= '0';
              sig_coelsc_decerr_reg    <= '0';
              sig_coelsc_slverr_reg    <= '0';
              sig_coelsc_okay_reg      <= '1'; -- set back to default of "OKAY"

              sig_coelsc_reg_full      <= '0';
              sig_coelsc_reg_empty     <= '1';



            Elsif (sig_push_coelsc_reg = '1') Then

              sig_coelsc_tag_reg       <= sig_tag_reg;
              sig_coelsc_cmd_cmplt_reg <= sig_cmd_cmplt_last_dbeat;
              sig_coelsc_interr_reg    <= sig_calc_error_reg or
                                          sig_coelsc_interr_reg;
              sig_coelsc_decerr_reg    <= sig_decerr or sig_coelsc_decerr_reg;
              sig_coelsc_slverr_reg    <= sig_slverr or sig_coelsc_slverr_reg;
              sig_coelsc_okay_reg      <= not(sig_decerr       or
                                              sig_slverr       or
                                              sig_calc_error_reg );

              sig_coelsc_reg_full      <= sig_cmd_cmplt_last_dbeat;
              sig_coelsc_reg_empty     <= not(sig_cmd_cmplt_last_dbeat);


            else

              null;  -- hold current state

            end if;
         end if;
       end process STATUS_COELESC_REG;










    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_NO_DRE
    --
    -- If Generate Description:
    --  Ties off DRE Control signals to logic low when DRE is
    -- omitted from the MM2S functionality.
    --
    --
    ------------------------------------------------------------
    GEN_NO_DRE : if (C_INCLUDE_DRE = 0) generate

       begin

         mm2s_dre_new_align     <= '0';
         mm2s_dre_use_autodest  <= '0';
         mm2s_dre_src_align     <= (others => '0');
         mm2s_dre_dest_align    <= (others => '0');
         mm2s_dre_flush         <= '0';

       end generate GEN_NO_DRE;













    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_INCLUDE_DRE_CNTLS
    --
    -- If Generate Description:
    -- Implements the DRE Control logic when MM2S DRE is enabled.
    --
    --  - The DRE needs to have forced alignment at a SOF assertion
    --
    --
    ------------------------------------------------------------
    GEN_INCLUDE_DRE_CNTLS : if (C_INCLUDE_DRE = 1) generate

       -- local signals
       signal lsig_s_h_dre_autodest  : std_logic := '0';
       signal lsig_s_h_dre_new_align : std_logic := '0';

       begin


         mm2s_dre_new_align     <= lsig_s_h_dre_new_align;




         -- Autodest is asserted on a new parent command and the
         -- previous parent command was not delimited with a EOF
         mm2s_dre_use_autodest  <= lsig_s_h_dre_autodest;




         -- Assign the DRE Source and Destination Alignments
         -- Only used when mm2s_dre_new_align is asserted
         mm2s_dre_src_align     <= sig_next_dre_src_align_reg ;
         mm2s_dre_dest_align    <= sig_next_dre_dest_align_reg;


         -- Assert the Flush flag when the MMap Tlast input of the current transfer is
         -- asserted and the next transfer is not sequential and not the last
         -- transfer of a packet.
         mm2s_dre_flush         <= mm2s_rlast  and
                                   mm2s_rvalid and                  --Added to FIX CR#688186 -- 19-11-2012
                                   not(sig_next_sequential_reg) and
                                   not(sig_next_eof_reg);





         -------------------------------------------------------------
         -- Synchronous Process with Sync Reset
         --
         -- Label: IMP_S_H_NEW_ALIGN
         --
         -- Process Description:
         --   Generates the new alignment command flag to the DRE.
         --
         -------------------------------------------------------------
         IMP_S_H_NEW_ALIGN : process (primary_aclk)
            begin
              if (primary_aclk'event and primary_aclk = '1') then
                 if (mmap_reset   = '1') then

                   lsig_s_h_dre_new_align <= '0';


                 Elsif (sig_push_dqual_reg = '1' and
                        sig_fifo_next_drr  = '1') Then

                   lsig_s_h_dre_new_align <= '1';

                 elsif (sig_pop_dqual_reg = '1') then

                   lsig_s_h_dre_new_align <=  sig_next_cmd_cmplt_reg and
                                             not(sig_next_sequential_reg) and
                                             not(sig_next_eof_reg);

                 Elsif (sig_good_mmap_dbeat = '1') Then

                   lsig_s_h_dre_new_align <= '0';


                 else

                   null; -- hold current state

                 end if;
              end if;
            end process IMP_S_H_NEW_ALIGN;






         -------------------------------------------------------------
         -- Synchronous Process with Sync Reset
         --
         -- Label: IMP_S_H_AUTODEST
         --
         -- Process Description:
         --   Generates the control for the DRE indicating whether the
         -- DRE destination alignment should be derived from the write
         -- strobe stat of the last completed data-beat to the AXI
         -- stream output.
         --
         -------------------------------------------------------------
         IMP_S_H_AUTODEST : process (primary_aclk)
            begin
              if (primary_aclk'event and primary_aclk = '1') then
                 if (mmap_reset   = '1') then

                   lsig_s_h_dre_autodest <= '0';


                 Elsif (sig_push_dqual_reg = '1' and
                        sig_fifo_next_drr  = '1') Then

                   lsig_s_h_dre_autodest <= '0';

                 elsif (sig_pop_dqual_reg = '1') then

                   lsig_s_h_dre_autodest <=  sig_next_cmd_cmplt_reg and
                                             not(sig_next_sequential_reg) and
                                             not(sig_next_eof_reg);

                 Elsif (lsig_s_h_dre_new_align = '1' and
                        sig_good_mmap_dbeat    = '1') Then

                   lsig_s_h_dre_autodest <= '0';


                 else

                   null; -- hold current state

                 end if;
              end if;
            end process IMP_S_H_AUTODEST;




       end generate GEN_INCLUDE_DRE_CNTLS;




















   -------  Soft Shutdown Logic -------------------------------


    -- Assign the output port skid buf control
    data2skid_halt      <= sig_data2skid_halt;

    -- Create a 1 clock wide pulse to tell the output
    -- stream skid buffer to shut down its outputs
    sig_data2skid_halt  <=  sig_halt_reg_dly2 and
                            not(sig_halt_reg_dly3);



    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG
    --
    -- Process Description:
    --   Implements the flop for capturing the Halt request from
    -- the Reset module.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then

              sig_halt_reg      <= '0';

-- coverage off
            elsif (rst2data_stop_request = '1') then

              sig_halt_reg <= '1';
-- coverage on

            else
              null;  -- Hold current State
            end if;
         end if;
       end process IMP_HALT_REQ_REG;




    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_HALT_REQ_REG_DLY
    --
    -- Process Description:
    --   Implements the flops for delaying the halt request by 3
    -- clocks to allow the Address Controller to halt before the
    -- Data Contoller can safely indicate it has exhausted all
    -- transfers committed to the AXI Address Channel by the Address
    -- Controller.
    --
    -------------------------------------------------------------
    IMP_HALT_REQ_REG_DLY : process (primary_aclk)
       begin
         if (primary_aclk'event and primary_aclk = '1') then
            if (mmap_reset = '1') then

              sig_halt_reg_dly1 <= '0';
              sig_halt_reg_dly2 <= '0';
              sig_halt_reg_dly3 <= '0';

            else

              sig_halt_reg_dly1 <= sig_halt_reg;
              sig_halt_reg_dly2 <= sig_halt_reg_dly1;
              sig_halt_reg_dly3 <= sig_halt_reg_dly2;

            end if;
         end if;
       end process IMP_HALT_REQ_REG_DLY;














  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_pcc.vhd
--
-- Description:
--    This file implements the AXI Master burst Predictive Command Calculator 
-- (PCC). It has been adapted from the AXI DataMover PCC.
--
--
--
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--
--      axi_master_burst.vhd
--          |
--          |-- proc_common_v4_0_2 (helper library)
--          |
--          |-- axi_master_burst_reset.vhd
--          |
--          |-- axi_master_rd_llink.vhd
--          |
--          |-- axi_master_wr_llink.vhd
--          |
--          |
--          |-- axi_master_burst_cmd_status.vhd
--          |       |-- axi_master_burst_first_stb_offset.vhd
--          |       |-- axi_master_burst_stbs_set.vhd
--          |
--          |-- axi_master_burst_rd_wr_cntlr.vhd
--                  |--  axi_master_burst_pcc.vhd
--                  |        |--  axi_master_burst_strb_gen.vhd
--                  |--  axi_master_burst_addr_cntl.vhd
--                  |--  axi_master_burst_rddata_cntl.vhd
--                  |--  axi_master_burst_wrdata_cntl.vhd
--                  |--  axi_master_burst_rd_status_cntl.vhd
--                  |--  axi_master_burst_wr_status_cntl.vhd
--                  |--  axi_master_burst_skid_buf.vhd
--                  |--  axi_master_burst_skid2mm_buf.vhd
--
--
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_pcc.vhd
-- ^^^^^^
--
--     DET     2/15/2011     Initial for EDk 13.2
-- ~~~~~~
--    -- Per CR593812
--     - Modifications to remove unused features to improve Code coverage.
--       Used "-- coverage off" and "-- coverage on" strings.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library axi_master_burst_v2_0_7;
use axi_master_burst_v2_0_7.axi_master_burst_strb_gen;

-------------------------------------------------------------------------------

entity axi_master_burst_pcc is
  generic (

    C_DRE_ALIGN_WIDTH    : Integer range  1 to   3 :=  2;
    C_SEL_ADDR_WIDTH     : Integer range  1 to   8 :=  5;
    C_ADDR_WIDTH         : Integer range 32 to  64 := 32;
    C_STREAM_DWIDTH      : Integer range  8 to 256 := 32;
    C_MAX_BURST_LEN      : Integer range 16 to 256 := 16;
    C_CMD_WIDTH          : Integer                 := 68;
    C_TAG_WIDTH          : Integer range  1 to   8 :=  4;
    C_BTT_USED           : Integer range  8 to  23 := 16;
    C_SUPPORT_INDET_BTT  : Integer range  0 to   1 :=  0

    );
  port (

    -- Clock input
    primary_aclk         : in  std_logic;
       -- Primary synchronization clock for the Master side
       -- interface and internal logic. It is also used
       -- for the User interface synchronization when
       -- C_STSCMD_IS_ASYNC = 0.

    -- Reset input
    mmap_reset           : in  std_logic;
      -- Reset used for the internal master logic




    -- Master Command FIFO/Register Interface -------------------------------

    cmd2mstr_command      : in std_logic_vector(C_CMD_WIDTH-1 downto 0);
       -- The next command value available from the Command FIFO/Register

    cmd2mstr_cmd_valid    : in std_logic;
       -- Handshake bit indicating if the Command FIFO/Register has at leasdt 1 entry

    mst2cmd_cmd_ready     : out  std_logic;
       -- Handshake bit indicating the Command Calculator is ready to accept
       -- another command



    -- Address Channel Controller Interface ---------------------------------

    mstr2addr_tag       : out std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The next command tag

    mstr2addr_addr      : out std_logic_vector(C_ADDR_WIDTH-1 downto 0);
       -- The next command address to put on the AXI MMap ADDR

    mstr2addr_len       : out std_logic_vector(7 downto 0);
       -- The next command length to put on the AXI MMap LEN

    mstr2addr_size      : out std_logic_vector(2 downto 0);
       -- The next command size to put on the AXI MMap SIZE

    mstr2addr_burst     : out std_logic_vector(1 downto 0);
       -- The next command burst type to put on the AXI MMap BURST

    mstr2addr_cmd_cmplt : out std_logic;
       -- The indication to the Address Channel that the current
       -- sub-command output is the last one compiled from the
       -- parent command pulled from the Command FIFO

    mstr2addr_calc_error : out std_logic;
       -- Indication if the next command in the calculation pipe
       -- has a calcualtion error

    mstr2addr_cmd_valid : out std_logic;
       -- The next command valid indication to the Address Channel
       -- Controller for the AXI MMap

    addr2mstr_cmd_ready : In std_logic;
       -- Indication from the Address Channel Controller that the
       -- command is being accepted



    -- Data Channel Controller Interface ------------------------------------

    mstr2data_tag        : out std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The next command tag

    mstr2data_saddr_lsb  : out std_logic_vector(C_SEL_ADDR_WIDTH-1 downto 0);
       -- The next command start address LSbs to use for the read data
       -- mux (only used if Stream data width is less than the MMap data
       -- width).

    mstr2data_len        : out std_logic_vector(7 downto 0);
       -- The LEN value output to the Address Channel

    mstr2data_strt_strb  : out std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
       -- The starting strobe value to use for the data transfer

    mstr2data_last_strb  : out std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0);
       -- The endiing (LAST) strobe value to use for the data transfer

    mstr2data_drr        : out std_logic;
       -- The starting tranfer of a sequence of transfers

    mstr2data_eof        : out std_logic;
       -- The endiing tranfer of a sequence of parent transfer commands

    mstr2data_sequential : Out std_logic;
       -- The next sequential tranfer of a sequence of transfers
       -- spawned from a single parent command

    mstr2data_calc_error : out std_logic;
       -- Indication if the next command in the calculation pipe
       -- has a calculation error

    mstr2data_cmd_cmplt  : out std_logic;
       -- The indication to the Data Channel that the current
       -- sub-command output is the last one compiled from the
       -- parent command pulled from the Command FIFO

    mstr2data_cmd_valid  : out std_logic;
       -- The next command valid indication to the Data Channel
       -- Controller for the AXI MMap

    data2mstr_cmd_ready  : In std_logic ;
       -- Indication from the Data Channel Controller that the
       -- command is being accepted on the AXI Address
       -- Channel

    mstr2data_dre_src_align  : Out std_logic_vector(C_DRE_ALIGN_WIDTH-1 downto 0);
       -- The source (input) alignment for the MM2S DRE

    mstr2data_dre_dest_align : Out std_logic_vector(C_DRE_ALIGN_WIDTH-1 downto 0);
       -- The destinstion (output) alignment for the MM2S DRE


    calc_error               : Out std_logic;
       -- Indication from the Command Calculator that a calculation
       -- error has occured.





    -- Special S2MM DRE Controller Interface --------------------------------

    dre2mstr_cmd_ready        : In std_logic ;
       -- Indication from the S2MM DRE Controller that it can
       -- accept another command.

    mstr2dre_cmd_valid        : out std_logic ;
       -- The next command valid indication to the S2MM DRE
       -- Controller.

    mstr2dre_tag              : out std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The next command tag

    mstr2dre_dre_src_align    : Out std_logic_vector(C_DRE_ALIGN_WIDTH-1 downto 0) ;
       -- The source (S2MM Stream) alignment for the S2MM DRE

    mstr2dre_dre_dest_align   : Out std_logic_vector(C_DRE_ALIGN_WIDTH-1 downto 0) ;
       -- The destinstion (S2MM MMap) alignment for the S2MM DRE

    mstr2dre_btt              : out std_logic_vector(C_BTT_USED-1 downto 0) ;
       -- The BTT value output to the S2MM DRE. This is needed for
       -- Scatter operations.

    mstr2dre_drr              : out std_logic ;
       -- The starting tranfer of a sequence of transfers

    mstr2dre_eof              : out std_logic ;
       -- The endiing tranfer of a sequence of parent transfer commands

    mstr2dre_cmd_cmplt        : Out std_logic ;
       -- The last child tranfer of a sequence of transfers
       -- spawned from a single parent command

    mstr2dre_calc_error       : out std_logic
       -- Indication if the next command in the calculation pipe
       -- has a calculation error



    );

end entity axi_master_burst_pcc;


architecture implementation of axi_master_burst_pcc is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
-- Function declarations  -------------------

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_dbeat_residue_width
  --
  -- Function Description:
  --  Calculates the number of Least significant bits of the BTT field
  -- that are unused for the LEN calculation
  --
  -------------------------------------------------------------------
  function funct_get_dbeat_residue_width (bytes_per_beat : integer) return integer is

    Variable temp_dbeat_residue_width : Integer := 0; -- 8-bit stream

  begin

    case bytes_per_beat is
-- coverage off      
      when 32 =>
          temp_dbeat_residue_width := 5;
-- coverage on      
      when 16 =>
          temp_dbeat_residue_width := 4;
      when 8 =>
          temp_dbeat_residue_width := 3;
      when 4 =>
          temp_dbeat_residue_width := 2;
-- coverage off      
      when 2 =>
          temp_dbeat_residue_width := 1;
      when others =>  -- assume 1-byte transfers
          temp_dbeat_residue_width := 0;
-- coverage on      
    end case;

    Return (temp_dbeat_residue_width);

  end function funct_get_dbeat_residue_width;




  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: funct_get_burstcnt_offset
  --
  -- Function Description:
  -- Calculates the bit offset from the residue bits needed to detirmine
  -- the load value for the burst counter.
  --
  -------------------------------------------------------------------
  function funct_get_burst_residue_width (max_burst_len : integer) return integer is


    Variable temp_burst_residue_width : Integer := 0;

  begin

    case max_burst_len is

      when 256 =>
        temp_burst_residue_width := 8;
      when 128 =>
        temp_burst_residue_width := 7;
      when 64 =>
        temp_burst_residue_width := 6;
      when 32 =>
        temp_burst_residue_width := 5;
      when others =>   -- assume 16 dbeats
        temp_burst_residue_width := 4;
    end case;

    Return (temp_burst_residue_width);

  end function funct_get_burst_residue_width;


  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: func_get_axi_size
  --
  -- Function Description:
  -- Calculates the AXI SIZE Qualifier based on the data width.
  --
  -------------------------------------------------------------------
  function func_get_axi_size (native_dwidth : integer) return std_logic_vector is

    Constant AXI_SIZE_1BYTE    : std_logic_vector(2 downto 0) := "000";
    Constant AXI_SIZE_2BYTE    : std_logic_vector(2 downto 0) := "001";
    Constant AXI_SIZE_4BYTE    : std_logic_vector(2 downto 0) := "010";
    Constant AXI_SIZE_8BYTE    : std_logic_vector(2 downto 0) := "011";
    Constant AXI_SIZE_16BYTE   : std_logic_vector(2 downto 0) := "100";
    Constant AXI_SIZE_32BYTE   : std_logic_vector(2 downto 0) := "101";

    Variable temp_size : std_logic_vector(2 downto 0) := (others => '0');

  begin

     case native_dwidth is
-- coverage off       
       when 8 =>
         temp_size := AXI_SIZE_1BYTE;
       when 16 =>
         temp_size := AXI_SIZE_2BYTE;
-- coverage on       
       when 32 =>
         temp_size := AXI_SIZE_4BYTE;
       when 64 =>
         temp_size := AXI_SIZE_8BYTE;
       when 128 =>
         temp_size := AXI_SIZE_16BYTE;
-- coverage off       
       when others =>
         temp_size := AXI_SIZE_32BYTE;
-- coverage on       
     end case;

     Return (temp_size);


  end function func_get_axi_size;






  -- Constant Declarations  ----------------------------------------

  Constant BASE_CMD_WIDTH    : integer := 32; -- Bit Width of Command LS (no address)
  Constant CMD_BTT_WIDTH     : integer := C_BTT_USED;
  Constant CMD_BTT_LS_INDEX  : integer := 0;
  Constant CMD_BTT_MS_INDEX  : integer := CMD_BTT_WIDTH-1;
  Constant CMD_TYPE_INDEX    : integer := 23;
  Constant CMD_DRR_INDEX     : integer := BASE_CMD_WIDTH-1;
  Constant CMD_EOF_INDEX     : integer := BASE_CMD_WIDTH-2;
  Constant CMD_DSA_WIDTH     : integer := 6;
  Constant CMD_DSA_LS_INDEX  : integer := CMD_TYPE_INDEX+1;
  Constant CMD_DSA_MS_INDEX  : integer := (CMD_DSA_LS_INDEX+CMD_DSA_WIDTH)-1;
  Constant CMD_ADDR_LS_INDEX : integer := BASE_CMD_WIDTH;
  Constant CMD_ADDR_MS_INDEX : integer := (C_ADDR_WIDTH+BASE_CMD_WIDTH)-1;
  Constant CMD_TAG_WIDTH     : integer := C_TAG_WIDTH;
  Constant CMD_TAG_LS_INDEX  : integer := C_ADDR_WIDTH+BASE_CMD_WIDTH;
  Constant CMD_TAG_MS_INDEX  : integer := (CMD_TAG_LS_INDEX+CMD_TAG_WIDTH)-1;


  ----------------------------------------------------------------------------------------
  -- Command calculation constants

  Constant SIZE_TO_USE               : std_logic_vector(2 downto 0) := func_get_axi_size(C_STREAM_DWIDTH);
  Constant BYTES_PER_DBEAT           : integer := C_STREAM_DWIDTH/8;
  Constant DBEATS_PER_BURST          : integer := C_MAX_BURST_LEN;
  Constant BYTES_PER_MAX_BURST       : integer := DBEATS_PER_BURST*BYTES_PER_DBEAT;
  Constant LEN_WIDTH                 : integer  := 8;  -- 8 bits fixed
  Constant MAX_LEN_VALUE             : integer  := DBEATS_PER_BURST-1;
  Constant XFER_LEN_ZERO             : std_logic_vector(LEN_WIDTH-1 downto 0) := (others => '0');
  Constant DBEAT_RESIDUE_WIDTH       : integer  := funct_get_dbeat_residue_width(BYTES_PER_DBEAT);
  Constant BURST_RESIDUE_WIDTH       : integer  := funct_get_burst_residue_width(C_MAX_BURST_LEN);
  Constant BURST_RESIDUE_LS_INDEX    : integer  := DBEAT_RESIDUE_WIDTH;
  Constant BTT_RESIDUE_WIDTH         : integer  := DBEAT_RESIDUE_WIDTH+BURST_RESIDUE_WIDTH;
  Constant BTT_ZEROS                 : std_logic_vector(CMD_BTT_WIDTH-1 downto 0) := (others => '0');
  Constant BTT_RESIDUE_1             : unsigned := TO_UNSIGNED( 1, BTT_RESIDUE_WIDTH);
  Constant BTT_RESIDUE_0             : unsigned := TO_UNSIGNED( 0, BTT_RESIDUE_WIDTH);
  Constant BURST_CNT_LS_INDEX        : integer  := DBEAT_RESIDUE_WIDTH+BURST_RESIDUE_WIDTH;
  Constant BURST_CNTR_WIDTH          : integer  := CMD_BTT_WIDTH - (DBEAT_RESIDUE_WIDTH+BURST_RESIDUE_WIDTH); 
  Constant BRST_CNT_1                : unsigned := TO_UNSIGNED( 1, BURST_CNTR_WIDTH);
  Constant BRST_CNT_0                : unsigned := TO_UNSIGNED( 0, BURST_CNTR_WIDTH);
  Constant BRST_RESIDUE_0            : std_logic_vector(BURST_RESIDUE_WIDTH-1 downto 0) := (others => '0');
  Constant DBEAT_RESIDUE_0           : std_logic_vector(DBEAT_RESIDUE_WIDTH-1 downto 0) := (others => '0');
  Constant ADDR_CNTR_WIDTH           : integer  := 16;  -- Addres Counter slice
  Constant ADDR_MS_SLICE_WIDTH       : integer  := C_ADDR_WIDTH-ADDR_CNTR_WIDTH;
  Constant ADDR_CNTR_MAX_VALUE       : unsigned := TO_UNSIGNED((2**ADDR_CNTR_WIDTH)-1, ADDR_CNTR_WIDTH);
  Constant ADDR_CNTR_ONE             : unsigned := TO_UNSIGNED(1, ADDR_CNTR_WIDTH);
  Constant ADDR_CNTR_ONE_NEW         : unsigned := TO_UNSIGNED(1, C_ADDR_WIDTH-ADDR_CNTR_WIDTH);
  Constant MBAA_ADDR_SLICE_WIDTH     : integer := BTT_RESIDUE_WIDTH;
  Constant STRBGEN_ADDR_SLICE_WIDTH  : integer := DBEAT_RESIDUE_WIDTH;
  Constant STRBGEN_ADDR_0            : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');



  -- Type Declarations  --------------------------------------------

  type PCC_SM_STATE_TYPE is (
              INIT,
              WAIT_FOR_CMD,
              CALC_1,
              CALC_2,
              WAIT_ON_XFER_PUSH,
              CHK_IF_DONE,
              ERROR_TRAP
              );





  -- Signal Declarations  --------------------------------------------
  Signal sig_pcc_sm_state                 : PCC_SM_STATE_TYPE := INIT;
  Signal sig_pcc_sm_state_ns              : PCC_SM_STATE_TYPE := INIT;
  signal sig_sm_halt_ns                   : std_logic := '0';
  signal sig_sm_halt_reg                  : std_logic := '0';
  signal sig_sm_ld_xfer_reg_ns            : std_logic := '0';
  signal sig_sm_pop_input_reg_ns          : std_logic := '0';
  signal sig_sm_pop_input_reg             : std_logic := '0';
  signal sig_sm_ld_calc1_reg_ns           : std_logic := '0';
  signal sig_sm_ld_calc1_reg              : std_logic := '0';
  signal sig_sm_ld_calc2_reg_ns           : std_logic := '0';
  signal sig_sm_ld_calc2_reg              : std_logic := '0';
  signal sig_parent_done                  : std_logic := '0';
  signal sig_ld_xfer_reg                  : std_logic := '0';
  signal sig_btt_raw                      : std_logic := '0';
  signal sig_btt_is_zero                  : std_logic := '0';
  signal sig_btt_is_zero_reg              : std_logic := '0';
  signal sig_next_tag                     : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_addr                    : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_len                     : std_logic_vector(LEN_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_size                    : std_logic_vector(2 downto 0) := (others => '0');
  signal sig_next_burst                   : std_logic_vector(1 downto 0) := (others => '0');
  signal sig_next_strt_strb               : std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');
  signal sig_next_end_strb                : std_logic_vector((C_STREAM_DWIDTH/8)-1 downto 0) := (others => '0');

  ----------------------------------------------------------------------------------------
  -- Burst Buster signals
  signal sig_burst_cnt_slice              : unsigned(BURST_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_last_xfer_valid              : std_logic := '0';
  signal sig_brst_cnt_eq_zero             : std_logic := '0';
  signal sig_brst_cnt_eq_one              : std_logic := '0';
  signal sig_brst_residue_eq_zero         : std_logic := '0';
  signal sig_no_btt_residue               : std_logic := '0';
  signal sig_btt_residue_slice            : Unsigned(BTT_RESIDUE_WIDTH-1 downto 0) := (others => '0');

  -- Input command register
  signal sig_push_input_reg               : std_logic := '0';
  signal sig_pop_input_reg                : std_logic := '0';
  signal sig_input_burst_type_reg         : std_logic := '0';
  signal sig_input_btt_residue_minus1_reg : std_logic_vector(BTT_RESIDUE_WIDTH-1 downto 0) := (others => '0');
  signal sig_input_dsa_reg                : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  signal sig_input_drr_reg                : std_logic := '0';
  signal sig_input_eof_reg                : std_logic := '0';
  signal sig_input_tag_reg                : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_input_reg_empty              : std_logic := '0';
  signal sig_input_reg_full               : std_logic := '0';

  -- Output qualifier Register
  signal sig_ld_output                    : std_logic := '0';
  signal sig_push_xfer_reg                : std_logic := '0';
  signal sig_pop_xfer_reg                 : std_logic := '0';
  signal sig_xfer_addr_reg                : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_type_reg                : std_logic := '0';
  signal sig_xfer_len_reg                 : std_logic_vector(LEN_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_tag_reg                 : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_dsa_reg                 : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_drr_reg                 : std_logic := '0';
  signal sig_xfer_eof_reg                 : std_logic := '0';
  signal sig_xfer_strt_strb_reg           : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_end_strb_reg            : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_is_seq_reg              : std_logic := '0';
  signal sig_xfer_cmd_cmplt_reg           : std_logic := '0';
  signal sig_xfer_calc_err_reg            : std_logic := '0';
  signal sig_xfer_reg_empty               : std_logic := '0';
  signal sig_xfer_reg_full                : std_logic := '0';
                                          
  -- Address Counter                      
  signal sig_ld_addr_cntr                 : std_logic := '0';
  signal sig_incr_addr_cntr               : std_logic := '0';
  signal sig_addr_cntr_incr               : Unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_byte_change_minus1           : Unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');

  -- misc
  signal sig_xfer_len                     : std_logic_vector(LEN_WIDTH-1 downto 0);
  signal sig_xfer_strt_strb               : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_strt_strb2use           : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_end_strb                : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_end_strb2use            : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_address                 : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_size                    : std_logic_vector(2 downto 0) := (others => '0');
  signal sig_cmd_addr_slice               : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_btt_slice                : std_logic_vector(CMD_BTT_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_type_slice               : std_logic := '0';
  signal sig_cmd_tag_slice                : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_dsa_slice                : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd_drr_slice                : std_logic := '0';
  signal sig_cmd_eof_slice                : std_logic := '0';
  signal sig_calc_error_reg               : std_logic := '0';
  signal sig_calc_error_pushed            : std_logic := '0';

 -- PCC2 stuff
  signal sig_finish_addr_offset           : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_len_eq_0                : std_logic := '0';
  signal sig_first_xfer                   : std_logic := '0';
  signal sig_bytes_to_mbaa                : unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_lsh_rollover            : std_logic := '0';
  signal sig_predict_addr_lsh_slv         : std_logic_vector(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_predict_addr_lsh             : unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_cntr_lsh                : unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_cntr_lsh_slv            : std_logic_vector(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_cntr_msh                : unsigned(C_ADDR_WIDTH-ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_strbgen_addr                 : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
  signal sig_strbgen_bytes                : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH   downto 0) := (others => '0');
  signal sig_ld_btt_cntr                  : std_logic := '0';
  signal sig_decr_btt_cntr                : std_logic := '0';
  signal sig_btt_cntr                     : unsigned(CMD_BTT_WIDTH-1 downto 0) := (others => '0');
  signal sig_cmd2data_valid               : std_logic := '0';
  signal sig_clr_cmd2data_valid           : std_logic := '0';
  signal sig_cmd2addr_valid               : std_logic := '0';
  signal sig_clr_cmd2addr_valid           : std_logic := '0';
  signal sig_btt_lt_b2mbaa                : std_logic := '0';
  signal sig_btt_eq_b2mbaa                : std_logic := '0';
  signal sig_addr_incr_ge_bpdb            : std_logic := '0';

  -- Unaligned start address support
  signal sig_adjusted_addr_incr           : Unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_adjusted_addr_incr_reg       : Unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_start_addr_offset_slice      : Unsigned(DBEAT_RESIDUE_WIDTH-1 downto 0) := (others => '0');
  signal sig_mbaa_addr_cntr_slice         : Unsigned(MBAA_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_aligned                 : std_logic := '0';

  -- S2MM DRE Support
  signal sig_cmd2dre_valid                : std_logic := '0';
  signal sig_clr_cmd2dre_valid            : std_logic := '0';
  signal sig_input_xfer_btt               : std_logic_vector(CMD_BTT_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_btt_reg                 : std_logic_vector(CMD_BTT_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_dre_eof_reg             : std_logic := '0';

  -- Long Timing path breakup intermediate registers
  signal sig_strbgen_addr_reg             : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
  signal sig_strbgen_bytes_reg            : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH   downto 0) := (others => '0');
  signal sig_finish_addr_offset_reg       : std_logic_vector(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0) := (others => '0');
  signal sig_xfer_strt_strb_imreg         : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_end_strb_imreg          : std_logic_vector(BYTES_PER_DBEAT-1 downto 0) := (others => '0');
  signal sig_xfer_len_eq_0_reg            : std_logic := '0';

  signal sig_addr_cntr_incr_imreg         : Unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_predict_addr_lsh_imreg_slv   : std_logic_vector(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_predict_addr_lsh_im          : unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_predict_addr_lsh_imreg       : unsigned(ADDR_CNTR_WIDTH-1 downto 0) := (others => '0');
  signal sig_addr_lsh_rollover_im         : std_logic := '0';
  
  
  ----------------------------------------------------------






begin --(architecture implementation)



   -- Assign calculation error output
   calc_error               <= sig_calc_error_reg;

   -- Assign the ready output to the Command FIFO
   mst2cmd_cmd_ready        <= not(sig_sm_halt_reg) and
                               sig_input_reg_empty  and
                               not(sig_calc_error_pushed);

   -- Assign the Address Channel Controller Qualifiers
   mstr2addr_tag            <=  sig_xfer_tag_reg ;
   mstr2addr_addr           <=  sig_xfer_addr_reg;
   mstr2addr_len            <=  sig_xfer_len_reg ;
   mstr2addr_size           <=  sig_xfer_size    ;
   mstr2addr_burst          <=  '0' & sig_xfer_type_reg; -- only fixed or increment supported
   mstr2addr_cmd_valid      <=  sig_cmd2addr_valid;
   mstr2addr_calc_error     <=  sig_xfer_calc_err_reg;
   mstr2addr_cmd_cmplt      <=  sig_xfer_cmd_cmplt_reg;
   

   -- Assign the Data Channel Controller Qualifiers
   mstr2data_tag            <= sig_xfer_tag_reg      ;
   mstr2data_saddr_lsb      <= sig_xfer_addr_reg(C_SEL_ADDR_WIDTH-1 downto 0);
   mstr2data_len            <= sig_xfer_len_reg      ;
   mstr2data_strt_strb      <= sig_xfer_strt_strb_reg;
   mstr2data_last_strb      <= sig_xfer_end_strb_reg ;
   mstr2data_drr            <= sig_xfer_drr_reg      ;
   mstr2data_eof            <= sig_xfer_eof_reg      ;
   mstr2data_sequential     <= sig_xfer_is_seq_reg   ;
   mstr2data_cmd_cmplt      <= sig_xfer_cmd_cmplt_reg;
   mstr2data_cmd_valid      <= sig_cmd2data_valid    ;

   mstr2data_dre_src_align  <= sig_xfer_addr_reg(C_DRE_ALIGN_WIDTH-1 downto 0);  -- Used by MM2S DRE
   mstr2data_dre_dest_align <= sig_xfer_dsa_reg(C_DRE_ALIGN_WIDTH-1 downto 0);   -- Used by MM2S DRE

   mstr2data_calc_error     <= sig_xfer_calc_err_reg ;


   -- Assign the S2MM DRE Controller Qualifiers
   mstr2dre_cmd_valid       <= sig_cmd2dre_valid     ;                            -- Used by S2MM DRE
   mstr2dre_tag             <= sig_xfer_tag_reg      ;                            -- Used by S2MM DRE
   mstr2dre_btt             <= sig_xfer_btt_reg      ;                            -- Used by S2MM DRE
   mstr2dre_dre_src_align   <= sig_xfer_dsa_reg(C_DRE_ALIGN_WIDTH-1 downto 0) ;   -- Used by S2MM DRE
   mstr2dre_dre_dest_align  <= sig_xfer_addr_reg(C_DRE_ALIGN_WIDTH-1 downto 0);   -- Used by S2MM DRE
   mstr2dre_drr             <= sig_xfer_drr_reg      ;                            -- Used by S2MM DRE
   mstr2dre_eof             <= sig_xfer_dre_eof_reg  ;                            -- Used by S2MM DRE
   mstr2dre_cmd_cmplt       <= sig_xfer_cmd_cmplt_reg;                            -- Used by S2MM DRE
   mstr2dre_calc_error      <= sig_xfer_calc_err_reg ;                            -- Used by S2MM DRE



 -- Start internal logic.

  sig_cmd_type_slice        <=  '1';  -- always incrementing (per Interface_X guidelines)

  sig_cmd_addr_slice        <=  cmd2mstr_command(CMD_ADDR_MS_INDEX downto CMD_ADDR_LS_INDEX);
  sig_cmd_tag_slice         <=  cmd2mstr_command(CMD_TAG_MS_INDEX downto CMD_TAG_LS_INDEX);
  sig_cmd_btt_slice         <=  cmd2mstr_command(CMD_BTT_MS_INDEX downto CMD_BTT_LS_INDEX);

  sig_cmd_dsa_slice         <=  cmd2mstr_command(CMD_DSA_MS_INDEX downto CMD_DSA_LS_INDEX);
  sig_cmd_drr_slice         <=  cmd2mstr_command(CMD_DRR_INDEX);
  sig_cmd_eof_slice         <=  cmd2mstr_command(CMD_EOF_INDEX);



  -- Check for a zero length BTT (error condition)
  sig_btt_is_zero  <= '1'
    when  (sig_cmd_btt_slice = BTT_ZEROS)
    Else '0';

  sig_xfer_size <= SIZE_TO_USE;






  -----------------------------------------------------------------
  -- Input xfer register design

  sig_push_input_reg  <=  not(sig_sm_halt_reg) and
                          cmd2mstr_cmd_valid   and
                          sig_input_reg_empty  and
                          not(sig_calc_error_reg);

  sig_pop_input_reg   <= sig_sm_pop_input_reg;



  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: REG_INPUT_QUAL
  --
  -- Process Description:
  --  Implements the input command qualifier holding register
  --
  -------------------------------------------------------------
  REG_INPUT_QUAL : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset            = '1' or
              sig_pop_input_reg     = '1' or
              sig_calc_error_pushed = '1') then

            sig_input_burst_type_reg          <=  '0';
            sig_input_tag_reg                 <=  (others => '0');
            sig_input_dsa_reg                 <=  (others => '0');
            sig_input_drr_reg                 <=  '0';
            sig_input_eof_reg                 <=  '0';

            sig_input_reg_empty               <=  '1';
            sig_input_reg_full                <=  '0';

          elsif (sig_push_input_reg = '1') then

            sig_input_burst_type_reg          <=  sig_cmd_type_slice;
            sig_input_tag_reg                 <=  sig_cmd_tag_slice;
            sig_input_dsa_reg                 <=  sig_cmd_dsa_slice;
            sig_input_drr_reg                 <=  sig_cmd_drr_slice;
            sig_input_eof_reg                 <=  sig_cmd_eof_slice;

            sig_input_reg_empty               <=  '0';
            sig_input_reg_full                <=  '1';

          else
            null; -- Hold current State
          end if;
       end if;
     end process REG_INPUT_QUAL;





----------------------------------------------------------------------
-- Calculation Error Logic


-------------------------------------------------------------
-- Synchronous Process with Sync Reset
--
-- Label: IMP_CALC_ERROR_FLOP
--
-- Process Description:
--   Implements the flop for the Calc Error flag, Once set,
-- the flag cannot be cleared until a reset is issued.
--
-------------------------------------------------------------
IMP_CALC_ERROR_FLOP : process (primary_aclk)
   begin
     if (primary_aclk'event and primary_aclk = '1') then
        if (mmap_reset = '1') then
          sig_calc_error_reg <= '0';
        elsif (sig_push_input_reg = '1' and
               sig_calc_error_reg = '0') then
          sig_calc_error_reg <= sig_btt_is_zero;
        else
          Null;  -- hold the current state
        end if;
     end if;
   end process IMP_CALC_ERROR_FLOP;



-------------------------------------------------------------
-- Synchronous Process with Sync Reset
--
-- Label: IMP_CALC_ERROR_PUSHED
--
-- Process Description:
--   Implements the flop for generating a flag indicating the
-- calculation error flag has been pushed to the addr and data
-- controllers.
--
-------------------------------------------------------------
IMP_CALC_ERROR_PUSHED : process (primary_aclk)
   begin
     if (primary_aclk'event and primary_aclk = '1') then
        if (mmap_reset = '1') then
          sig_calc_error_pushed <= '0';
        elsif (sig_push_xfer_reg = '1' and
               sig_calc_error_pushed = '0') then
          sig_calc_error_pushed <= sig_calc_error_reg;
        else
          Null;  -- hold the current state
        end if;
     end if;
   end process IMP_CALC_ERROR_PUSHED;









---------------------------------------------------------------------
-- Strobe Generator Logic

 sig_xfer_strt_strb2use <=  sig_xfer_strt_strb_imreg
   When (sig_first_xfer = '1')
   Else (others => '1');

 sig_xfer_end_strb2use <= sig_xfer_strt_strb2use
   When (sig_xfer_len_eq_0_reg = '1' and
         sig_first_xfer    = '1')
   else sig_xfer_end_strb_imreg
   When (sig_last_xfer_valid = '1')
   Else (others => '1');


 
 
 
  ----------------------------------------------------------
  -- Intermediate registers for STBGEN Fmax path
 
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_IM_STBGEN_REGS
  --
  -- Process Description:
  --  Intermediate registers for Strobegen inputs to break
  -- long timing paths.
  --
  -------------------------------------------------------------
  IMP_IM_STBGEN_REGS : process (primary_aclk)
    begin
      if (primary_aclk'event and primary_aclk = '1') then
         if (mmap_reset = '1') then

           sig_strbgen_addr_reg       <= (others => '0');
           sig_strbgen_bytes_reg      <= (others => '0');
           sig_finish_addr_offset_reg <= (others => '0');
  
         elsif (sig_sm_ld_calc1_reg = '1') then

           sig_strbgen_addr_reg       <= sig_strbgen_addr;
           sig_strbgen_bytes_reg      <= sig_strbgen_bytes;
           sig_finish_addr_offset_reg <= sig_finish_addr_offset;
  
         else
  
           null;  -- hold state
  
         end if; 
      end if;       
    end process IMP_IM_STBGEN_REGS; 
 
 
 
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_IM_STBGEN_OUT_REGS
  --
  -- Process Description:
  --  Intermediate registers for Strobegen outputs to break
  -- long timing paths.
  --
  -------------------------------------------------------------
  IMP_IM_STBGEN_OUT_REGS : process (primary_aclk)
    begin
      if (primary_aclk'event and primary_aclk = '1') then
         if (mmap_reset = '1') then

           sig_xfer_strt_strb_imreg     <= (others => '0');
           sig_xfer_end_strb_imreg      <= (others => '0');
           sig_xfer_len_eq_0_reg        <= '0';
  
         elsif (sig_sm_ld_calc2_reg = '1') then

           sig_xfer_strt_strb_imreg      <= sig_xfer_strt_strb;
           sig_xfer_end_strb_imreg       <= sig_xfer_end_strb;
           sig_xfer_len_eq_0_reg         <= sig_xfer_len_eq_0;
  
         else
  
           null;  -- hold state
  
         end if; 
      end if;       
    end process IMP_IM_STBGEN_OUT_REGS; 
 
 
 
 
 
 
 
 
 
 

 ------------------------------------------------------------
 -- Instance: I_STRT_STRB_GEN
 --
 -- Description:
 --  Strobe generator instance
 --
 ------------------------------------------------------------
 I_STRT_STRB_GEN : entity axi_master_burst_v2_0_7.axi_master_burst_strb_gen
 generic map (

   C_ADDR_MODE       =>  0                          ,  --  0 = normal, 1 = Address only
   C_STRB_WIDTH      =>  BYTES_PER_DBEAT            ,  
   C_OFFSET_WIDTH    =>  STRBGEN_ADDR_SLICE_WIDTH   ,  
   C_NUM_BYTES_WIDTH =>  STRBGEN_ADDR_SLICE_WIDTH+1    

   )
 port map (

   start_addr_offset =>  sig_strbgen_addr_reg       ,  
   num_valid_bytes   =>  sig_strbgen_bytes_reg      ,  
   strb_out          =>  sig_xfer_strt_strb   

   );




 ------------------------------------------------------------
 -- Instance: I_END_STRB_GEN
 --
 -- Description:
 --  Strobe generator instance
 --
 ------------------------------------------------------------
 I_END_STRB_GEN : entity axi_master_burst_v2_0_7.axi_master_burst_strb_gen
 generic map (

   C_ADDR_MODE       =>  1                        ,  -- 0 = normal, 1 = Address only
   C_STRB_WIDTH      =>  BYTES_PER_DBEAT          ,  
   C_OFFSET_WIDTH    =>  STRBGEN_ADDR_SLICE_WIDTH ,  
   C_NUM_BYTES_WIDTH =>  STRBGEN_ADDR_SLICE_WIDTH    

   )
 port map (

   start_addr_offset =>  STRBGEN_ADDR_0             ,  
   num_valid_bytes   =>  sig_finish_addr_offset_reg ,  
   strb_out          =>  sig_xfer_end_strb           

   );








   -----------------------------------------------------------------
   -- Output xfer register design

   sig_push_xfer_reg <= (sig_ld_xfer_reg and sig_xfer_reg_empty);

                        -- Data taking xfer after Addr and DRE
   sig_pop_xfer_reg  <= (sig_clr_cmd2data_valid and not(sig_cmd2addr_valid) and not(sig_cmd2dre_valid))  or
                        -- Addr taking xfer after Data and DRE
                        (sig_clr_cmd2addr_valid and not(sig_cmd2data_valid) and not(sig_cmd2dre_valid))  or 
                        -- DRE taking xfer after Data and ADDR
                        (sig_clr_cmd2dre_valid  and not(sig_cmd2data_valid) and not(sig_cmd2addr_valid)) or  
                        
                        -- data and Addr taking xfer after DRE
                        (sig_clr_cmd2data_valid and sig_clr_cmd2addr_valid and not(sig_cmd2dre_valid))   or 
                        -- Addr and DRE taking xfer after Data
                        (sig_clr_cmd2addr_valid and sig_clr_cmd2dre_valid  and not(sig_cmd2data_valid))  or 
                        -- Data and DRE taking xfer after Addr
                        (sig_clr_cmd2data_valid and sig_clr_cmd2dre_valid  and not(sig_cmd2addr_valid))  or  
                        
                        -- Addr, Data,  and DRE all taking xfer
                        (sig_clr_cmd2data_valid and sig_clr_cmd2addr_valid and sig_clr_cmd2dre_valid);       



   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: REG_OUTPUT_QUAL
   --
   -- Process Description:
   --  Implements the output xfer qualifier holding register
   --
   -------------------------------------------------------------
   REG_OUTPUT_QUAL : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset        = '1' or
              (sig_pop_xfer_reg  = '1' and
               sig_push_xfer_reg = '0')) then

             sig_xfer_addr_reg       <=  (others => '0');
             sig_xfer_type_reg       <=  '0';
             sig_xfer_len_reg        <=  (others => '0');
             sig_xfer_tag_reg        <=  (others => '0');
             sig_xfer_dsa_reg        <=  (others => '0');
             sig_xfer_drr_reg        <=  '0';
             sig_xfer_eof_reg        <=  '0';
             sig_xfer_strt_strb_reg  <=  (others => '0');
             sig_xfer_end_strb_reg   <=  (others => '0');
             sig_xfer_is_seq_reg     <=  '0';
             sig_xfer_cmd_cmplt_reg  <=  '0';
             sig_xfer_calc_err_reg   <=  '0';
             sig_xfer_btt_reg        <=  (others => '0');
             sig_xfer_dre_eof_reg    <=  '0';

             sig_xfer_reg_empty      <=  '1';
             sig_xfer_reg_full       <=  '0';

           elsif (sig_push_xfer_reg = '1') then

             sig_xfer_addr_reg       <=  sig_xfer_address         ;
             sig_xfer_type_reg       <=  sig_input_burst_type_reg ;
             sig_xfer_len_reg        <=  sig_xfer_len             ;
             sig_xfer_tag_reg        <=  sig_input_tag_reg        ;
             sig_xfer_dsa_reg        <=  sig_input_dsa_reg        ;
             sig_xfer_drr_reg        <=  sig_input_drr_reg and
                                         sig_first_xfer           ;
             sig_xfer_eof_reg        <=  sig_input_eof_reg and
                                         sig_last_xfer_valid      ;
             sig_xfer_strt_strb_reg  <=  sig_xfer_strt_strb2use   ;
             sig_xfer_end_strb_reg   <=  sig_xfer_end_strb2use    ;
             sig_xfer_is_seq_reg     <=  not(sig_last_xfer_valid) ;
             sig_xfer_cmd_cmplt_reg  <=  sig_last_xfer_valid or
                                         sig_calc_error_reg       ;
             sig_xfer_calc_err_reg   <=  sig_calc_error_reg       ;
             sig_xfer_btt_reg        <=  sig_input_xfer_btt       ;
             sig_xfer_dre_eof_reg    <=  sig_input_eof_reg        ;

             sig_xfer_reg_empty      <=  '0';
             sig_xfer_reg_full       <=  '1';

           else
             null; -- Hold current State
           end if;
        end if;
      end process REG_OUTPUT_QUAL;





  --------------------------------------------------------------
  -- BTT Counter Logic


  sig_ld_btt_cntr   <= sig_ld_addr_cntr;

  sig_decr_btt_cntr <= sig_incr_addr_cntr;



  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_BTT_CNTR
  --
  -- Process Description:
  -- Bytes to transfer counter implementation.
  --
  -------------------------------------------------------------
  IMP_BTT_CNTR : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset = '1') then

            sig_btt_cntr <= (others => '0');

          elsif (sig_ld_btt_cntr = '1') then

            sig_btt_cntr <= UNSIGNED(sig_cmd_btt_slice);

          Elsif (sig_decr_btt_cntr = '1') Then

            sig_btt_cntr <= sig_btt_cntr-RESIZE(sig_addr_cntr_incr_imreg, CMD_BTT_WIDTH);

          else
            null;  -- hold current state
          end if;
       end if;
     end process IMP_BTT_CNTR;



  -- Convert to logic vector for the S2MM DRE use
  -- The DRE will only use this value prior to the first
  -- decrement of the BTT Counter. Using this saves a separate
  -- BTT register.
  sig_input_xfer_btt <= STD_LOGIC_VECTOR(sig_btt_cntr);


  -- Rip the Burst Count slice from BTT counter value
  sig_burst_cnt_slice <= sig_btt_cntr(CMD_BTT_WIDTH-1 downto BURST_CNT_LS_INDEX);



  sig_brst_cnt_eq_zero <= '1'
    When (sig_burst_cnt_slice = BRST_CNT_0)
    Else '0';

  sig_brst_cnt_eq_one <= '1'
    When (sig_burst_cnt_slice = BRST_CNT_1)
    Else '0';


  -- Rip the BTT residue field from the BTT counter value
  sig_btt_residue_slice   <=  sig_btt_cntr(BTT_RESIDUE_WIDTH-1 downto 0);



  -- Check for transfer length residue of zero prior to subtracting 1
  sig_no_btt_residue <= '1'
     when (sig_btt_residue_slice = BTT_RESIDUE_0)
     Else '0';


  -- Unaligned address compensation
  -- Add the number of starting address offset byte positions to the
  -- final byte change value needed to calculate the AXI LEN field

  sig_start_addr_offset_slice <=  sig_addr_cntr_lsh(DBEAT_RESIDUE_WIDTH-1 downto 0);

  sig_adjusted_addr_incr      <=  sig_addr_cntr_incr +
                                  RESIZE(sig_start_addr_offset_slice, ADDR_CNTR_WIDTH);







  -- adjust the address increment down by 1 byte to compensate
  -- for the LEN requirement of being N-1 data beats

  sig_byte_change_minus1 <=  sig_adjusted_addr_incr_reg-ADDR_CNTR_ONE;



  -- Rip the new transfer length value
  sig_xfer_len <=  STD_LOGIC_VECTOR(
                       RESIZE(
                          sig_byte_change_minus1(BTT_RESIDUE_WIDTH-1 downto
                                                 DBEAT_RESIDUE_WIDTH),
                       LEN_WIDTH)
                   );


  -- Check to see if the new xfer length is zero (1 data beat)
  sig_xfer_len_eq_0 <= '1'
    when (sig_xfer_len = XFER_LEN_ZERO)
    Else '0';



  -- Check for Last transfer condition
  sig_last_xfer_valid  <=  (sig_brst_cnt_eq_one and
                            sig_no_btt_residue  and
                            sig_addr_aligned)   or  -- always the last databeat case

                           ((sig_btt_lt_b2mbaa or sig_btt_eq_b2mbaa) and  -- less than a full burst remaining
                           (sig_brst_cnt_eq_zero and not(sig_no_btt_residue)));




  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_ADDR_32
  --
  -- If Generate Description:
  -- Implements the Address Counter logic for the 32-bit
  -- address width case. The address counters are split into two
  -- 16-bit sections to improve Fmax convergence.
  --
  --
  ------------------------------------------------------------
  GEN_ADDR_32 : if (C_ADDR_WIDTH = 32) generate


     begin


       -- Populate the transfer address value by concatonating the
       -- address counter segments
       sig_xfer_address <= STD_LOGIC_VECTOR(sig_addr_cntr_msh) &
                           STD_LOGIC_VECTOR(sig_addr_cntr_lsh);


       -- Rip the LS bits of the LS Address Counter for the StrobeGen
       -- starting address offset
       sig_strbgen_addr  <=  STD_LOGIC_VECTOR(sig_addr_cntr_lsh(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0));



       -- Check if the calcualted address increment (in bytes) is greater than the
       -- number of bytes that can be transfered per data beat
       sig_addr_incr_ge_bpdb <= '1'
         When (sig_addr_cntr_incr >= TO_UNSIGNED(BYTES_PER_DBEAT, ADDR_CNTR_WIDTH))
         Else '0';


       -- If the calculated address increment (in bytes) is greater than the
       -- number of bytes that can be transfered per data beat, then clip the
       -- strobegen byte value to the number of bytes per data beat, else use the
       -- increment value.
       sig_strbgen_bytes <=  STD_LOGIC_VECTOR(TO_UNSIGNED(BYTES_PER_DBEAT, STRBGEN_ADDR_SLICE_WIDTH+1))
         when (sig_addr_incr_ge_bpdb = '1')
         else STD_LOGIC_VECTOR(sig_addr_cntr_incr(STRBGEN_ADDR_SLICE_WIDTH downto 0));




       --------------------------------------------------------------------------
       -- Address Counter logic

       sig_ld_addr_cntr   <= sig_push_input_reg;

       -- don't increment address cntr if type is '0' (non-incrementing)
       sig_incr_addr_cntr <= sig_push_xfer_reg and
                             sig_input_burst_type_reg;



       sig_mbaa_addr_cntr_slice <= sig_addr_cntr_lsh(MBAA_ADDR_SLICE_WIDTH-1 downto 0);




       sig_bytes_to_mbaa <=  TO_UNSIGNED(BYTES_PER_MAX_BURST, ADDR_CNTR_WIDTH) -
                             RESIZE(sig_mbaa_addr_cntr_slice,ADDR_CNTR_WIDTH);



       sig_addr_aligned <= '1'
         when (sig_mbaa_addr_cntr_slice = BTT_RESIDUE_0)
         Else '0';




       -- Check to see if the jump to the Max Burst Aligned Address (mbaa) is less
       -- than or equal to the remaining bytes to transfer. If it is, then at least
       -- two tranfers have to be scheduled.
       sig_btt_lt_b2mbaa <= '1'
         when ((RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH) < sig_bytes_to_mbaa) and
               (sig_brst_cnt_eq_zero = '1'))

         Else '0';


       sig_btt_eq_b2mbaa <= '1'
         when ((RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH) = sig_bytes_to_mbaa) and
                (sig_brst_cnt_eq_zero = '1'))
         Else '0';



       -- Select the address counter increment value to use
       sig_addr_cntr_incr <= RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH)
         When (sig_btt_lt_b2mbaa = '1')
         else sig_bytes_to_mbaa
         when (sig_first_xfer = '1')
         else TO_UNSIGNED(BYTES_PER_MAX_BURST, ADDR_CNTR_WIDTH);



       -- calculate the next starting address after the current
       -- xfer completes
       sig_predict_addr_lsh     <=  sig_addr_cntr_lsh + sig_addr_cntr_incr;


       -- Predict next transfer's address offset for the Strobe Generator
       sig_finish_addr_offset   <= STD_LOGIC_VECTOR(sig_predict_addr_lsh(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0));


       sig_addr_cntr_lsh_slv    <= STD_LOGIC_VECTOR(sig_addr_cntr_lsh);



       -- Determine if an address count lsh rollover is going to occur when
       -- jumping to the next starting address by comparing the MS bit of the
       -- current address lsh to the MS bit of the predicted address lsh .
       -- A transition of a '1' to a '0' is a rollover.
       sig_addr_lsh_rollover_im <= '1'
         when (
               (sig_addr_cntr_lsh_slv(ADDR_CNTR_WIDTH-1)    = '1') and
               (sig_predict_addr_lsh_imreg_slv(ADDR_CNTR_WIDTH-1) = '0')
              )
         Else '0';




          
        
             
             
       ----------------------------------------------------------
       -- Intermediate registers for reducing the Address Counter 
       -- Increment timing path
       ----------------------------------------------------------
      

        -- calculate the next starting address after the current
        -- xfer completes using intermediate register values
        sig_predict_addr_lsh_im        <=  sig_addr_cntr_lsh + sig_addr_cntr_incr_imreg;
        
        sig_predict_addr_lsh_imreg_slv <= STD_LOGIC_VECTOR(sig_predict_addr_lsh_imreg);
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_IM_ADDRINC_REG
       --
       -- Process Description:
       --  Intermediate registers for address counter increment to 
       -- break long timing paths.
       --
       -------------------------------------------------------------
       IMP_IM_ADDRINC_REG : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset = '1') then

                sig_addr_cntr_incr_imreg   <= (others => '0');
       
              elsif (sig_sm_ld_calc1_reg = '1') then

                sig_addr_cntr_incr_imreg   <= sig_addr_cntr_incr;
       
              else
       
                null;  -- hold state
       
              end if; 
           end if;       
         end process IMP_IM_ADDRINC_REG; 
      
      
      
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_IM_PREDICT_ADDR_REG
       --
       -- Process Description:
       --  Intermediate register for predicted address to break up
       -- long timing paths.
       --
       -------------------------------------------------------------
       IMP_IM_PREDICT_ADDR_REG : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset = '1') then

                sig_predict_addr_lsh_imreg     <= (others => '0');
       
              elsif (sig_sm_ld_calc2_reg = '1') then

                sig_predict_addr_lsh_imreg     <= sig_predict_addr_lsh_im;
       
              else
       
                null;  -- hold state
       
              end if; 
           end if;       
         end process IMP_IM_PREDICT_ADDR_REG; 
      
      
      
      
      
      
      
           
           
           
           
        
        
        
        

       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: REG_ADDR_STUFF
       --
       -- Process Description:
       --  Implements a general register for address counter related
       -- things.
       --
       -------------------------------------------------------------
       REG_ADDR_STUFF : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_adjusted_addr_incr_reg <= (others => '0');

               else

                 sig_adjusted_addr_incr_reg <= sig_adjusted_addr_incr;

               end if;
            end if;
          end process REG_ADDR_STUFF;




       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_LSH_ADDR_CNTR
       --
       -- Process Description:
       -- Least Significant Half Address counter implementation.
       --
       -------------------------------------------------------------
       IMP_LSH_ADDR_CNTR : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_addr_cntr_lsh <= (others => '0');

               elsif (sig_ld_addr_cntr = '1') then

                 sig_addr_cntr_lsh <= UNSIGNED(sig_cmd_addr_slice(ADDR_CNTR_WIDTH-1 downto 0));

               Elsif (sig_incr_addr_cntr = '1') Then

                 sig_addr_cntr_lsh <= sig_predict_addr_lsh_imreg;

               else
                 null;  -- hold current state
               end if;
            end if;
          end process IMP_LSH_ADDR_CNTR;




       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_MSH_ADDR_CNTR
       --
       -- Process Description:
       -- Least Significant Half Address counter implementation.
       --
       -------------------------------------------------------------
       IMP_MSH_ADDR_CNTR : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_addr_cntr_msh <= (others => '0');

               elsif (sig_ld_addr_cntr = '1') then

                 sig_addr_cntr_msh <= UNSIGNED(sig_cmd_addr_slice(C_ADDR_WIDTH-1 downto ADDR_CNTR_WIDTH));

               Elsif (sig_incr_addr_cntr       = '1' and
                      sig_addr_lsh_rollover_im = '1') then

                 sig_addr_cntr_msh <= sig_addr_cntr_msh+ADDR_CNTR_ONE_NEW;

               else
                 null;  -- hold current state
               end if;
            end if;
          end process IMP_MSH_ADDR_CNTR;





      -------------------------------------------------------------
      -- Synchronous Process with Sync Reset
      --
      -- Label: IMP_FIRST_XFER_FLOP
      --
      -- Process Description:
      --  Implements the register flop for the first transfer flag.
      --
      -------------------------------------------------------------
      IMP_FIRST_XFER_FLOP : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset         = '1' or
                  sig_incr_addr_cntr = '1') then

                sig_first_xfer <= '0';

              elsif (sig_ld_addr_cntr = '1') then

                sig_first_xfer <= '1';

              else
                null;  -- hold current state
              end if;
           end if;
         end process IMP_FIRST_XFER_FLOP;



     end generate GEN_ADDR_32;









  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_ADDR_GT_32
  --
  -- If Generate Description:
  -- Implements the Address Counter logic for the case when
  -- the address width is greater than 32 bits.
  --
  ------------------------------------------------------------
  GEN_ADDR_GT_32 : if (C_ADDR_WIDTH > 32) generate


     begin

       -- No support for greater than 32-bit address
       -- Populate the transfer address value by concatonating the
       -- address counter segments
       sig_xfer_address <= STD_LOGIC_VECTOR(sig_addr_cntr_msh) &
                           STD_LOGIC_VECTOR(sig_addr_cntr_lsh);


       -- Rip the LS bits of the LS Address Counter for the StrobeGen
       -- starting address offset
       sig_strbgen_addr  <=  STD_LOGIC_VECTOR(sig_addr_cntr_lsh(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0));



       -- Check if the calcualted address increment (in bytes) is greater than the
       -- number of bytes that can be transfered per data beat
       sig_addr_incr_ge_bpdb <= '1'
         When (sig_addr_cntr_incr >= TO_UNSIGNED(BYTES_PER_DBEAT, ADDR_CNTR_WIDTH))
         Else '0';


       -- If the calculated address increment (in bytes) is greater than the
       -- number of bytes that can be transfered per data beat, then clip the
       -- strobegen byte value to the number of bytes per data beat, else use the
       -- increment value.
       sig_strbgen_bytes <=  STD_LOGIC_VECTOR(TO_UNSIGNED(BYTES_PER_DBEAT, STRBGEN_ADDR_SLICE_WIDTH+1))
         when (sig_addr_incr_ge_bpdb = '1')
         else STD_LOGIC_VECTOR(sig_addr_cntr_incr(STRBGEN_ADDR_SLICE_WIDTH downto 0));




       --------------------------------------------------------------------------
       -- Address Counter logic

       sig_ld_addr_cntr   <= sig_push_input_reg;

       -- don't increment address cntr if type is '0' (non-incrementing)
       sig_incr_addr_cntr <= sig_push_xfer_reg and
                             sig_input_burst_type_reg;



       sig_mbaa_addr_cntr_slice <= sig_addr_cntr_lsh(MBAA_ADDR_SLICE_WIDTH-1 downto 0);




       sig_bytes_to_mbaa <=  TO_UNSIGNED(BYTES_PER_MAX_BURST, ADDR_CNTR_WIDTH) -
                             RESIZE(sig_mbaa_addr_cntr_slice,ADDR_CNTR_WIDTH);



       sig_addr_aligned <= '1'
         when (sig_mbaa_addr_cntr_slice = BTT_RESIDUE_0)
         Else '0';




       -- Check to see if the jump to the Max Burst Aligned Address (mbaa) is less
       -- than or equal to the remaining bytes to transfer. If it is, then at least
       -- two tranfers have to be scheduled.
       sig_btt_lt_b2mbaa <= '1'
         when ((RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH) < sig_bytes_to_mbaa) and
               (sig_brst_cnt_eq_zero = '1'))

         Else '0';


       sig_btt_eq_b2mbaa <= '1'
         when ((RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH) = sig_bytes_to_mbaa) and
                (sig_brst_cnt_eq_zero = '1'))
         Else '0';



       -- Select the address counter increment value to use
       sig_addr_cntr_incr <= RESIZE(sig_btt_residue_slice, ADDR_CNTR_WIDTH)
         When (sig_btt_lt_b2mbaa = '1')
         else sig_bytes_to_mbaa
         when (sig_first_xfer = '1')
         else TO_UNSIGNED(BYTES_PER_MAX_BURST, ADDR_CNTR_WIDTH);



       -- calculate the next starting address after the current
       -- xfer completes
       sig_predict_addr_lsh     <=  sig_addr_cntr_lsh + sig_addr_cntr_incr;


       -- Predict next transfer's address offset for the Strobe Generator
       sig_finish_addr_offset   <= STD_LOGIC_VECTOR(sig_predict_addr_lsh(STRBGEN_ADDR_SLICE_WIDTH-1 downto 0));


       sig_addr_cntr_lsh_slv    <= STD_LOGIC_VECTOR(sig_addr_cntr_lsh);



       -- Determine if an address count lsh rollover is going to occur when
       -- jumping to the next starting address by comparing the MS bit of the
       -- current address lsh to the MS bit of the predicted address lsh .
       -- A transition of a '1' to a '0' is a rollover.
       sig_addr_lsh_rollover_im <= '1'
         when (
               (sig_addr_cntr_lsh_slv(ADDR_CNTR_WIDTH-1)    = '1') and
               (sig_predict_addr_lsh_imreg_slv(ADDR_CNTR_WIDTH-1) = '0')
              )
         Else '0';




          
        
             
             
       ----------------------------------------------------------
       -- Intermediate registers for reducing the Address Counter 
       -- Increment timing path
       ----------------------------------------------------------
      

        -- calculate the next starting address after the current
        -- xfer completes using intermediate register values
        sig_predict_addr_lsh_im        <=  sig_addr_cntr_lsh + sig_addr_cntr_incr_imreg;
        
        sig_predict_addr_lsh_imreg_slv <= STD_LOGIC_VECTOR(sig_predict_addr_lsh_imreg);
       
       
       
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_IM_ADDRINC_REG
       --
       -- Process Description:
       --  Intermediate registers for address counter increment to 
       -- break long timing paths.
       --
       -------------------------------------------------------------
       IMP_IM_ADDRINC_REG : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset = '1') then

                sig_addr_cntr_incr_imreg   <= (others => '0');
       
              elsif (sig_sm_ld_calc1_reg = '1') then

                sig_addr_cntr_incr_imreg   <= sig_addr_cntr_incr;
       
              else
       
                null;  -- hold state
       
              end if; 
           end if;       
         end process IMP_IM_ADDRINC_REG; 
      
      
      
       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_IM_PREDICT_ADDR_REG
       --
       -- Process Description:
       --  Intermediate register for predicted address to break up
       -- long timing paths.
       --
       -------------------------------------------------------------
       IMP_IM_PREDICT_ADDR_REG : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset = '1') then

                sig_predict_addr_lsh_imreg     <= (others => '0');
       
              elsif (sig_sm_ld_calc2_reg = '1') then

                sig_predict_addr_lsh_imreg     <= sig_predict_addr_lsh_im;
       
              else
       
                null;  -- hold state
       
              end if; 
           end if;       
         end process IMP_IM_PREDICT_ADDR_REG; 
      
      
      
      
      
      
      
           
           
           
           
        
        
        
        

       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: REG_ADDR_STUFF
       --
       -- Process Description:
       --  Implements a general register for address counter related
       -- things.
       --
       -------------------------------------------------------------
       REG_ADDR_STUFF : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_adjusted_addr_incr_reg <= (others => '0');

               else

                 sig_adjusted_addr_incr_reg <= sig_adjusted_addr_incr;

               end if;
            end if;
          end process REG_ADDR_STUFF;




       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_LSH_ADDR_CNTR
       --
       -- Process Description:
       -- Least Significant Half Address counter implementation.
       --
       -------------------------------------------------------------
       IMP_LSH_ADDR_CNTR : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_addr_cntr_lsh <= (others => '0');

               elsif (sig_ld_addr_cntr = '1') then

                 sig_addr_cntr_lsh <= UNSIGNED(sig_cmd_addr_slice(ADDR_CNTR_WIDTH-1 downto 0));

               Elsif (sig_incr_addr_cntr = '1') Then

                 sig_addr_cntr_lsh <= sig_predict_addr_lsh_imreg;

               else
                 null;  -- hold current state
               end if;
            end if;
          end process IMP_LSH_ADDR_CNTR;




       -------------------------------------------------------------
       -- Synchronous Process with Sync Reset
       --
       -- Label: IMP_MSH_ADDR_CNTR
       --
       -- Process Description:
       -- Least Significant Half Address counter implementation.
       --
       -------------------------------------------------------------
       IMP_MSH_ADDR_CNTR : process (primary_aclk)
          begin
            if (primary_aclk'event and primary_aclk = '1') then
               if (mmap_reset = '1') then

                 sig_addr_cntr_msh <= (others => '0');

               elsif (sig_ld_addr_cntr = '1') then

                 sig_addr_cntr_msh <= UNSIGNED(sig_cmd_addr_slice(C_ADDR_WIDTH-1 downto ADDR_CNTR_WIDTH));


               Elsif (sig_incr_addr_cntr       = '1' and
                      sig_addr_lsh_rollover_im = '1') then

                 sig_addr_cntr_msh <= sig_addr_cntr_msh+ADDR_CNTR_ONE_NEW;


               else
                 null;  -- hold current state
               end if;
            end if;
          end process IMP_MSH_ADDR_CNTR;





      -------------------------------------------------------------
      -- Synchronous Process with Sync Reset
      --
      -- Label: IMP_FIRST_XFER_FLOP
      --
      -- Process Description:
      --  Implements the register flop for the first transfer flag.
      --
      -------------------------------------------------------------
      IMP_FIRST_XFER_FLOP : process (primary_aclk)
         begin
           if (primary_aclk'event and primary_aclk = '1') then
              if (mmap_reset         = '1' or
                  sig_incr_addr_cntr = '1') then

                sig_first_xfer <= '0';

              elsif (sig_ld_addr_cntr = '1') then

                sig_first_xfer <= '1';

              else
                null;  -- hold current state
              end if;
           end if;
         end process IMP_FIRST_XFER_FLOP;




     end generate GEN_ADDR_GT_32;







  -- Addr and data Cntlr FIFO interface handshake logic ------------------------------

   sig_clr_cmd2data_valid    <= sig_cmd2data_valid and data2mstr_cmd_ready;

   sig_clr_cmd2addr_valid    <= sig_cmd2addr_valid and addr2mstr_cmd_ready;

   sig_clr_cmd2dre_valid     <= sig_cmd2dre_valid  and dre2mstr_cmd_ready;



   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: CMD2DATA_VALID_FLOP
   --
   -- Process Description:
   --  Implements the set/reset flop for the Command Valid control
   -- to the Data Controller Module.
   --
   -------------------------------------------------------------
   CMD2DATA_VALID_FLOP : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset             = '1' or
               sig_clr_cmd2data_valid = '1') then

             sig_cmd2data_valid <= '0';

           elsif (sig_push_xfer_reg = '1') then

             sig_cmd2data_valid <= '1';

           else
             null; -- hold current state
           end if;
        end if;
      end process CMD2DATA_VALID_FLOP;




   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: CMD2ADDR_VALID_FLOP
   --
   -- Process Description:
   --  Implements the set/reset flop for the Command Valid control
   -- to the Address Controller Module.
   --
   -------------------------------------------------------------
   CMD2ADDR_VALID_FLOP : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset             = '1' or
               sig_clr_cmd2addr_valid = '1') then

             sig_cmd2addr_valid <= '0';

           elsif (sig_push_xfer_reg = '1') then

             sig_cmd2addr_valid <= '1';

           else
             null; -- hold current state
           end if;
        end if;
      end process CMD2ADDR_VALID_FLOP;







   -------------------------------------------------------------
   -- Synchronous Process with Sync Reset
   --
   -- Label: CMD2DRE_VALID_FLOP
   --
   -- Process Description:
   --  Implements the set/reset flop for the Command Valid control
   -- to the DRE Module (S2MM DRE Only).
   --
   -- Note that the S2MM DRE only needs to be loaded with a command
   -- for each parent command, not every child command.
   --
   -------------------------------------------------------------
   CMD2DRE_VALID_FLOP : process (primary_aclk)
      begin
        if (primary_aclk'event and primary_aclk = '1') then
           if (mmap_reset            = '1' or
               sig_clr_cmd2dre_valid = '1') then

             sig_cmd2dre_valid <= '0';

           elsif (sig_push_xfer_reg = '1' and
                  sig_first_xfer    = '1') then

             sig_cmd2dre_valid <= '1';

           else
             null; -- hold current state
           end if;
        end if;
      end process CMD2DRE_VALID_FLOP;









  -------------------------------------------------------------------------
  -- PCC State machine Logic





  -------------------------------------------------------------
  -- Combinational Process
  --
  -- Label: PCC_SM_COMBINATIONAL
  --
  -- Process Description:
  -- PCC State Machine combinational implementation
  --
  -------------------------------------------------------------
  PCC_SM_COMBINATIONAL : process (sig_pcc_sm_state     ,
                                  sig_parent_done      ,
                                  sig_push_input_reg   ,
                                  sig_push_xfer_reg    ,
                                  sig_calc_error_pushed)
     begin

       -- SM Defaults
       sig_pcc_sm_state_ns     <=  INIT;
       sig_sm_halt_ns          <=  '0';
       sig_sm_ld_xfer_reg_ns   <=  '0';
       sig_sm_pop_input_reg_ns <=  '0';
       sig_sm_ld_calc1_reg_ns  <=  '0';
       sig_sm_ld_calc2_reg_ns  <=  '0';


       case sig_pcc_sm_state is

         --------------------------------------------
         when INIT =>

           sig_pcc_sm_state_ns  <=  WAIT_FOR_CMD;
           sig_sm_halt_ns       <=  '1';

         --------------------------------------------
         when WAIT_FOR_CMD =>

           If (sig_push_input_reg = '1') Then

             sig_pcc_sm_state_ns     <=  CALC_1;
             sig_sm_ld_calc1_reg_ns  <=  '1';


           else

             sig_pcc_sm_state_ns <=  WAIT_FOR_CMD;

           End if;

         --------------------------------------------
         when CALC_1 =>

           sig_pcc_sm_state_ns     <=  CALC_2;
           sig_sm_ld_calc2_reg_ns  <=  '1';
           

         --------------------------------------------
         when CALC_2 =>

           sig_pcc_sm_state_ns    <=  WAIT_ON_XFER_PUSH;
           sig_sm_ld_xfer_reg_ns  <= '1';


         --------------------------------------------
         when WAIT_ON_XFER_PUSH =>

           if (sig_push_xfer_reg = '1') then

             sig_pcc_sm_state_ns <=  CHK_IF_DONE;

           else  -- wait until output register is loaded

             sig_pcc_sm_state_ns <=  WAIT_ON_XFER_PUSH;


           end if;


         --------------------------------------------
         when CHK_IF_DONE =>

           If (sig_calc_error_pushed = '1') then -- Internal error, go to trap

             sig_pcc_sm_state_ns <=  ERROR_TRAP;
             sig_sm_halt_ns      <=  '1';

           elsif (sig_parent_done = '1') Then  -- done with parent command

             sig_pcc_sm_state_ns     <=  WAIT_FOR_CMD;
             sig_sm_pop_input_reg_ns <= '1';

           else  -- Still breaking up parent command

             sig_pcc_sm_state_ns     <=  CALC_1;
             sig_sm_ld_calc1_reg_ns  <=  '1';

           end if;


         --------------------------------------------
         when ERROR_TRAP =>

           sig_pcc_sm_state_ns <=  ERROR_TRAP;
           sig_sm_halt_ns      <=  '1';

         --------------------------------------------
         when others =>

           sig_pcc_sm_state_ns <=  INIT;

       end case;



     end process PCC_SM_COMBINATIONAL;




  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: PCC_SM_REGISTERED
  --
  -- Process Description:
  -- PCC State Machine registered implementation
  --
  -------------------------------------------------------------
  PCC_SM_REGISTERED : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset = '1') then

            sig_pcc_sm_state     <= INIT;
            sig_sm_halt_reg      <= '1' ;
            sig_sm_pop_input_reg <= '0' ;
            sig_sm_ld_calc1_reg  <= '0' ;
            sig_sm_ld_calc2_reg  <= '0' ;

          else

            sig_pcc_sm_state     <=  sig_pcc_sm_state_ns    ;
            sig_sm_halt_reg      <=  sig_sm_halt_ns         ;
            sig_sm_pop_input_reg <=  sig_sm_pop_input_reg_ns;
            sig_sm_ld_calc1_reg  <=  sig_sm_ld_calc1_reg_ns ;
            sig_sm_ld_calc2_reg  <=  sig_sm_ld_calc2_reg_ns ;

          end if;
       end if;
     end process PCC_SM_REGISTERED;









  ------------------------------------------------------------------
  -- Transfer Register Load Enable logic


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: LD_XFER_REG_FLOP
  --
  -- Process Description:
  -- Sample and Hold FLOP for signaling a load of the output
  -- xfer register.
  --
  -------------------------------------------------------------
  LD_XFER_REG_FLOP : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset        = '1' or
              sig_push_xfer_reg = '1') then

            sig_ld_xfer_reg <=  '0';

          Elsif (sig_sm_ld_xfer_reg_ns = '1') Then

            sig_ld_xfer_reg <=  '1';

          else

            null;   -- hold current state

          end if;
       end if;
     end process LD_XFER_REG_FLOP;






  ------------------------------------------------------------------
  -- Parent Done flag logic


  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: PARENT_DONE_FLOP
  --
  -- Process Description:
  -- Sample and Hold FLOP for signaling a load of the output
  -- xfer register.
  --
  -------------------------------------------------------------
  PARENT_DONE_FLOP : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset         = '1' or
              sig_push_input_reg = '1') then

            sig_parent_done <=  '0';

          Elsif (sig_push_xfer_reg = '1') Then

            sig_parent_done <=  sig_last_xfer_valid;

          else

            null;   -- hold current state

          end if;
       end if;
     end process PARENT_DONE_FLOP;











end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

  -- Filename:        axi_master_burst_first_stb_offset.vhd
  --
  -- Description:     
  --    This file implements a module to find the address offset of the first 
  --    strobe bit asserted active high on the input strobe bus. This module 
  --    does not support sparse strobe assertions (asserted strobes must be 
  --    contiguous with each other).              
  --                  
  -- VHDL-Standard:   VHDL'93
  -------------------------------------------------------------------------------
  -- Structure:   
  --              axi_master_burst_first_stb_offset.vhd
  --
  -------------------------------------------------------------------------------
  -- Revision History:
  --
  --
  -- Author:          DET
  -- Revision:        $Revision: 1.0 $
  -- Date:            $1/19/2011$
  --
  -- History:
  --     DET     1/19/2011     Initial
  -- ~~~~~~
  --     - Adapted from AXI DataMover v2_00_a axi_datamvore_stbs_set.vhd
  -- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
  --
  -------------------------------------------------------------------------------
  library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;
  


  
  -------------------------------------------------------------------------------
  
  entity axi_master_burst_first_stb_offset is
    generic (
      
      C_STROBE_WIDTH    : Integer range 1 to 32 := 8;
        -- Specifies the width (in bits) ob the input strobe bus.
      C_OFFSET_WIDTH    : Integer range 1 to 16 := 8
        -- Indicates the bit width of the offset output port
      
      );
    port (
      
      tstrb_in          : in  std_logic_vector(C_STROBE_WIDTH-1 downto 0);
        -- Input Strobe bus
     
      first_offset      : Out unsigned(C_OFFSET_WIDTH-1 downto 0)
        -- Offset output port
     
 
      );
  
  end entity axi_master_burst_first_stb_offset;
  
  
  architecture implementation of axi_master_burst_first_stb_offset is
  
attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
    
    -- Function Declarations
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_4bit_first_be_set
    --
    -- Function Description:
    --  Implements an 4-bit lookup table for calculating the index
    -- of the first BE asserted within an 4-bit BE vector.
    --
    -- Note that this function assumes that asserted strobes are 
    -- contiguous with each other (no sparse strobe assertions). 
    --
    -------------------------------------------------------------------
    function funct_4bit_first_be_set (be_4bit : std_logic_vector(3 downto 0)) return Integer is
    
      
      Variable lvar_first_be_set : Integer range 0 to 3 := 0;
    
    begin
    
      case be_4bit is
        
        -- -------  0 bit --------------------------
        -- when "0001" | "0011" | "0111" | "1111" =>
        -- 
        --   lvar_first_be_set := 0;
        
        
        -------  1 bit --------------------------
        when "0010" | "0110" | "1110"  =>
        
          lvar_first_be_set := 1;
        
        
        -------  2 bit --------------------------
        when "0100" | "1100" =>
        
          lvar_first_be_set := 2;
        
        
        -------  3 bit --------------------------
        when "1000" =>
        
          lvar_first_be_set := 3;
        
        
        ------- bit 0, or all zeros, or sparse strobes ------
        When others =>  
        
          lvar_first_be_set := 0;
        
      end case;
      
      
      Return (lvar_first_be_set);
       
       
      
    end function funct_4bit_first_be_set;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_8bit_first_be_set
    --
    -- Function Description:
    --  Implements an 8-bit lookup table for calculating the index
    -- of the first BE asserted within an 8-bit BE vector.
    --
    -- Note that this function assumes that asserted strobes are 
    -- contiguous with each other (no sparse strobe assertions). 
    --
    -------------------------------------------------------------------
    function funct_8bit_first_be_set(be_8bit : std_logic_vector(7 downto 0)) return integer is
    
      
      Variable lvar_first_be_set : Integer range 0 to 7 := 0;
    
    begin
    
      case be_8bit is
        
        -- -------  0 bit --------------------------
        -- when "00000001" | "00000011" | "00000111" | "00001111" | 
        --      "00011111" | "00111111" | "01111111" | "11111111" =>
        -- 
        --   lvar_first_be_set := 0;
        
        
        -------  1 bit --------------------------
        when "00000010" | "00000110" | "00001110" | "00011110" | 
             "00111110" | "01111110" | "11111110"  =>
        
          lvar_first_be_set := 1;
        
        
        -------  2 bit --------------------------
        when "00000100" | "00001100" | "00011100" | "00111100" | 
             "01111100" | "11111100"   =>
        
          lvar_first_be_set := 2;
        
        
        -------  3 bit --------------------------
        when "00001000" | "00011000" | "00111000" | "01111000" | 
             "11111000"    =>
        
          lvar_first_be_set := 3;
        
        
        -------  4 bit --------------------------
        when "00010000" | "00110000" | "01110000" | "11110000"  =>
        
          lvar_first_be_set := 4;
        
        
        -------  5 bit --------------------------
        when "00100000" | "01100000" | "11100000"  =>
        
          lvar_first_be_set := 5;
        
        
        -------  6 bit --------------------------
        when "01000000" | "11000000"   =>
        
          lvar_first_be_set := 6;
        
        
        -------  7 bit --------------------------
        when "10000000"    =>
        
          lvar_first_be_set := 7;
        
        
        ------- bit 0, or all zeros, or sparse strobes ------
        When others =>  
        
          lvar_first_be_set := 0;
        
      end case;
      
      
      Return (lvar_first_be_set);
       
       
      
    end function funct_8bit_first_be_set;
    
    
    
    
    -------------------------------------------------------------------
    -- Function
    --
    -- Function Name: funct_16bit_first_be_set
    --
    -- Function Description:
    --  Implements an 16-bit lookup table for calculating the index
    -- of the first BE asserted within an 16-bit BE vector.
    --
    -- Note that this function assumes that asserted strobes are 
    -- contiguous with each other (no sparse strobe assertions). 
    --
    -------------------------------------------------------------------
    function funct_16bit_first_be_set(be_16bit : std_logic_vector(15 downto 0)) return integer is
    
      
      Variable lvar_first_be_set : Integer range 0 to 15 := 0;
    
    begin
    
      case be_16bit is
        
        ---------  0 bit --------------------------
        --when "0000000000000001" | "0000000000000011" | "0000000000000111" | "0000000000001111" | 
        --     "0000000000011111" | "0000000000111111" | "0000000001111111" | "0000000011111111" | 
        --     "0000000111111111" | "0000001111111111" | "0000011111111111" | "0000111111111111" | 
        --     "0001111111111111" | "0011111111111111" | "0111111111111111" | "1111111111111111" =>
        --
        --  lvar_first_be_set := 0;
        
        
        -------  1 bit --------------------------
        when "0000000000000010" | "0000000000000110" | "0000000000001110" | "0000000000011110" | 
             "0000000000111110" | "0000000001111110" | "0000000011111110" | "0000000111111110" |
             "0000001111111110" | "0000011111111110" | "0000111111111110" | "0001111111111110" | 
             "0011111111111110" | "0111111111111110" | "1111111111111110"  =>
        
          lvar_first_be_set := 1;
        
        
        -------  2 bit --------------------------
        when "0000000000000100" | "0000000000001100" | "0000000000011100" | "0000000000111100" | 
             "0000000001111100" | "0000000011111100" | "0000000111111100" | "0000001111111100" |
             "0000011111111100" | "0000111111111100" | "0001111111111100" | "0011111111111100" |
             "0111111111111100" | "1111111111111100" =>
        
          lvar_first_be_set := 2;
        
        
        -------  3 bit --------------------------
        when "0000000000001000" | "0000000000011000" | "0000000000111000" | "0000000001111000" | 
             "0000000011111000" | "0000000111111000" | "0000001111111000" | "0000011111111000" |
             "0000111111111000" | "0001111111111000" | "0011111111111000" | "0111111111111000" |
             "1111111111111000" =>
        
          lvar_first_be_set := 3;
        
        
        -------  4 bit --------------------------
        when "0000000000010000" | "0000000000110000" | "0000000001110000" | "0000000011110000"  |
             "0000000111110000" | "0000001111110000" | "0000011111110000" | "0000111111110000"  |
             "0001111111110000" | "0011111111110000" | "0111111111110000" | "1111111111110000" =>
        
          lvar_first_be_set := 4;
        
        
        -------  5 bit --------------------------
        when "0000000000100000" | "0000000001100000" | "0000000011100000" | "0000000111100000" |
             "0000001111100000" | "0000011111100000" | "0000111111100000" | "0001111111100000" |
             "0011111111100000" | "0111111111100000" | "1111111111100000" =>
        
          lvar_first_be_set := 5;
        
        
        -------  6 bit --------------------------
        when "0000000001000000" | "0000000011000000" | "0000000111000000" | "0000001111000000" |
             "0000011111000000" | "0000111111000000" | "0001111111000000" | "0011111111000000" |
             "0111111111000000" | "1111111111000000" =>
        
          lvar_first_be_set := 6;
        
        
        -------  7 bit --------------------------
        when "0000000010000000" | "0000000110000000" | "0000001110000000" | "0000011110000000" |
             "0000111110000000" | "0001111110000000" | "0011111110000000" | "0111111110000000"  |
             "1111111110000000" =>
        
          lvar_first_be_set := 7;
        
        
        -------  8 bit --------------------------
        when "0000000100000000" | "0000001100000000" | "0000011100000000" | "0000111100000000" |
             "0001111100000000" | "0011111100000000" | "0111111100000000" | "1111111100000000"  =>
        
          lvar_first_be_set := 8;
        
        
        
        -------  9 bit --------------------------
        when "0000001000000000" | "0000011000000000" | "0000111000000000" | "0001111000000000" |
             "0011111000000000" | "0111111000000000" | "1111111000000000"  =>
        
          lvar_first_be_set := 9;
      
        
        -------  10 bit --------------------------
        when "0000010000000000" | "0000110000000000" | "0001110000000000" | "0011110000000000" |
             "0111110000000000" | "1111110000000000"  =>
        
          lvar_first_be_set := 10;
      
        
        -------  11 bit --------------------------
        when "0000100000000000" | "0001100000000000" | "0011100000000000" | "0111100000000000" |
             "1111100000000000" =>
        
          lvar_first_be_set := 11;
        
        
        -------  12 bit --------------------------
        when "0001000000000000" | "0011000000000000" | "0111000000000000" | "1111000000000000" =>
        
          lvar_first_be_set := 12;
        
        
        -------  13 bit --------------------------
        when "0010000000000000" | "0110000000000000" | "1110000000000000" =>
        
          lvar_first_be_set := 13;
        
        
        -------  14 bit --------------------------
        when "0100000000000000" | "1100000000000000" =>
        
          lvar_first_be_set := 14;
        
        
        -------  15 bit --------------------------
        when "1000000000000000" =>
        
          lvar_first_be_set := 15;
        

        
        ------- Bit 0, or all zeros, or sparse strobes ------
        When others =>  
        
          lvar_first_be_set := 0;
        
      end case;
      
      
      Return (lvar_first_be_set);
       
       
      
    end function funct_16bit_first_be_set;
    
    
    
    
    -- Signals
    
    signal sig_strb_input           : std_logic_vector(C_STROBE_WIDTH-1 downto 0) := (others => '0');
    
    signal sig_first_offset_unsgnd  : unsigned(C_OFFSET_WIDTH-1 downto 0) := (others => '0');
    
    
  begin --(architecture implementation)
  
   
    
    
    
    -- Assign the input port value
    sig_strb_input <= tstrb_in;
  
    
    
    -- Assign the output port value
    first_offset   <= sig_first_offset_unsgnd;
  
  
    
    
    
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_4BIT_CASE
    --
    -- If Generate Description:
    --   Implement the 4-bit strobe width case
    --
    --
    ------------------------------------------------------------
    GEN_4BIT_CASE : if (C_STROBE_WIDTH = 4) generate
    
      signal sig_first_offset         : integer range 0 to 15 := 0;
   
      begin
        
        sig_first_offset        <= funct_4bit_first_be_set(sig_strb_input);
        sig_first_offset_unsgnd <= TO_UNSIGNED(sig_first_offset, C_OFFSET_WIDTH);
        
      end generate GEN_4BIT_CASE;
 
 
 
  
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_8BIT_CASE
    --
    -- If Generate Description:
    --   Implement the 8-bit strobe width case
    --
    --
    ------------------------------------------------------------
    GEN_8BIT_CASE : if (C_STROBE_WIDTH = 8) generate
    
      signal sig_first_offset         : integer range 0 to 15 := 0;
   
      begin
   
        sig_first_offset         <= funct_8bit_first_be_set(sig_strb_input);
         sig_first_offset_unsgnd <= TO_UNSIGNED(sig_first_offset, C_OFFSET_WIDTH);
        
      end generate GEN_8BIT_CASE;
 
  
  
  
  
  
    ------------------------------------------------------------
    -- If Generate
    --
    -- Label: GEN_16BIT_CASE
    --
    -- If Generate Description:
    --   Implement the 16-bit strobe width case
    --
    --
    ------------------------------------------------------------
    GEN_16BIT_CASE : if (C_STROBE_WIDTH = 16) generate
    
      signal sig_first_offset         : integer range 0 to 15 := 0;
   
      begin
   
        sig_first_offset        <= funct_16bit_first_be_set(sig_strb_input);
        sig_first_offset_unsgnd <= TO_UNSIGNED(sig_first_offset, C_OFFSET_WIDTH);
        
      end generate GEN_16BIT_CASE;
 
  
  
  
  
  
  
  
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_addr_cntl.vhd
--
-- Description:     
--    This file implements the AXI Master Burst Address Controller.                 
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--
--      axi_master_burst.vhd
--          |
--          |-- proc_common_v4_0_2 (helper library)
--          |
--          |-- axi_master_burst_reset.vhd
--          |
--          |-- axi_master_rd_llink.vhd
--          |
--          |-- axi_master_wr_llink.vhd
--          |
--          |
--          |-- axi_master_burst_cmd_status.vhd
--          |       |-- axi_master_burst_first_stb_offset.vhd
--          |       |-- axi_master_burst_stbs_set.vhd
--          |
--          |-- axi_master_burst_rd_wr_cntlr.vhd
--                  |--  axi_master_burst_pcc.vhd
--                  |        |--  axi_master_burst_strb_gen.vhd
--                  |--  axi_master_burst_addr_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_rddata_cntl.vhd
--                  |        |--  axi_master_burst_rdmux.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_wrdata_cntl.vhd
--                  |        |--  axi_master_burst_strb_gen
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_rd_status_cntl.vhd
--                  |--  axi_master_burst_wr_status_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |               |-- axi_master_burst_sfifo_autord.vhd
--                  |--  axi_master_burst_skid_buf.vhd
--                  |--  axi_master_burst_skid2mm_buf.vhd
--
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.1.2.9 $
-- Date:            $1/19/2011$
--
-- History:
--     DET     1/19/2011     Initial
-- ~~~~~~
--     - Adapted from AXI DataMover v2_00_a axi_datamover_addr_cntl.vhd
-- ^^^^^^
--
--     DET     2/10/2011     Initial for EDK 13.2
-- ~~~~~~
--     - Added the inputs doing_read and doing_write
--     - Split the addr2axi_avalid output into two separate
--       outputs addr2axi_arvalid and addr2axi_awvalid. This 
--       was required to provide registered outputs per Lint
--       guidelines.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library axi_master_burst_v2_0_7;
Use axi_master_burst_v2_0_7.axi_master_burst_fifo;

-------------------------------------------------------------------------------

entity axi_master_burst_addr_cntl is
  generic (
    C_ADDR_FIFO_DEPTH      : Integer range  1 to  32 :=  4;
    C_ADDR_WIDTH           : Integer range 32 to  64 := 32;
    C_ADDR_ID              : Integer range  0 to 255 :=  0;
    C_ADDR_ID_WIDTH        : Integer range  1 to   8 :=  4;
    C_TAG_WIDTH            : Integer range  1 to   8 :=  4;
    C_FAMILY               : String  := "virtex7"
    );
  port (
    
    -- Clock input
    primary_aclk         : in  std_logic;
       -- Primary synchronization clock for the Master side
       -- interface and internal logic. It is also used 
       -- for the User interface synchronization when 
       -- C_STSCMD_IS_ASYNC = 0.

    -- Reset input
    mmap_reset           : in  std_logic;
       -- Reset used for the internal master logic
    
    

    -- Read Command Type Discrete Input
    doing_read       : in std_logic;

    -- Write Command Type Discrete Input
    doing_write      : in std_logic;



   
    -- AXI Address Channel I/O  -------------------------------
    addr2axi_aid     : out std_logic_vector(C_ADDR_ID_WIDTH-1 downto 0);
       -- AXI Address Channel ID output
      
    addr2axi_aaddr   : out std_logic_vector(C_ADDR_WIDTH-1 downto 0);
       -- AXI Address Channel Address output
      
    addr2axi_alen    : out std_logic_vector(7 downto 0);
       -- AXI Address Channel LEN output
       -- Sized to support 256 data beat bursts
      
    addr2axi_asize   : out std_logic_vector(2 downto 0);
       -- AXI Address Channel SIZE output
      
    addr2axi_aburst  : out std_logic_vector(1 downto 0);
       -- AXI Address Channel BURST output
      
    addr2axi_aprot   : out std_logic_vector(2 downto 0);
       -- AXI Address Channel PROT output
      
    addr2axi_arvalid  : out std_logic;
       -- AXI Read Address Channel VALID output
    
    addr2axi_awvalid  : out std_logic;
       -- AXI Write Address Channel VALID output
      
    axi2addr_aready  : in  std_logic;
       -- AXI Address Channel READY input
      
    -- Currently unsupported AXI Address Channel output signals ------------
      -- addr2axi_alock   : out std_logic_vector(2 downto 0);
      -- addr2axi_acache  : out std_logic_vector(4 downto 0);
      -- addr2axi_aqos    : out std_logic_vector(3 downto 0);
      -- addr2axi_aregion : out std_logic_vector(3 downto 0);
    -----------------------------------------------------------------
    
    
    
    -- Command Calculation Interface -------------------------------------
    mstr2addr_tag         : In std_logic_vector(C_TAG_WIDTH-1 downto 0);
       -- The next command tag
    
    mstr2addr_addr        : In  std_logic_vector(C_ADDR_WIDTH-1 downto 0);
       -- The next command address to put on the AXI MMap ADDR
    
    mstr2addr_len         : In  std_logic_vector(7 downto 0);
       -- The next command length to put on the AXI MMap LEN
       -- Sized to support 256 data beat bursts
    
    mstr2addr_size        : In  std_logic_vector(2 downto 0);
       -- The next command size to put on the AXI MMap SIZE
    
    mstr2addr_burst       : In  std_logic_vector(1 downto 0);
       -- The next command burst type to put on the AXI MMap BURST

    mstr2addr_cmd_cmplt   : In std_logic;
       -- The indication to the Address Channel that the current
       -- sub-command output is the last one compiled from the
       -- parent command pulled from the Command FIFO

    mstr2addr_calc_error  : In std_logic;
       -- Indication if the next command in the calculation pipe 
       -- has a calculation error 
    
    mstr2addr_cmd_valid   : in std_logic;
       -- The next command valid indication to the Address Channel 
       -- Controller for the AXI MMap 
    
    addr2mstr_cmd_ready   : out std_logic;
       -- Indication to the Command Calculator that the  
       -- command is being accepted  
    
   
   
    
    -- Halted Indication to Reset Module ----------------------------
    addr2rst_stop_cmplt     : out std_logic; 
       -- Output flag indicating the address controller has stopped
       -- posting commands to the Address Channel due to a stop 
       -- request vai the data2addr_stop_req input port
     
    
    
    -- Address Generation Control ---------------------------------
    allow_addr_req    : in std_logic;
       -- Input used to enable/stall the posting of address requests.
       -- 0 = stall address request generation.
       -- 1 = Enable Address request geneartion
    
    addr_req_posted   : out std_logic;
       -- Indication from the Address Channel Controller to external   
       -- User logic that an address has been posted to the
       -- AXI Address Channel.
    
  
    
    -- Data Channel Interface -------------------------------------
    addr2data_addr_posted    : Out std_logic;
       -- Indication from the Address Channel Controller to the   
       -- Data Controller that an address has been posted to the
       -- AXI Address Channel.
   
    data2addr_data_rdy       : In std_logic;
       -- Indication that the Data Channel is ready to send the first
       -- databeat of the next command on the write data channel. 
       -- This is used for the "wait for data" feature which keeps the
       -- address controller from issuing a transfer requset until the
       -- corresponding data is ready. This is expected to be held in
       -- the asserted state until the addr2data_addr_posted signal is
       -- asserted.
    
    data2addr_stop_req       : In std_logic;
       -- Indication that the Data Channel has encountered an error
       -- or a soft shutdown request and needs the Address Controller  
       -- to stop posting commands to the AXI Address channel

     
    -- Status Module Interface -------------------------------------
    addr2stat_calc_error     : out std_logic;
       -- Indication to the Status Module that the Addr Cntl FIFO
       -- is loaded with a Calc error  
    
    addr2stat_cmd_fifo_empty : out std_logic
       -- Indication to the Status Module that the Addr Cntl FIFO
       -- is empty  
    
   
   
       
    );

end entity axi_master_burst_addr_cntl;


architecture implementation of axi_master_burst_addr_cntl is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  -- Constant Declarations  --------------------------------------------
  Constant APROT_VALUE      : std_logic_vector(3-1 downto 0) := 
                              '0' & -- bit 2, Normal Access
                              '0' & -- bit 1, Nonsecure Access
                              '0';  -- bit 0, Data Access
  
  Constant LEN_WIDTH        : integer := 8;
  Constant SIZE_WIDTH       : integer := 3;
  Constant BURST_WIDTH      : integer := 2;
  Constant CMD_CMPLT_WIDTH  : integer := 1;
  Constant CALC_ERROR_WIDTH : integer := 1;
  
  Constant ADDR_QUAL_WIDTH  : integer := C_TAG_WIDTH     +  -- Cmd Tag field width
                                         C_ADDR_WIDTH    +  -- Cmd Address field width
                                         LEN_WIDTH       +  -- Cmd Len field width
                                         SIZE_WIDTH      +  -- Cmd Size field width
                                         BURST_WIDTH     +  -- Cmd Burst field width
                                         CMD_CMPLT_WIDTH +  -- Cmd Cmplt filed width
                                         CALC_ERROR_WIDTH;  -- Cmd Calc Error flag
  
  Constant USE_SYNC_FIFO    : integer := 0;
  Constant REG_FIFO_PRIM    : integer := 0; 
  Constant BRAM_FIFO_PRIM   : integer := 1; 
  Constant SRL_FIFO_PRIM    : integer := 2; 
  Constant FIFO_PRIM_TYPE   : integer := SRL_FIFO_PRIM; 
  
  
  
  
  
  -- Signal Declarations  --------------------------------------------
  signal sig_axi_addr               : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi_alen               : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_axi_asize              : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_axi_aburst             : std_logic_vector(1 downto 0) := (others => '0');             
  signal sig_axi_arvalid            : std_logic := '0';
  signal sig_axi_awvalid            : std_logic := '0';
  signal sig_axi_aready             : std_logic := '0';
  signal sig_addr_posted            : std_logic := '0';
  signal sig_calc_error             : std_logic := '0';
  signal sig_cmd_fifo_empty         : std_logic := '0';
  Signal sig_aq_fifo_data_in        : std_logic_vector(ADDR_QUAL_WIDTH-1 downto 0) := (others => '0');
  Signal sig_aq_fifo_data_out       : std_logic_vector(ADDR_QUAL_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_tag          : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_addr         : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_fifo_next_len          : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_fifo_next_size         : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_fifo_next_burst        : std_logic_vector(1 downto 0) := (others => '0');
  signal sig_fifo_next_cmd_cmplt    : std_logic := '0';
  signal sig_fifo_calc_error        : std_logic := '0';
  signal sig_fifo_wr_cmd_valid      : std_logic := '0';
  signal sig_fifo_wr_cmd_ready      : std_logic := '0';
  signal sig_fifo_rd_cmd_valid      : std_logic := '0';
  signal sig_fifo_rd_cmd_ready      : std_logic := '0';
  signal sig_next_tag_reg           : std_logic_vector(C_TAG_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_addr_reg          : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_next_len_reg           : std_logic_vector(7 downto 0) := (others => '0');             
  signal sig_next_size_reg          : std_logic_vector(2 downto 0) := (others => '0');             
  signal sig_next_burst_reg         : std_logic_vector(1 downto 0) := (others => '0');             
  signal sig_next_cmd_cmplt_reg     : std_logic := '0';             
  signal sig_rd_addr_valid_reg      : std_logic := '0';
  signal sig_wr_addr_valid_reg      : std_logic := '0';
  signal sig_calc_error_reg         : std_logic := '0';
  signal sig_pop_addr_reg           : std_logic := '0';
  signal sig_push_addr_reg          : std_logic := '0';
  signal sig_addr_reg_empty         : std_logic := '0';
  signal sig_addr_reg_full          : std_logic := '0';
  signal sig_posted_to_axi          : std_logic := '0';
  signal sig_allow_addr_req         : std_logic := '0';
  signal sig_posted_to_axi_2        : std_logic := '0';


  ------------------------------------------------------------------------------------
  -- Register duplication attribute assignments to control fanout
  -- on handshake output signals  

  Attribute KEEP : string; -- declaration
  Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration

  Attribute KEEP of sig_posted_to_axi   : signal is "TRUE"; -- definition
  Attribute KEEP of sig_posted_to_axi_2 : signal is "TRUE"; -- definition

  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_posted_to_axi   : signal is "no"; 
  Attribute EQUIVALENT_REGISTER_REMOVAL of sig_posted_to_axi_2 : signal is "no"; 




  
begin --(architecture implementation)

  -- AXI I/O Port assignments
  addr2axi_aid        <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_ADDR_ID, C_ADDR_ID_WIDTH));
  addr2axi_aaddr      <= sig_axi_addr  ;
  addr2axi_alen       <= sig_axi_alen  ;
  addr2axi_asize      <= sig_axi_asize ;
  addr2axi_aburst     <= sig_axi_aburst;
  addr2axi_aprot      <= APROT_VALUE   ; 
  sig_axi_aready      <= axi2addr_aready;
  
  addr2axi_arvalid    <= sig_axi_arvalid;
  addr2axi_awvalid    <= sig_axi_awvalid;
  
                                          
                                          
  -- Command Calculator Handshake output
  sig_fifo_wr_cmd_valid <= mstr2addr_cmd_valid  ;
  addr2mstr_cmd_ready   <= sig_fifo_wr_cmd_ready;
  
  -- Data Channel Controller synchro pulse output                  
  addr2data_addr_posted <= sig_addr_posted;
   
   
  -- Status Module Interface outputs
  addr2stat_calc_error     <= sig_calc_error    ;
  addr2stat_cmd_fifo_empty <= sig_addr_reg_empty and
                              sig_cmd_fifo_empty; 
   
  

 
  -- Flag Indicating the Address Controller has completed a Stop
  addr2rst_stop_cmplt   <=  (data2addr_stop_req and  -- normal shutdown case
                             sig_addr_reg_empty) or
                            (data2addr_stop_req and  -- shutdown after error trap
                             sig_calc_error);
 
  -- Assign the address posting control and status
  sig_allow_addr_req    <=  allow_addr_req      ;
  addr_req_posted       <=  sig_posted_to_axi_2 ;
 
 
  
  -- Internal logic ------------------------------





  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_ADDR_FIFO
  --
  -- If Generate Description:
  --   Implements the case where the cmd qualifier depth is
  -- greater than 1.
  --
  ------------------------------------------------------------
  GEN_ADDR_FIFO : if (C_ADDR_FIFO_DEPTH > 1) generate

    begin

      -- Format the input FIFO data word 
      sig_aq_fifo_data_in <= mstr2addr_calc_error &
                             mstr2addr_cmd_cmplt  &
                             mstr2addr_burst      &
                             mstr2addr_size       &
                             mstr2addr_len        &
                             mstr2addr_addr       &
                             mstr2addr_tag ;
      
  
  
      -- Rip fields from FIFO output data word
      sig_fifo_calc_error     <=  sig_aq_fifo_data_out((C_ADDR_WIDTH  +
                                                      C_TAG_WIDTH     +
                                                      LEN_WIDTH       +
                                                      SIZE_WIDTH      +
                                                      BURST_WIDTH     +
                                                      CMD_CMPLT_WIDTH + 
                                                      CALC_ERROR_WIDTH)-1); 
                                                      
      
      sig_fifo_next_cmd_cmplt <=  sig_aq_fifo_data_out((C_ADDR_WIDTH  +
                                                      C_TAG_WIDTH     +
                                                      LEN_WIDTH       +
                                                      SIZE_WIDTH      +
                                                      BURST_WIDTH     +
                                                      CMD_CMPLT_WIDTH)-1); 
                                                      
      
      
      
      
      sig_fifo_next_burst     <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH    +
                                                       BURST_WIDTH)-1 
                                              downto 
                                                       C_ADDR_WIDTH  +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH) ;
                                                        
      sig_fifo_next_size      <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH     +
                                                       SIZE_WIDTH)-1
                                              downto 
                                                       C_ADDR_WIDTH  +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH) ; 
                                                       
      sig_fifo_next_len       <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH   +
                                                       LEN_WIDTH)-1 
                                              downto 
                                                      C_ADDR_WIDTH   +
                                                      C_TAG_WIDTH) ;
                                                       
      sig_fifo_next_addr      <=  sig_aq_fifo_data_out((C_ADDR_WIDTH +
                                                       C_TAG_WIDTH)-1 
                                              downto 
                                                       C_TAG_WIDTH) ;
       
      sig_fifo_next_tag       <=  sig_aq_fifo_data_out(C_TAG_WIDTH-1 downto 0); 
    
    
    
      ------------------------------------------------------------
      -- Instance: I_ADDR_QUAL_FIFO 
      --
      -- Description:
      -- Instance for the Address/Qualifier FIFO
      --
      ------------------------------------------------------------
       I_ADDR_QUAL_FIFO : entity axi_master_burst_v2_0_7.axi_master_burst_fifo
       generic map (
     
         C_DWIDTH            =>  ADDR_QUAL_WIDTH         ,  
         C_DEPTH             =>  C_ADDR_FIFO_DEPTH       ,  
         C_IS_ASYNC          =>  USE_SYNC_FIFO           ,  
         C_PRIM_TYPE         =>  FIFO_PRIM_TYPE          ,  
         C_FAMILY            =>  C_FAMILY                   
        
         )
       port map (
         
         -- Write Clock and reset
         fifo_wr_reset        =>   mmap_reset            ,  
         fifo_wr_clk          =>   primary_aclk          ,  
         
         -- Write Side
         fifo_wr_tvalid       =>   sig_fifo_wr_cmd_valid ,  
         fifo_wr_tready       =>   sig_fifo_wr_cmd_ready ,  
         fifo_wr_tdata        =>   sig_aq_fifo_data_in   ,  
         fifo_wr_full         =>   open                  ,  
        
        
         -- Read Clock and reset
         fifo_async_rd_reset  =>   mmap_reset            ,     
         fifo_async_rd_clk    =>   primary_aclk          ,   
         
         -- Read Side
         fifo_rd_tvalid       =>   sig_fifo_rd_cmd_valid ,  
         fifo_rd_tready       =>   sig_fifo_rd_cmd_ready ,  
         fifo_rd_tdata        =>   sig_aq_fifo_data_out  ,  
         fifo_rd_empty        =>   sig_cmd_fifo_empty       
        
         );
     
    
    
    end generate GEN_ADDR_FIFO;
     
 
  
  
  
  
  
  
  
  

  ------------------------------------------------------------
  -- If Generate
  --
  -- Label: GEN_NO_ADDR_FIFO
  --
  -- If Generate Description:
  --   Implements the case where no additional FIFOing is needed
  -- on the input command address/qualifiers.
  --
  ------------------------------------------------------------
  GEN_NO_ADDR_FIFO : if (C_ADDR_FIFO_DEPTH = 1) generate

    begin

      -- Bypass FIFO
      sig_fifo_next_tag       <=  mstr2addr_tag         ; 
      sig_fifo_next_addr      <=  mstr2addr_addr        ; 
      sig_fifo_next_len       <=  mstr2addr_len         ; 
      sig_fifo_next_size      <=  mstr2addr_size        ; 
      sig_fifo_next_burst     <=  mstr2addr_burst       ; 
      sig_fifo_next_cmd_cmplt <=  mstr2addr_cmd_cmplt   ;
      sig_fifo_calc_error     <=  mstr2addr_calc_error  ; 
      sig_cmd_fifo_empty      <=  sig_addr_reg_empty    ;
      sig_fifo_wr_cmd_ready   <=  sig_fifo_rd_cmd_ready ;
      sig_fifo_rd_cmd_valid   <=  sig_fifo_wr_cmd_valid ;
      
    
    end generate GEN_NO_ADDR_FIFO;
     
 
  
  
  
  
  
  
  -- Output Register Logic ------------------------------------------- 
  
  sig_axi_addr           <= sig_next_addr_reg  ;
  sig_axi_alen           <= sig_next_len_reg   ;
  sig_axi_asize          <= sig_next_size_reg  ;
  sig_axi_aburst         <= sig_next_burst_reg ;
  
  sig_axi_arvalid        <= sig_rd_addr_valid_reg ;
  sig_axi_awvalid        <= sig_wr_addr_valid_reg ;
  
  sig_calc_error         <= sig_calc_error_reg ;
  
  sig_fifo_rd_cmd_ready  <= sig_addr_reg_empty  and
                            sig_allow_addr_req  and   
                            not(data2addr_stop_req);
  
  sig_addr_posted        <= sig_posted_to_axi  ;
  
  
  -- Internal signals
  sig_push_addr_reg      <= sig_addr_reg_empty     and 
                            sig_fifo_rd_cmd_valid  and
                            sig_allow_addr_req     and   
                            not(data2addr_stop_req);
  
  sig_pop_addr_reg       <= not(sig_calc_error_reg) and 
                            sig_axi_aready          and 
                            sig_addr_reg_full;
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_ADDR_FIFO_REG
  --
  -- Process Description:
  --    This process implements a register for the Address 
  -- Control FIFO that operates like a 1 deep Sync FIFO.
  --
  -------------------------------------------------------------
  IMP_ADDR_FIFO_REG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset       = '1' or
              sig_pop_addr_reg = '1') then
            
            sig_next_tag_reg        <= (others => '0')         ;
            sig_next_addr_reg       <= (others => '0')         ;
            sig_next_len_reg        <= (others => '0')         ;
            sig_next_size_reg       <= (others => '0')         ;
            sig_next_burst_reg      <= (others => '0')         ;
            sig_next_cmd_cmplt_reg  <= '0'                     ;
            
            sig_rd_addr_valid_reg   <= '0'                     ;
            sig_wr_addr_valid_reg   <= '0'                     ;
            
            sig_calc_error_reg      <= '0'                     ;
                                                               
            sig_addr_reg_empty      <= '1'                     ;
            sig_addr_reg_full       <= '0'                     ;
            
          elsif (sig_push_addr_reg = '1') then
            
            sig_next_tag_reg        <= sig_fifo_next_tag            ;
            sig_next_addr_reg       <= sig_fifo_next_addr           ;
            sig_next_len_reg        <= sig_fifo_next_len            ;
            sig_next_size_reg       <= sig_fifo_next_size           ;
            sig_next_burst_reg      <= sig_fifo_next_burst          ;
            sig_next_cmd_cmplt_reg  <= sig_fifo_next_cmd_cmplt      ;
            
            sig_rd_addr_valid_reg   <= not(sig_fifo_calc_error) and
                                       doing_read                   ;
            sig_wr_addr_valid_reg   <= not(sig_fifo_calc_error) and
                                       doing_write                  ;
            
            sig_calc_error_reg      <= sig_fifo_calc_error          ;
            
            sig_addr_reg_empty      <= '0'                          ;
            sig_addr_reg_full       <= '1'                          ;
            
          else
            null;  -- don't change state
          end if; 
       end if;       
     end process IMP_ADDR_FIFO_REG; 
   

  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_POSTED_FLAG
  --
  -- Process Description:
  --   This implements a FLOP that creates a 1 clock wide pulse
  -- indicating a new address/qualifier set has been posted to
  -- the AXI Addres Channel outputs. This is used to synchronize 
  -- the Data Channel Controller.
  --
  -------------------------------------------------------------
  IMP_POSTED_FLAG : process (primary_aclk)
     begin
       if (primary_aclk'event and primary_aclk = '1') then
          if (mmap_reset = '1') then

            sig_posted_to_axi   <= '0';
            sig_posted_to_axi_2 <= '0';
            
          elsif (sig_push_addr_reg = '1') then

            sig_posted_to_axi   <= '1';
            sig_posted_to_axi_2 <= '1';
            
          else
            
            sig_posted_to_axi   <= '0';
            sig_posted_to_axi_2 <= '0';
            
          end if; 
       end if;       
     end process IMP_POSTED_FLAG; 


  



  
  
  
  


end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_wr_llink.vhd
--
-- Description:     
--    THis file implements the Write LocalLink to AXI Stream adapter for the
--    AXI Master burst core.              
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_wr_llink.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.1 $
-- Date:            $1/27/2011$
--
-- History:
--   DET   1/27/2011       Initial Version
--
--     DET     2/14/2011     Initial for EDK 13.2
-- ~~~~~~
--    -- Per CR593485
--     - Modified the Error logic to clear the wrllink_llink_busy assertion
--       when the localLink discontinue completes. 
--     - Added logic to complete a Write Discontinue per LocalLink spec after a
--       wrllink_wr_error assertion.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
--
-------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




-------------------------------------------------------------------------------

entity axi_master_burst_wr_llink is
  generic (
    
    C_NATIVE_DWIDTH : INTEGER range 32 to 128 := 32  
        --  Set this equal to desred data bus width needed by IPIC
        --  LocalLink Data Channels.
    
    );
  port (
    
    
    -------------------------------------------------------------------------
    -- Write LocalLink Clock input
    -------------------------------------------------------------------------
    wrllink_aclk               : in  std_logic;
    
    -------------------------------------------------------------------------
    -- Write LocalLink Reset input
    -------------------------------------------------------------------------
    wrllink_areset             : in  std_logic;


    
    -------------------------------------------------------------------------
    -- RDWR Cntlr Internal Error Indication
    -------------------------------------------------------------------------
    wrllink_wr_error           : In  std_logic;
 
    -------------------------------------------------------------------------
    -- LocalLink Enable Control (1 Clock wide pulse)
    -------------------------------------------------------------------------
    wrllink_llink_enable       : In  std_logic;
 
    -------------------------------------------------------------------------
    -- IPIC LocalLink Busy Flag
    -------------------------------------------------------------------------
    wrllink_llink_busy         : Out std_logic;
 
  
  
    -------------------------------------------------------------------------
    -- Write Address Posting Contols/Status
    -------------------------------------------------------------------------
    wrllink_allow_addr_req     : Out std_logic; -- Active High enable (1-clk pulse wide)
    wrllink_addr_req_posted    : In  std_logic; -- ignored
    wrllink_xfer_cmplt         : In  std_logic; -- ignored
  
  
    -------------------------------------------------------------------------
    -- Write AXI Slave Master Channel  
    -------------------------------------------------------------------------
    wrllink_strm_tdata         : Out std_logic_vector(C_NATIVE_DWIDTH-1 downto 0);     -- Write AXI Stream
    wrllink_strm_tstrb         : Out std_logic_vector((C_NATIVE_DWIDTH/8)-1 downto 0); -- Write AXI Stream
    wrllink_strm_tlast         : Out std_logic;                                        -- Write AXI Stream
    wrllink_strm_tvalid        : Out std_logic;                                        -- Write AXI Stream
    wrllink_strm_tready        : In  std_logic;                                        -- Write AXI Stream
    
   
    -------------------------------------------------------------------------
    -- IPIC Write LocalLink Channel
    -------------------------------------------------------------------------
    ip2bus_mstwr_d             : In  std_logic_vector(0 to C_NATIVE_DWIDTH-1);     -- IPIC Write LocalLink
    ip2bus_mstwr_rem           : In  std_logic_vector(0 to (C_NATIVE_DWIDTH/8)-1); -- ignored IPIC Write LocalLink
    ip2bus_mstwr_sof_n         : In  std_logic; -- ignored                         -- IPIC Write LocalLink
    ip2bus_mstwr_eof_n         : In  std_logic;                                    -- IPIC Write LocalLink
    ip2bus_mstwr_src_rdy_n     : In  std_logic;                                    -- IPIC Write LocalLink
    ip2bus_mstwr_src_dsc_n     : In  std_logic; -- ignored                         -- IPIC Write LocalLink
    
    bus2ip_mstwr_dst_rdy_n     : Out std_logic;                                    -- IPIC Write LocalLink
    bus2ip_mstwr_dst_dsc_n     : Out std_logic                                     -- IPIC Write LocalLink
   

    );

end entity axi_master_burst_wr_llink;


architecture implementation of axi_master_burst_wr_llink is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  -- Constants
  Constant STRB_WIDTH : integer := C_NATIVE_DWIDTH/8;
  
  
  
  -- Signals
  signal sig_inv_rem              : std_logic_vector(0 to STRB_WIDTH-1) := (others => '0');
  signal sig_llink_busy           : std_logic := '0';
  signal sig_last_debeat_xfered   : std_logic := '0';
  
  signal sig_allow_wr_requests    : std_logic := '0';
  
  signal sig_llink_dst_ready_n    : std_logic := '0';
  
  signal sig_set_discontinue      : std_logic := '0';
  signal sig_wr_error_reg         : std_logic := '0';
  signal sig_wr_dsc_in_prog       : std_logic := '0';
  signal sig_discontinue_dst_rdy  : std_logic := '0';
  signal sig_discontinue_cmplt    : std_logic := '0';
  signal sig_discontinue_accepted : std_logic := '0';
  signal sig_assert_discontinue   : std_logic := '0';
  
  

begin --(architecture implementation)


  
  -------------------------------------------------------------------------
  -- Write Stream Output Port Assignments
  -------------------------------------------------------------------------
  wrllink_strm_tdata      <= ip2bus_mstwr_d             ;
  
  wrllink_strm_tstrb      <= sig_inv_rem                ;
  
  wrllink_strm_tlast      <= not(ip2bus_mstwr_eof_n)    ;
  
  wrllink_strm_tvalid     <= not(ip2bus_mstwr_src_rdy_n) and
                             sig_llink_busy;
  
  
  
  
  
  
  
  -------------------------------------------------------------------------
  -- Write LocalLink Output Port Assignments
  -------------------------------------------------------------------------
  bus2ip_mstwr_dst_rdy_n  <= sig_llink_dst_ready_n ;
  
  --bus2ip_mstwr_dst_dsc_n  <= not(wrllink_wr_error) ;
  bus2ip_mstwr_dst_dsc_n  <= not(sig_assert_discontinue) ;
  
  sig_llink_dst_ready_n   <= not((wrllink_strm_tready and sig_llink_busy) or
                             sig_discontinue_dst_rdy) ;
  
  
 
  -- Since the PLB Master burst ignored the REM input, Just 
  -- assign the inverted REM to be all asserted. This will be 
  -- used for the AXI Stream output.
  sig_inv_rem <= (others => '1');
 
 
  
  
  -------------------------------------------------------------------------
  -- LocalLink Busy Flag logic
  -------------------------------------------------------------------------
  
  
  wrllink_llink_busy <= sig_llink_busy ;
  
  
   
  -- Detect the last data beat of the incoming LocalLink transfer 
  sig_last_debeat_xfered <= not(ip2bus_mstwr_eof_n     or
                                ip2bus_mstwr_src_rdy_n or
                                sig_llink_dst_ready_n );
   
   
   
   
   
   
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_LLINK_BUSY_FLOP
  --
  -- Process Description:
  --  Implements the LocalLink Busy Flop
  --
  -------------------------------------------------------------
  IMP_LLINK_BUSY_FLOP : process (wrllink_aclk)
    begin
      if (wrllink_aclk'event and wrllink_aclk = '1') then
         if (wrllink_areset = '1') then
  
           sig_llink_busy <= '0';
             
         elsif (wrllink_llink_enable = '1') then
  
           sig_llink_busy <= '1';
             
         elsif (sig_last_debeat_xfered = '1') then
  
           sig_llink_busy <= '0';
             
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_LLINK_BUSY_FLOP; 
  
  
 
 
 
  
  
  
  -------------------------------------------------------------------------
  -- AXI Write Address Posting Control logic
  -------------------------------------------------------------------------
  
  wrllink_allow_addr_req  <= sig_allow_wr_requests;
  
  
  
  
   
   
   
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_ALLOW_WR_REQ_FLOP
  --
  -- Process Description:
  --  Implements the AXI Write Address Request control flop.
  -- AXI Write Requests will be withheld from the AXI Write Address
  -- Channel until the LocalLink Source is ready to drive data.
  --
  -------------------------------------------------------------
  IMP_ALLOW_WR_REQ_FLOP : process (wrllink_aclk)
    begin
      if (wrllink_aclk'event and wrllink_aclk = '1') then
         if (wrllink_areset        = '1' or
             wrllink_llink_enable  = '1') then
  
           sig_allow_wr_requests <= '0';
             
         elsif (ip2bus_mstwr_src_rdy_n = '0' and
                sig_llink_busy         = '1') then
  
           sig_allow_wr_requests <= '1';
             
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_ALLOW_WR_REQ_FLOP; 
  
  
  
  
  
  
  
  
  
  
  -------------------------------------------------------------------------
  -- Write Error LLink discontinue logic
  -------------------------------------------------------------------------
  
  
  
  -- Detect rising edge of the Read Error assertion
  sig_set_discontinue     <= wrllink_wr_error      and 
                             not(sig_wr_error_reg) and
                             sig_llink_busy ;
  
  -- Force the assertion of the Dest ready during the discontinue
  -- sequence.
  sig_discontinue_dst_rdy <= sig_wr_dsc_in_prog and 
                             sig_llink_busy;
           
  
  -- Detect the acceptance of discontinue by the source but not
  -- necessarily the completion of the discontinue sequence.
  sig_discontinue_accepted <= Not(ip2bus_mstwr_src_rdy_n) and
                              sig_assert_discontinue;
  
  
  
  -- Detect Completion of the Write Discontinue sequence
  -- when the EOF is transfered by the Source
  sig_discontinue_cmplt   <= sig_discontinue_dst_rdy and 
                             Not(ip2bus_mstwr_src_rdy_n) and
                             not(ip2bus_mstwr_eof_n);
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_WR_ERROR_FLOP
  --
  -- Process Description:
  --   Implements the register for the write error flag.
  --
  -------------------------------------------------------------
  IMP_WR_ERROR_FLOP : process (wrllink_aclk)
    begin
      if (wrllink_aclk'event and wrllink_aclk = '1') then
         if (wrllink_areset  = '1') then
  
           sig_wr_error_reg <= '0';
  
         else
  
           sig_wr_error_reg <= wrllink_wr_error;
  
         end if; 
      end if;       
    end process IMP_WR_ERROR_FLOP; 
 
                
                
                
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_WR_DSC_FLOP
  --
  -- Process Description:
  --   Implements the register for the write discontinue flag
  -- indicating that a discontinue sequence is in progress.
  --
  -------------------------------------------------------------
  IMP_WR_DSC_FLOP : process (wrllink_aclk)
    begin
      if (wrllink_aclk'event and wrllink_aclk = '1') then
         if (wrllink_areset        = '1' or
             sig_discontinue_cmplt = '1') then
  
           sig_wr_dsc_in_prog <= '0';
  
         elsif (sig_set_discontinue = '1') then
  
           sig_wr_dsc_in_prog <= '1';
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_WR_DSC_FLOP; 
 
 
 
 
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_SEND_WR_DSC
  --
  -- Process Description:
  --   Implements the register for the flag signaling the 
  -- assertion of the LLink Dest discontinue output.
  --
  -------------------------------------------------------------
  IMP_SEND_WR_DSC : process (wrllink_aclk)
    begin
      if (wrllink_aclk'event and wrllink_aclk = '1') then
         if (wrllink_areset           = '1' or
             sig_discontinue_accepted = '1') then
  
           sig_assert_discontinue <= '0';
  
         elsif (sig_set_discontinue = '1') then
  
           sig_assert_discontinue <= '1';
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_SEND_WR_DSC; 
 
  


end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_reset.vhd
--
-- Description:     
--                  
-- This VHDL file implements the reset module for the AXI Master lite.                 
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_reset.vhd
--
-------------------------------------------------------------------------------
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/26/2011$
--
-- History:
--
--     DET     1/26/2011     Initial
-- ~~~~~~
--     - Adapted from AXI Master Lite reset module
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;




-------------------------------------------------------------------------------

entity axi_master_burst_reset is
  port (
    
    -----------------------------------------------------------------------
    -- Clock Input
    -----------------------------------------------------------------------
    axi_aclk            : in  std_logic ;
    
    -----------------------------------------------------------------------
    -- Reset Input (active low) 
    -----------------------------------------------------------------------
    axi_aresetn         : in  std_logic ;

    
    
    -----------------------------------------------------------------------
    -- IPIC Reset Input 
    -----------------------------------------------------------------------
    ip2bus_mst_reset    : In  std_logic ; 
     
    
    
    -----------------------------------------------------------------------
    -- Command Status Module Reset Output 
    -----------------------------------------------------------------------
    rst2cmd_reset_out   : out  std_logic ; 
    
    -----------------------------------------------------------------------
    -- Read Write controller Module Reset Output 
    -----------------------------------------------------------------------
    rst2rdwr_reset_out  : out  std_logic ; 
    
    -----------------------------------------------------------------------
    -- LocalLink Modules Reset Output 
    -----------------------------------------------------------------------
    rst2llink_reset_out : out  std_logic  
    
    
    );

end entity axi_master_burst_reset;


architecture implementation of axi_master_burst_reset is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
-------------------------------------------------------------------------------
-- Constants Declarations
-------------------------------------------------------------------------------

  
-------------------------------------------------------------------------------
-- Signal / Type Declarations
-------------------------------------------------------------------------------
  signal sig_axi_por_reg1            : std_logic := '0';
  signal sig_axi_por_reg2            : std_logic := '0';
  signal sig_axi_por_reg3            : std_logic := '0';
  signal sig_axi_por_reg4            : std_logic := '0';
  signal sig_axi_por_reg5            : std_logic := '0';
  signal sig_axi_por_reg6            : std_logic := '0';
  signal sig_axi_por_reg7            : std_logic := '0';
  signal sig_axi_por_reg8            : std_logic := '0';
  signal sig_axi_por2rst             : std_logic := '0';
  signal sig_axi_por2rst_out         : std_logic := '0';
  
  
  signal sig_axi_reset               : std_logic := '0';
  signal sig_ipic_reset              : std_logic := '0';
  signal sig_combined_reset          : std_logic := '0';
  signal sig_cmd_reset_reg           : std_logic := '0';
  signal sig_rdwr_reset_reg          : std_logic := '0';
  signal sig_llink_reset_reg         : std_logic := '0';
  
 
   
-------------------------------------------------------------------------------
-- Register duplication attribute assignments to control fanout
-- on reset signals
-------------------------------------------------------------------------------

 Attribute KEEP : string; -- declaration
 Attribute EQUIVALENT_REGISTER_REMOVAL : string; -- declaration
 
 Attribute KEEP of sig_cmd_reset_reg     : signal is "TRUE";
 Attribute KEEP of sig_rdwr_reset_reg    : signal is "TRUE";
 Attribute KEEP of sig_llink_reset_reg   : signal is "TRUE";
 
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_cmd_reset_reg   : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_rdwr_reset_reg  : signal is "no";
 Attribute EQUIVALENT_REGISTER_REMOVAL of sig_llink_reset_reg : signal is "no";


  
                      

begin --(architecture implementation)

  
  -- Assign the output ports
  rst2cmd_reset_out   <= sig_cmd_reset_reg  ;
  rst2rdwr_reset_out  <= sig_rdwr_reset_reg ;
  rst2llink_reset_out <= sig_llink_reset_reg;
  
  
  
   
  -- Generate an active high combined reset from the 
  -- axi reset input and the IPIC reset input
  sig_axi_reset          <= not(axi_aresetn);
  sig_ipic_reset         <= ip2bus_mst_reset;
  sig_combined_reset     <= sig_axi_reset or sig_ipic_reset;     
  
  
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_CMD_RST_REG
  --
  -- Process Description:
  --   Implements the register for the command/status module
  -- reset output.
  --
  -------------------------------------------------------------
  IMP_CMD_RST_REG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (sig_axi_por2rst_out = '1') then
  
           sig_cmd_reset_reg <= '1';
  
         else
 
           sig_cmd_reset_reg <= sig_combined_reset;
  
         end if; 
      end if;       
    end process IMP_CMD_RST_REG; 
  

   
   

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_RDWR_RST_REG
  --
  -- Process Description:
  --   Implements the register for the read/write controller 
  -- module reset output.
  --
  -------------------------------------------------------------
  IMP_RDWR_RST_REG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (sig_axi_por2rst_out = '1') then
  
           sig_rdwr_reset_reg <= '1';
  
         else
 
           sig_rdwr_reset_reg <= sig_combined_reset;
  
         end if; 
      end if;       
    end process IMP_RDWR_RST_REG; 
  

   
   

  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_LLINK_RST_REG
  --
  -- Process Description:
  --   Implements the register for the LocalLink Modules 
  -- reset output.
  --
  -------------------------------------------------------------
  IMP_LLINK_RST_REG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
         if (sig_axi_por2rst_out = '1') then
  
           sig_llink_reset_reg <= '1';
  
         else
 
           sig_llink_reset_reg <= sig_combined_reset;
  
         end if; 
      end if;       
    end process IMP_LLINK_RST_REG; 
  








---------------------------------------------------------------
-- Start Power On Reset (POR) Logic
---------------------------------------------------------------
  
  
                      
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: AXI_POR_REG
  --
  -- Process Description:
  --    This process generates an 8-clock wide pulse that 
  --  only occurs immediately after FPGA initialization. This  
  --  pulse is used to initialize reset logic synchronous to
  --  the Main axi_aclk Clock until the Bus Reset occurs.
  --
  -------------------------------------------------------------
  AXI_POR_REG : process (axi_aclk)
    begin
      if (axi_aclk'event and axi_aclk = '1') then
        sig_axi_por_reg1    <= '1';
        sig_axi_por_reg2    <= sig_axi_por_reg1;
        sig_axi_por_reg3    <= sig_axi_por_reg2;
        sig_axi_por_reg4    <= sig_axi_por_reg3;
        sig_axi_por_reg5    <= sig_axi_por_reg4;
        sig_axi_por_reg6    <= sig_axi_por_reg5;
        sig_axi_por_reg7    <= sig_axi_por_reg6;
        sig_axi_por_reg8    <= sig_axi_por_reg7;

        sig_axi_por2rst_out <= sig_axi_por2rst ;
        
      end if;       
    end process AXI_POR_REG; 
                     
                       
  
                      
  sig_axi_por2rst <=   not(sig_axi_por_reg1 and                  
                           sig_axi_por_reg2 and
                           sig_axi_por_reg3 and
                           sig_axi_por_reg4 and
                           sig_axi_por_reg5 and
                           sig_axi_por_reg6 and
                           sig_axi_por_reg7 and
                           sig_axi_por_reg8 );
                      
 
 
 
---------------------------------------------------------------
-- End of Power On Reset (POR) Logic
---------------------------------------------------------------
  
 
  
   





end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_rd_wr_cntlr.vhd
--
-- Description:
--    This file implements the DataMover MM2S Full Wrapper.
--
--
--
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--
--      axi_master_burst.vhd
--          |
--          |-- proc_common_v4_0_2 (helper library)
--          |
--          |-- axi_master_burst_reset.vhd
--          |
--          |-- axi_master_rd_llink.vhd
--          |
--          |-- axi_master_wr_llink.vhd
--          |
--          |
--          |-- axi_master_burst_cmd_status.vhd
--          |       |-- axi_master_burst_first_stb_offset.vhd
--          |       |-- axi_master_burst_stbs_set.vhd
--          |
--          |-- axi_master_burst_rd_wr_cntlr.vhd
--                  |--  axi_master_burst_pcc.vhd
--                  |        |--  axi_master_burst_strb_gen.vhd
--                  |--  axi_master_burst_addr_cntl.vhd
--                  |--  axi_master_burst_rddata_cntl.vhd
--                  |--  axi_master_burst_wrdata_cntl.vhd
--                  |--  axi_master_burst_rd_status_cntl.vhd
--                  |--  axi_master_burst_wr_status_cntl.vhd
--                  |--  axi_master_burst_skid_buf.vhd
--                  |--  axi_master_burst_skid2mm_buf.vhd
--
--
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $01/18/2011$
--
-- History:
--   DET   01/18/2011       Initial Version
--
--     DET     2/10/2011     Initial for EDk 13.2
-- ~~~~~~
--    -- Per CR593239
--     - Added Min BTT width correction logic (adapted from Datamover)
-- ^^^^^^
--     DET     2/10/2011     Initial for EDK 13.2
-- ~~~~~~
--     - Updated the Addr Cntlr Instance with new ports for avalid
--       registering. Cleaned up a*valid signal generation. 
--     - Added missing port mstr2dre_cmd_cmplt to the PCC instance
-- ^^^^^^
--
--     DET     2/15/2011     Initial for EDk 13.2
-- ~~~~~~
--    -- Per CR593812
--     - Modifications to remove unused features to improve Code coverage.
--       Used "-- coverage off" and "-- coverage on" strings.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



-- axi_master_burst Library Modules
library axi_master_burst_v2_0_7                            ;
use axi_master_burst_v2_0_7.axi_master_burst_pcc           ;
use axi_master_burst_v2_0_7.axi_master_burst_addr_cntl     ;
use axi_master_burst_v2_0_7.axi_master_burst_rddata_cntl   ;
use axi_master_burst_v2_0_7.axi_master_burst_wrdata_cntl   ;
use axi_master_burst_v2_0_7.axi_master_burst_rd_status_cntl;
use axi_master_burst_v2_0_7.axi_master_burst_wr_status_cntl;
use axi_master_burst_v2_0_7.axi_master_burst_skid_buf      ;
use axi_master_burst_v2_0_7.axi_master_burst_skid2mm_buf   ;









-------------------------------------------------------------------------------

entity axi_master_burst_rd_wr_cntlr is
  generic (

    C_RDWR_ARID               : Integer range 0 to  255 :=  0;
       -- Specifies the constant value to output on
       -- the ARID output port

    C_RDWR_ID_WIDTH           : Integer range 1 to  8 :=  4;
       -- Specifies the width of the MM2S ID port

    C_RDWR_ADDR_WIDTH         : Integer range 32 to  64 :=  32;
       -- Specifies the width of the MMap Read Address Channel
       -- Address bus

    C_RDWR_MDATA_WIDTH        : Integer range 32 to 256 :=  32;
       -- Specifies the width of the MMap Read Data Channel
       -- data bus

    C_RDWR_SDATA_WIDTH        : Integer range 8 to 256 :=  32;
       -- Specifies the width of the MM2S Master Stream Data
       -- Channel data bus

    C_RDWR_MAX_BURST_LEN         : Integer range 16 to  256 :=  16;
       -- Specifies the max number of databeats to use for MMap
       -- burst transfers by the MM2S function

    C_RDWR_BTT_USED           : Integer range 8 to  23 :=  12;
      -- Specifies the number of bits used from the BTT field
      -- of the input Command Word of the MM2S Command Interface

    C_RDWR_ADDR_PIPE_DEPTH     : Integer range 1 to 30 := 2;
      -- This parameter specifies the depth of the RDWR internal
      -- child command queues in the Read Address Controller and
      -- the Read Data Controller. Increasing this value will
      -- allow more Read Addresses to be issued to the AXI4 Read
      -- Address Channel before receipt of the associated read
      -- data on the Read Data Channel.

    C_RDWR_PCC_CMD_WIDTH       : Integer range 68 to 100 :=  68;
       -- Specifies the width of the PCC Command input

    C_RDWR_STATUS_WIDTH       : Integer range 8 to 8     :=  8;
       -- Specifies the width of the Status Output bus


    C_FAMILY                  : String := "virtex7"
       -- Specifies the target FPGA family type

    );
  port (


    -------------------------------------------------------------------------
    -- RDWR Primary Clock input
    -------------------------------------------------------------------------
    rdwr_aclk              : in  std_logic;
       -- Primary synchronization clock for the Master side
       -- interface and internal logic. It is also used
       -- for the User interface synchronization when
       -- C_STSCMD_IS_ASYNC = 0.

    -------------------------------------------------------------------------
    -- RDWR Primary Reset input
    -------------------------------------------------------------------------
    rdwr_areset           : in  std_logic;
       -- Reset used for the internal master logic

    -------------------------------------------------------------------------
    -- RDWR Master detected Error Output Discrete
    -------------------------------------------------------------------------
    rdwr_md_error          : out  std_logic;
       -- Master detected error output (acive high)



    -------------------------------------------------------------------------
    -- Command/Status Module PCC Command Interface (AXI Stream Like)
    -------------------------------------------------------------------------
    cmd2rdwr_cmd_valid      : in  std_logic;                                          -- Command IF
    rdwr2cmd_cmd_ready      : out std_logic;                                          -- Command IF
    cmd2rdwr_cmd_data       : in  std_logic_vector(C_RDWR_PCC_CMD_WIDTH-1 downto 0);  -- Command IF

    -------------------------------------------------------------------------
    -- Command/Status Module Type Interface
    -------------------------------------------------------------------------
    cmd2rdwr_doing_read     : in  std_logic;                                          -- Read Active Discrete
    cmd2rdwr_doing_write    : in  std_logic;                                          -- Write Active Discrete





    -------------------------------------------------------------------------
    -- Command/Status Module Read Status Ports (AXI Stream Like)
    -------------------------------------------------------------------------
    stat2rsc_status_ready   : in  std_logic;                                          -- Read Status
    rsc2stat_status_valid   : out std_logic;                                          -- Read Status
    rsc2stat_status         : out std_logic_vector(C_RDWR_STATUS_WIDTH-1 downto 0);   -- Read Status

    -------------------------------------------------------------------------
    -- Command/Status Module Write Status Ports (AXI Stream Like)
    -------------------------------------------------------------------------
    stat2wsc_status_ready   : in  std_logic;                                          -- Write Status
    wsc2stat_status_valid   : out std_logic;                                          -- Write Status
    wsc2stat_status         : out std_logic_vector(C_RDWR_STATUS_WIDTH-1 downto 0);   -- Write Status





    -------------------------------------------------------------------------
    -- LocalLink Enable Outputs (1 clock pulse)
    -------------------------------------------------------------------------
    rd_llink_enable         : out std_logic;                                          -- Read LLink Enable
    wr_llink_enable         : out std_logic;                                          -- Write LLink Enable



    -------------------------------------------------------------------------
    -- Read Address Posting Contols/Status
    -------------------------------------------------------------------------
    rd_allow_addr_req       : in  std_logic;                                          -- Read Address Posting
    rd_addr_req_posted      : out std_logic;                                          -- Read Address Posting
    rd_xfer_cmplt           : out std_logic;                                          -- Read Address Posting

    -------------------------------------------------------------------------
    -- Write Address Posting Contols/Status
    -------------------------------------------------------------------------
    wr_allow_addr_req       : in  std_logic;                                          -- Write Address Posting
    wr_addr_req_posted      : out std_logic;                                          -- Write Address Posting
    wr_xfer_cmplt           : out std_logic;                                          -- Write Address Posting




    -------------------------------------------------------------------------
    -- AXI Read Address Channel I/O
    -------------------------------------------------------------------------
    rd_arid                 : out std_logic_vector(C_RDWR_ID_WIDTH-1 downto 0);       -- AXI4
    rd_araddr               : out std_logic_vector(C_RDWR_ADDR_WIDTH-1 downto 0);     -- AXI4
    rd_arlen                : out std_logic_vector(7 downto 0);                       -- AXI4
    rd_arsize               : out std_logic_vector(2 downto 0);                       -- AXI4
    rd_arburst              : out std_logic_vector(1 downto 0);                       -- AXI4
    rd_arprot               : out std_logic_vector(2 downto 0);                       -- AXI4
    rd_arcache              : out std_logic_vector(3 downto 0);                       -- AXI4
    rd_arvalid              : out std_logic;                                          -- AXI4
    rd_arready              : in  std_logic;                                          -- AXI4

    -------------------------------------------------------------------------
    -- AXI Read Data Channel I/O
    -------------------------------------------------------------------------
    rd_rdata                : In  std_logic_vector(C_RDWR_MDATA_WIDTH-1 downto 0);    -- AXI4
    rd_rresp                : In  std_logic_vector(1 downto 0);                       -- AXI4
    rd_rlast                : In  std_logic;                                          -- AXI4
    rd_rvalid               : In  std_logic;                                          -- AXI4
    rd_rready               : Out std_logic;                                          -- AXI4

    -------------------------------------------------------------------------
    -- AXI Read Master Stream Channel I/O
    -------------------------------------------------------------------------         -- AXI4 Stream
    rd_strm_tdata           : Out std_logic_vector(C_RDWR_SDATA_WIDTH-1 downto 0);    -- AXI4 Stream
    rd_strm_tstrb           : Out std_logic_vector((C_RDWR_SDATA_WIDTH/8)-1 downto 0);-- AXI4 Stream
    rd_strm_tlast           : Out std_logic;                                          -- AXI4 Stream
    rd_strm_tvalid          : Out std_logic;                                          -- AXI4 Stream
    rd_strm_tready          : In  std_logic;                                          -- AXI4 Stream






    -------------------------------------------------------------------------
    -- AXI Write Address Channel I/O
    -------------------------------------------------------------------------
    wr_awid                 : out std_logic_vector(C_RDWR_ID_WIDTH-1 downto 0);       -- AXI4
    wr_awaddr               : out std_logic_vector(C_RDWR_ADDR_WIDTH-1 downto 0);     -- AXI4
    wr_awlen                : out std_logic_vector(7 downto 0);                       -- AXI4
    wr_awsize               : out std_logic_vector(2 downto 0);                       -- AXI4
    wr_awburst              : out std_logic_vector(1 downto 0);                       -- AXI4
    wr_awprot               : out std_logic_vector(2 downto 0);                       -- AXI4
    wr_awcache              : out std_logic_vector(3 downto 0);                       -- AXI4
    wr_awvalid              : out std_logic;                                          -- AXI4
    wr_awready              : in  std_logic;                                          -- AXI4

    -------------------------------------------------------------------------
    -- RDWR AXI Write Data Channel I/O
    -------------------------------------------------------------------------
    wr_wdata                : Out  std_logic_vector(C_RDWR_MDATA_WIDTH-1 downto 0);     -- AXI4 
    wr_wstrb                : Out  std_logic_vector((C_RDWR_MDATA_WIDTH/8)-1 downto 0); -- AXI4 
    wr_wlast                : Out  std_logic;                                           -- AXI4 
    wr_wvalid               : Out  std_logic;                                           -- AXI4 
    wr_wready               : In   std_logic;                                           -- AXI4 

    -------------------------------------------------------------------------
    -- RDWR AXI Write response Channel I/O
    -------------------------------------------------------------------------
    wr_bresp                : In   std_logic_vector(1 downto 0);                       -- AXI4 
    wr_bvalid               : In   std_logic;                                          -- AXI4 
    wr_bready               : Out  std_logic;                                          -- AXI4 


    -------------------------------------------------------------------------
    -- RDWR AXI Slave Stream Channel I/O
    -------------------------------------------------------------------------
    wr_strm_tdata           : In  std_logic_vector(C_RDWR_SDATA_WIDTH-1 downto 0);     -- AXI4 Stream
    wr_strm_tstrb           : In  std_logic_vector((C_RDWR_SDATA_WIDTH/8)-1 downto 0); -- AXI4 Stream
    wr_strm_tlast           : In  std_logic;                                           -- AXI4 Stream
    wr_strm_tvalid          : In  std_logic;                                           -- AXI4 Stream
    wr_strm_tready          : Out std_logic                                            -- AXI4 Stream

    );

end entity axi_master_burst_rd_wr_cntlr;


architecture implementation of axi_master_burst_rd_wr_cntlr is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  -- Function Declarations   ----------------------------------------

  -------------------------------------------------------------------
  -- Function
  --
  -- Function Name: func_calc_rdmux_sel_bits
  --
  -- Function Description:
  --  This function calculates the number of address bits needed for
  -- the Read data mux select control.
  --
  -------------------------------------------------------------------
  function func_calc_rdmux_sel_bits (mmap_dwidth_value : integer) return integer is

    Variable num_addr_bits_needed : Integer range 1 to 5 := 1;

  begin

    case mmap_dwidth_value is
      when 32 =>
        num_addr_bits_needed := 2;
      when 64 =>
        num_addr_bits_needed := 3;
      when 128 =>
        num_addr_bits_needed := 4;
      when others => -- 256 bits
        num_addr_bits_needed := 5;
    end case;

    Return (num_addr_bits_needed);

  end function func_calc_rdmux_sel_bits;





   -------------------------------------------------------------------
   -- Function
   --
   -- Function Name: funct_get_min_btt_width
   --
   -- Function Description:
   --   This function calculates the minimum required value  
   -- for the used width of the command BTT field. 
   --
   -------------------------------------------------------------------
   function funct_get_min_btt_width (max_burst_beats : integer;
                                     bytes_per_beat  : integer ) return integer is
   
     Variable var_min_btt_needed      : Integer;
     Variable var_max_bytes_per_burst : Integer;
   
   
   begin
   
     var_max_bytes_per_burst := max_burst_beats*bytes_per_beat;
     
-- coverage off     
     if (var_max_bytes_per_burst <= 16) then
     
        var_min_btt_needed := 5;
     
     elsif (var_max_bytes_per_burst <= 32) then
     
        var_min_btt_needed := 6;
-- coverage on     
     
     elsif (var_max_bytes_per_burst <= 64) then
     
        var_min_btt_needed := 7;
     
     elsif (var_max_bytes_per_burst <= 128) then
     
        var_min_btt_needed := 8;
     
     elsif (var_max_bytes_per_burst <= 256) then
     
        var_min_btt_needed := 9;
     
     elsif (var_max_bytes_per_burst <= 512) then
     
        var_min_btt_needed := 10;
     
     elsif (var_max_bytes_per_burst <= 1024) then
     
        var_min_btt_needed := 11;
     
     elsif (var_max_bytes_per_burst <= 2048) then
     
        var_min_btt_needed := 12;
     
     elsif (var_max_bytes_per_burst <= 4096) then
     
        var_min_btt_needed := 13;
     
-- coverage off     
     else   -- 8K byte range
     
        var_min_btt_needed := 14;
-- coverage on     
          
     end if;
     
     
     
     Return (var_min_btt_needed);
   
     
   end function funct_get_min_btt_width;
   
   
   
   
   
   -------------------------------------------------------------------
   -- Function
   --
   -- Function Name: funct_fix_btt_used
   --
   -- Function Description:
   --  THis function makes sure the BTT width used is at least the
   -- minimum needed.
   --
   -------------------------------------------------------------------
   function funct_fix_btt_used (requested_btt_width : integer;
                                min_btt_width       : integer) return integer is
   
     Variable var_corrected_btt_width : Integer;
   
   begin
   
     
     If (requested_btt_width < min_btt_width) Then
         
       var_corrected_btt_width :=  min_btt_width;
     
     else
         
       var_corrected_btt_width :=  requested_btt_width;
     
     End if;
     
     
     Return (var_corrected_btt_width);
   
     
   end function funct_fix_btt_used;
   
   
   
   
   
   
   



  -- Constant Declarations   ----------------------------------------

 Constant LOGIC_LOW                 : std_logic := '0';
 Constant LOGIC_HIGH                : std_logic := '1';

 Constant RDWR_ARID_VALUE           : integer range  0 to 255 := C_RDWR_ARID;
 Constant RDWR_ARID_WIDTH           : integer range  1 to  8  := C_RDWR_ID_WIDTH;
 Constant RDWR_ADDR_WIDTH           : integer range 32 to  64 := C_RDWR_ADDR_WIDTH;
 Constant RDWR_MDATA_WIDTH          : integer range 32 to 256 := C_RDWR_MDATA_WIDTH;
 Constant RDWR_SDATA_WIDTH          : integer range  8 to 256 := C_RDWR_SDATA_WIDTH;

 Constant BASE_PCC_CMD_WIDTH        : integer := 64+C_RDWR_ADDR_WIDTH-32;
 Constant RDWR_TAG_WIDTH            : integer range  1 to   8 := C_RDWR_PCC_CMD_WIDTH-BASE_PCC_CMD_WIDTH;
 Constant RDWR_CMD_WIDTH            : integer                 := C_RDWR_PCC_CMD_WIDTH;

 Constant RDWR_STS_WIDTH            : integer                 := C_RDWR_STATUS_WIDTH;
 Constant INCLUDE_RDWR_STSFIFO      : integer range  0 to   1 := 1;
 Constant RDWR_STSCMD_FIFO_DEPTH    : integer range  1 to  16 := 1;
 Constant RDWR_STSCMD_IS_ASYNC      : integer range  0 to   1 := 0;
 Constant ADDR_CNTL_FIFO_DEPTH      : integer range  1 to  30 := C_RDWR_ADDR_PIPE_DEPTH;
 Constant RD_DATA_CNTL_FIFO_DEPTH   : integer range  1 to  30 := C_RDWR_ADDR_PIPE_DEPTH;
 Constant WR_DATA_CNTL_FIFO_DEPTH   : integer range  1 to  30 := C_RDWR_ADDR_PIPE_DEPTH;
 Constant SEL_ADDR_WIDTH            : integer range  2 to   5 := func_calc_rdmux_sel_bits(RDWR_MDATA_WIDTH);
 
 
 Constant RDWR_BTT_USED             : integer range  8 to  23 := C_RDWR_BTT_USED;
 Constant RDWR_MAX_BURST_LEN        : integer range 16 to 256 := C_RDWR_MAX_BURST_LEN;
 Constant RDWR_BYTES_PER_BEAT       : integer range  4 to  16 := RDWR_SDATA_WIDTH/8;
 
 Constant RDWR_MIN_BTT_NEEDED       : integer := funct_get_min_btt_width(RDWR_MAX_BURST_LEN,
                                                                         RDWR_BYTES_PER_BEAT);
 
 Constant RDWR_CORRECTED_BTT_USED   : integer := funct_fix_btt_used(RDWR_BTT_USED,
                                                                    RDWR_MIN_BTT_NEEDED);
 
 Constant OMIT_INDET_BTT            : integer range  0 to   1 := 0;
 Constant OMIT_DRE                  : integer range  0 to   1 := 0;
 Constant DRE_ALIGN_WIDTH           : integer range  1 to   3 := 1;
 Constant WR_STATUS_CNTL_FIFO_DEPTH : integer range  1 to  32 := WR_DATA_CNTL_FIFO_DEPTH+2; -- 2 added for going
                                                                                              -- full thresholding
                                                                                              -- in WSC
 Constant WSC_BYTES_RCVD_WIDTH      : integer range  8 to  32 := RDWR_CORRECTED_BTT_USED;
 Constant OMIT_STORE_FORWARD        : integer range  0 to   1 := 0;





 -- Signal Declarations  ------------------------------------------

 signal sig_md_error_reg             : std_logic := '0';
 signal sig_doing_read               : std_logic := '0';
 signal sig_doing_write              : std_logic := '0';

 signal sig_axi2addr_aready          : std_logic := '0';
 signal sig_addr2axi_arvalid         : std_logic := '0';
 signal sig_addr2axi_awvalid         : std_logic := '0';
 signal sig_addr2axi_aid             : std_logic_vector(RDWR_ARID_WIDTH-1 downto 0) := (others => '0');
 signal sig_addr2axi_aaddr           : std_logic_vector(RDWR_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_addr2axi_alen            : std_logic_vector(7 downto 0) := (others => '0');
 signal sig_addr2axi_asize           : std_logic_vector(2 downto 0) := (others => '0');
 signal sig_addr2axi_aburst          : std_logic_vector(1 downto 0) := (others => '0');
 signal sig_addr2axi_aprot           : std_logic_vector(2 downto 0) := (others => '0');

 signal sig_rdc2axi_rready           : std_logic := '0';
 signal sig_axi2rdc_rvalid           : std_logic := '0';
 signal sig_axi2rdc_rdata            : std_logic_vector(RDWR_MDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_axi2rdc_rresp            : std_logic_vector(1 downto 0) := (others => '0');
 signal sig_axi2rdc_rlast            : std_logic := '0';

 signal sig_wdc2wrskid_addr_lsb      : std_logic_vector(SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_wrskid2wdc_wready        : std_logic := '0';
 signal sig_wdc2wrskid_wvalid        : std_logic := '0';
 signal sig_wdc2wrskid_wdata         : std_logic_vector(RDWR_SDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_wdc2wrskid_wstrb         : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_wdc2wrskid_wlast         : std_logic := '0';

 signal sig_axi2wrskid_wready        : std_logic := '0';
 signal sig_wrskid2axi_wvalid        : std_logic := '0';
 signal sig_wrskid2axi_wdata         : std_logic_vector(RDWR_MDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_wrskid2axi_wstrb         : std_logic_vector((RDWR_MDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_wrskid2axi_wlast         : std_logic := '0';

 signal sig_wsc2axi_bready           : std_logic := '0';
 signal sig_axi2wsc_bvalid           : std_logic := '0';
 signal sig_axi2wsc_bresp            : std_logic_vector(1 downto 0) := (others => '0');

 signal sig_rdskid2rdc_tready        : std_logic := '0';
 signal sig_rdc2rdskid_tvalid        : std_logic := '0';
 signal sig_rdc2rdskid_tdata         : std_logic_vector(RDWR_SDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_rdc2rdskid_tstrb         : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_rdc2rdskid_tlast         : std_logic := '0';

 signal sig_strm2rdskid_tready       : std_logic := '0';
 signal sig_rdskid2strm_tvalid       : std_logic := '0';
 signal sig_rdskid2strm_tdata        : std_logic_vector(RDWR_SDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_rdskid2strm_tstrb        : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_rdskid2strm_tlast        : std_logic := '0';

 signal sig_wrskid2strm_tready       : std_logic := '0';
 signal sig_strm2wrskid_tvalid       : std_logic := '0';
 signal sig_strm2wrskid_tdata        : std_logic_vector(RDWR_SDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_strm2wrskid_tstrb        : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_strm2wrskid_tlast        : std_logic := '0';

 signal sig_wdc2wrskid_tready        : std_logic := '0';
 signal sig_wrskid2wdc_tvalid        : std_logic := '0';
 signal sig_wrskid2wdc_tdata         : std_logic_vector(RDWR_SDATA_WIDTH-1 downto 0) := (others => '0');
 signal sig_wrskid2wdc_tstrb         : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_wrskid2wdc_tlast         : std_logic := '0';

 signal sig_cmd2pcc_command          : std_logic_vector(RDWR_CMD_WIDTH-1 downto 0) := (others => '0');
 signal sig_cmd2pcc_cmd_valid        : std_logic := '0';
 signal sig_pcc2cmd_cmd_ready        : std_logic := '0';

 signal sig_pcc2addr_tag             : std_logic_vector(RDWR_TAG_WIDTH-1 downto 0) := (others => '0');
 signal sig_pcc2addr_addr            : std_logic_vector(RDWR_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_pcc2addr_len             : std_logic_vector(7 downto 0) := (others => '0');
 signal sig_pcc2addr_size            : std_logic_vector(2 downto 0) := (others => '0');
 signal sig_pcc2addr_burst           : std_logic_vector(1 downto 0) := (others => '0');
 signal sig_pcc2addr_cmd_cmplt       : std_logic := '0';
 signal sig_pcc2addr_calc_error      : std_logic := '0';
 signal sig_pcc2addr_cmd_valid       : std_logic := '0';
 signal sig_addr2pcc_cmd_ready       : std_logic := '0';

 signal sig_pcc2data_tag             : std_logic_vector(RDWR_TAG_WIDTH-1 downto 0) := (others => '0');
 signal sig_pcc2data_saddr_lsb       : std_logic_vector(SEL_ADDR_WIDTH-1 downto 0) := (others => '0');
 signal sig_pcc2data_len             : std_logic_vector(7 downto 0) := (others => '0');
 signal sig_pcc2data_strt_strb       : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_pcc2data_last_strb       : std_logic_vector((RDWR_SDATA_WIDTH/8)-1 downto 0) := (others => '0');
 signal sig_pcc2data_drr             : std_logic := '0';
 signal sig_pcc2data_eof             : std_logic := '0';
 signal sig_pcc2data_sequential      : std_logic := '0';
 signal sig_pcc2data_calc_error      : std_logic := '0';
 signal sig_pcc2data_cmd_cmplt       : std_logic := '0';
 signal sig_pcc2data_dre_src_align   : std_logic_vector(DRE_ALIGN_WIDTH-1 downto 0) := (others => '0');
 signal sig_pcc2data_dre_dest_align  : std_logic_vector(DRE_ALIGN_WIDTH-1 downto 0) := (others => '0');

 signal sig_pcc2all_calc_err         : std_logic := '0';

 signal sig_pcc2data_cmd_valid       : std_logic := '0';
 signal sig_pcc2rdc_cmd_valid        : std_logic := '0';
 signal sig_pcc2wdc_cmd_valid        : std_logic := '0';

 signal sig_data2pcc_cmd_ready       : std_logic := '0';
 signal sig_rdc2pcc_cmd_ready        : std_logic := '0';
 signal sig_wdc2pcc_cmd_ready        : std_logic := '0';

 signal sig_addr2data_addr_posted    : std_logic := '0';
 signal sig_addr2wdc_addr_posted     : std_logic := '0';
 signal sig_addr2rdc_addr_posted     : std_logic := '0';

 signal sig_rdc2skid_halt            : std_logic := '0';
 signal sig_wdc2skid_halt            : std_logic := '0';

 signal sig_rd_xfer_cmplt            : std_logic := '0';
 signal sig_wr_xfer_cmplt            : std_logic := '0';

 signal sig_data2addr_stop_req       : std_logic := '0';
 signal sig_rdc2addr_stop_req        : std_logic := '0';
 signal sig_wdc2addr_stop_req        : std_logic := '0';
 signal sig_wsc2wdc_halt_pipe        : std_logic := '0';

 signal sig_addr2stat_calc_error     : std_logic := '0';
 signal sig_addr2rsc_calc_error      : std_logic := '0';
 signal sig_addr2wsc_calc_error      : std_logic := '0';

 signal sig_addr2stat_cmd_fifo_empty : std_logic := '0';
 signal sig_addr2rsc_cmd_fifo_empty  : std_logic := '0';
 signal sig_addr2wsc_cmd_fifo_empty  : std_logic := '0';

 signal sig_rdc2rsc_tag              : std_logic_vector(RDWR_TAG_WIDTH-1 downto 0) := (others => '0');
 signal sig_rdc2rsc_calc_err         : std_logic := '0';
 signal sig_rdc2rsc_okay             : std_logic := '0';
 signal sig_rdc2rsc_decerr           : std_logic := '0';
 signal sig_rdc2rsc_slverr           : std_logic := '0';
 signal sig_rdc2rsc_cmd_cmplt        : std_logic := '0';
 signal sig_rsc2rdc_ready            : std_logic := '0';
 signal sig_rdc2rsc_valid            : std_logic := '0';

 signal sig_rsc2rdc_halt_pipe        : std_logic := '0';

 signal sig_allow_addr_req           : std_logic := '0';
 signal sig_addr_req_posted          : std_logic := '0';

 signal sig_stat2rsc_status_ready    : std_logic := '0';
 signal sig_rsc2stat_status_valid    : std_logic := '0';
 signal sig_rsc2stat_status          : std_logic_vector(RDWR_STS_WIDTH-1 downto 0) := (others => '0');

 signal sig_stat2wsc_status_ready    : std_logic := '0';
 signal sig_wsc2stat_status_valid    : std_logic := '0';
 signal sig_wsc2stat_status          : std_logic_vector(RDWR_STS_WIDTH-1 downto 0) := (others => '0');

 signal sig_wdc_stbs_asserted        : std_logic_vector(7 downto 0) := (others => '0');

 signal sig_wdc2wsc_tag              : std_logic_vector(RDWR_TAG_WIDTH-1 downto 0) := (others => '0');
 signal sig_wdc2wsc_calc_err         : std_logic := '0';
 signal sig_wdc2wsc_last_err         : std_logic := '0';
 signal sig_wdc2wsc_cmd_cmplt        : std_logic := '0';
 signal sig_wsc2wdc_ready            : std_logic := '0';
 signal sig_wdc2wsc_valid            : std_logic := '0';
 signal sig_wdc2wsc_eop              : std_logic := '0';
 signal sig_wdc2wsc_bytes_rcvd       : std_logic_vector(WSC_BYTES_RCVD_WIDTH-1 downto 0) := (others => '0');

 signal sig_enable_rd_llink          : std_logic := '0';
 signal sig_enable_wr_llink          : std_logic := '0';

 signal sig_doing_read_reg           : std_logic := '0';
 signal sig_doing_write_reg          : std_logic := '0';
 
 signal sig_rst2all_stop_request     : std_logic := '0';
 signal sig_realign2wdc_eop_error    : std_logic := '0';


begin --(architecture implementation)




  ---------------------------------------------------------------
  -- Command Type Discrete Assignements
  ---------------------------------------------------------------
  sig_doing_read  <= cmd2rdwr_doing_read;
  sig_doing_write <= cmd2rdwr_doing_write;




  ---------------------------------------------------------------
  -- Read Address Pipelining Assignements
  ---------------------------------------------------------------
  rd_addr_req_posted <= sig_addr_req_posted
    When  (sig_doing_read = '1')
    Else '0';


  rd_xfer_cmplt  <= sig_rd_xfer_cmplt ;




  ---------------------------------------------------------------
  -- Write Address Pipelining Assignements
  ---------------------------------------------------------------
  wr_addr_req_posted <= sig_addr_req_posted
    When  (sig_doing_write = '1')
    Else '0';


  wr_xfer_cmplt <=  sig_wr_xfer_cmplt;




  ---------------------------------------------------------------
  -- AXI Read Addess Channel AREADY Port Assignments
  -- This is a composite of the Read and Write Address ready 
  -- inputs.
  ---------------------------------------------------------------
  sig_axi2addr_aready <= rd_arready
    when (sig_doing_read = '1')
    Else  wr_awready
    when (sig_doing_write = '1')
    else '0' ;


  ---------------------------------------------------------------
  -- AXI Read Addess Channel Port Assignments
  ---------------------------------------------------------------
  rd_arvalid          <= sig_addr2axi_arvalid;

  rd_arid             <= sig_addr2axi_aid    ;
  rd_araddr           <= sig_addr2axi_aaddr  ;
  rd_arlen            <= sig_addr2axi_alen   ;
  rd_arsize           <= sig_addr2axi_asize  ;
  rd_arburst          <= sig_addr2axi_aburst ;
  rd_arprot           <= sig_addr2axi_aprot  ;
  rd_arcache          <= "0011"              ;  -- Per Interface-X guidelines for Masters ;




  ---------------------------------------------------------------
  -- AXI Read Data Channel Port Assignments
  ---------------------------------------------------------------
  rd_rready           <= sig_rdc2axi_rready  ;
  sig_axi2rdc_rvalid  <= rd_rvalid           ;
  sig_axi2rdc_rdata   <= rd_rdata            ;
  sig_axi2rdc_rresp   <= rd_rresp            ;
  sig_axi2rdc_rlast   <= rd_rlast            ;





  ---------------------------------------------------------------
  -- AXI Write Addess Channel Port Assignments
  ---------------------------------------------------------------
  wr_awvalid          <= sig_addr2axi_awvalid;

  wr_awid             <= sig_addr2axi_aid    ;
  wr_awaddr           <= sig_addr2axi_aaddr  ;
  wr_awlen            <= sig_addr2axi_alen   ;
  wr_awsize           <= sig_addr2axi_asize  ;
  wr_awburst          <= sig_addr2axi_aburst ;
  wr_awprot           <= sig_addr2axi_aprot  ;
  wr_awcache          <= "0011"              ;  -- Per Interface-X guidelines for Masters ;



  -------------------------------------------------------------------------
  -- AXI Write Data Channel Port Assignments
  -------------------------------------------------------------------------
  sig_axi2wrskid_wready  <=  wr_wready           ;
  wr_wvalid              <=  sig_wrskid2axi_wvalid  ;
  wr_wdata               <=  sig_wrskid2axi_wdata   ;
  wr_wstrb               <=  sig_wrskid2axi_wstrb   ;
  wr_wlast               <=  sig_wrskid2axi_wlast   ;


  -------------------------------------------------------------------------
  -- AXI Write Response Channel Port Assignments
  -------------------------------------------------------------------------
  wr_bready            <=  sig_wsc2axi_bready  ;
  sig_axi2wsc_bvalid   <=  wr_bvalid           ;
  sig_axi2wsc_bresp    <=  wr_bresp            ;







  -------------------------------------------------------------------------
  -- AXI Read Master Stream Channel Port Assignments
  -------------------------------------------------------------------------
  sig_strm2rdskid_tready   <= rd_strm_tready         ;
  rd_strm_tvalid           <= sig_rdskid2strm_tvalid ;
  rd_strm_tdata            <= sig_rdskid2strm_tdata  ;
  rd_strm_tstrb            <= sig_rdskid2strm_tstrb  ;
  rd_strm_tlast            <= sig_rdskid2strm_tlast  ;



  -------------------------------------------------------------------------
  -- AXI Write Stream Channel Port Assignments
  -------------------------------------------------------------------------
  wr_strm_tready           <= sig_wrskid2strm_tready ;
  sig_strm2wrskid_tvalid   <= wr_strm_tvalid         ;
  sig_strm2wrskid_tdata    <= wr_strm_tdata          ;
  sig_strm2wrskid_tstrb    <= wr_strm_tstrb          ;
  sig_strm2wrskid_tlast    <= wr_strm_tlast          ;




  -------------------------------------------------------------------------
  -- Read Status I/O Port Assignments
  -------------------------------------------------------------------------
  sig_stat2rsc_status_ready  <=  stat2rsc_status_ready     ;
  rsc2stat_status_valid      <=  sig_rsc2stat_status_valid ;
  rsc2stat_status            <=  sig_rsc2stat_status       ;


  -------------------------------------------------------------------------
  -- Write Status I/O Port Assignments
  -------------------------------------------------------------------------
  sig_stat2wsc_status_ready  <=  stat2wsc_status_ready     ;
  wsc2stat_status_valid      <=  sig_wsc2stat_status_valid ;
  wsc2stat_status            <=  sig_wsc2stat_status       ;




  -------------------------------------------------------------------------
  -- Internal error output discrete
  -------------------------------------------------------------------------
  rdwr_md_error      <=  sig_md_error_reg;




  -------------------------------------------------------------------------
  -- Assign the PCC Command Interface Ports
  -------------------------------------------------------------------------
  sig_cmd2pcc_command     <=  cmd2rdwr_cmd_data        ;
  sig_cmd2pcc_cmd_valid   <=  cmd2rdwr_cmd_valid       ;
  rdwr2cmd_cmd_ready      <=  sig_pcc2cmd_cmd_ready    ;








 -------------------------------------------------------------------------
 -- Misc. Logic
 -------------------------------------------------------------------------

 sig_rst2all_stop_request  <= '0';

 
 
 
 
 
 
 
 -------------------------------------------------------------------------
 -- LocalLink Enables Logic
 -------------------------------------------------------------------------

 rd_llink_enable <=  sig_enable_rd_llink;
 
 wr_llink_enable <=  sig_enable_wr_llink;
 
 
 -- create a 1 clock pulse for enabling the Read LocalLink on
 -- the rising edge of the sig_doing_read signal.
 sig_enable_rd_llink <= not(sig_doing_read_reg) and
                        sig_doing_read ;

 -- create a 1 clock pulse for enabling the write LocalLink on
 -- the rising edge of the sig_doing_write signal.
 sig_enable_wr_llink <= not(sig_doing_write_reg) and
                        sig_doing_write ;


 -------------------------------------------------------------
 -- Synchronous Process with Sync Reset
 --
 -- Label: IMP_DOING_RD_FLOP
 --
 -- Process Description:
 --   Registers the Doing Read input signal
 --
 -------------------------------------------------------------
 IMP_DOING_RD_FLOP : process (rdwr_aclk)
   begin
     if (rdwr_aclk'event and rdwr_aclk = '1') then
        if (rdwr_areset = '1') then
 
          sig_doing_read_reg <= '0';
 
        else
 
          sig_doing_read_reg <= sig_doing_read;
 
        end if; 
     end if;       
   end process IMP_DOING_RD_FLOP; 
  
  
  
  
 -------------------------------------------------------------
 -- Synchronous Process with Sync Reset
 --
 -- Label: IMP_DOING_WR_FLOP
 --
 -- Process Description:
 --   Registers the Doing Write input signal
 --
 -------------------------------------------------------------
 IMP_DOING_WR_FLOP : process (rdwr_aclk)
   begin
     if (rdwr_aclk'event and rdwr_aclk = '1') then
        if (rdwr_areset = '1') then
 
          sig_doing_write_reg <= '0';
 
        else
 
          sig_doing_write_reg <= sig_doing_write;
 
        end if; 
     end if;       
   end process IMP_DOING_WR_FLOP; 
  
  
  
  
  
  

 -------------------------------------------------------------------------
 -- Predictive Command Calculator Logic
 -------------------------------------------------------------------------

 sig_data2pcc_cmd_ready <= sig_rdc2pcc_cmd_ready
   When (sig_doing_read = '1')
   Else sig_wdc2pcc_cmd_ready
   When (sig_doing_write = '1')
   Else '0';

 sig_pcc2rdc_cmd_valid <= sig_pcc2data_cmd_valid
   when (sig_doing_read = '1')
   Else '0';


 sig_pcc2wdc_cmd_valid <= sig_pcc2data_cmd_valid
   when (sig_doing_write = '1')
   Else '0';


 ------------------------------------------------------------
 -- Instance: I_MSTR_PCC
 --
 -- Description:
 -- Predictive Command Calculator Block
 --
 ------------------------------------------------------------
  I_MSTR_PCC : entity axi_master_burst_v2_0_7.axi_master_burst_pcc
  generic map (

    C_DRE_ALIGN_WIDTH         =>  DRE_ALIGN_WIDTH             ,
    C_SEL_ADDR_WIDTH          =>  SEL_ADDR_WIDTH              ,
    C_ADDR_WIDTH              =>  RDWR_ADDR_WIDTH             ,
    C_STREAM_DWIDTH           =>  RDWR_SDATA_WIDTH            ,
    C_MAX_BURST_LEN           =>  RDWR_MAX_BURST_LEN          ,
    C_CMD_WIDTH               =>  RDWR_CMD_WIDTH              ,
    C_TAG_WIDTH               =>  RDWR_TAG_WIDTH              ,
    C_BTT_USED                =>  RDWR_CORRECTED_BTT_USED     ,
    C_SUPPORT_INDET_BTT       =>  OMIT_INDET_BTT

    )
  port map (

    -- Clock input
    primary_aclk              =>  rdwr_aclk                   ,
    mmap_reset                =>  rdwr_areset                 ,
    cmd2mstr_command          =>  sig_cmd2pcc_command         ,
    cmd2mstr_cmd_valid        =>  sig_cmd2pcc_cmd_valid       ,
    mst2cmd_cmd_ready         =>  sig_pcc2cmd_cmd_ready       ,

    mstr2addr_tag             =>  sig_pcc2addr_tag            ,
    mstr2addr_addr            =>  sig_pcc2addr_addr           ,
    mstr2addr_len             =>  sig_pcc2addr_len            ,
    mstr2addr_size            =>  sig_pcc2addr_size           ,
    mstr2addr_burst           =>  sig_pcc2addr_burst          ,
    mstr2addr_cmd_cmplt       =>  sig_pcc2addr_cmd_cmplt      ,
    mstr2addr_calc_error      =>  sig_pcc2addr_calc_error     ,
    mstr2addr_cmd_valid       =>  sig_pcc2addr_cmd_valid      ,
    addr2mstr_cmd_ready       =>  sig_addr2pcc_cmd_ready      ,

    mstr2data_tag             =>  sig_pcc2data_tag            ,
    mstr2data_saddr_lsb       =>  sig_pcc2data_saddr_lsb      ,
    mstr2data_len             =>  sig_pcc2data_len            ,
    mstr2data_strt_strb       =>  sig_pcc2data_strt_strb      ,
    mstr2data_last_strb       =>  sig_pcc2data_last_strb      ,
    mstr2data_drr             =>  sig_pcc2data_drr            ,
    mstr2data_eof             =>  sig_pcc2data_eof            ,
    mstr2data_sequential      =>  sig_pcc2data_sequential     ,
    mstr2data_calc_error      =>  sig_pcc2data_calc_error     ,
    mstr2data_cmd_cmplt       =>  sig_pcc2data_cmd_cmplt      ,
    mstr2data_cmd_valid       =>  sig_pcc2data_cmd_valid      ,
    data2mstr_cmd_ready       =>  sig_data2pcc_cmd_ready      ,
    mstr2data_dre_src_align   =>  sig_pcc2data_dre_src_align  ,
    mstr2data_dre_dest_align  =>  sig_pcc2data_dre_dest_align ,

    calc_error                =>  sig_pcc2all_calc_err        ,

    dre2mstr_cmd_ready        =>  LOGIC_HIGH                  ,
    mstr2dre_cmd_valid        =>  open                        ,
    mstr2dre_tag              =>  open                        ,
    mstr2dre_dre_src_align    =>  open                        ,
    mstr2dre_dre_dest_align   =>  open                        ,
    mstr2dre_btt              =>  open                        ,
    mstr2dre_drr              =>  open                        ,
    mstr2dre_eof              =>  open                        ,
    mstr2dre_cmd_cmplt        =>  open                        ,
    mstr2dre_calc_error       =>  open


    );





  -------------------------------------------------------------------------
  -- Address Controller Logic
  -------------------------------------------------------------------------

   sig_allow_addr_req <= rd_allow_addr_req
     when (sig_doing_read = '1')
     Else wr_allow_addr_req
     When (sig_doing_write = '1')
    Else '0';




  sig_addr2rdc_addr_posted <= sig_addr2data_addr_posted
    When (sig_doing_read = '1')
    Else '0';

  sig_addr2wdc_addr_posted <= sig_addr2data_addr_posted
    When (sig_doing_write = '1')
    Else '0';



  sig_data2addr_stop_req  <=  sig_rdc2addr_stop_req  or
                              sig_wdc2addr_stop_req ;



  sig_addr2rsc_calc_error <= sig_addr2stat_calc_error
    when (sig_doing_read = '1')
    Else '0';


  sig_addr2wsc_calc_error  <=   sig_addr2stat_calc_error
    when (sig_doing_write = '1')
    Else '0';


  sig_addr2rsc_cmd_fifo_empty <= sig_addr2stat_cmd_fifo_empty
    when (sig_doing_read = '1')
    Else '0';


  sig_addr2wsc_cmd_fifo_empty <= sig_addr2stat_cmd_fifo_empty
    when (sig_doing_write = '1')
    Else '0';



  ------------------------------------------------------------
  -- Instance: I_ADDR_CNTL
  --
  -- Description:
  --   Address Controller Block
  --
  ------------------------------------------------------------
   I_ADDR_CNTL : entity axi_master_burst_v2_0_7.axi_master_burst_addr_cntl
   generic map (

     C_ADDR_FIFO_DEPTH            =>  ADDR_CNTL_FIFO_DEPTH        ,
     C_ADDR_WIDTH                 =>  RDWR_ADDR_WIDTH             ,
     C_ADDR_ID                    =>  RDWR_ARID_VALUE             ,
     C_ADDR_ID_WIDTH              =>  RDWR_ARID_WIDTH             ,
     C_TAG_WIDTH                  =>  RDWR_TAG_WIDTH

     )
   port map (

     primary_aclk                 =>  rdwr_aclk                   ,
     mmap_reset                   =>  rdwr_areset                 ,

     doing_read                   =>  sig_doing_read              ,
     doing_write                  =>  sig_doing_write             ,

     addr2axi_aid                 =>  sig_addr2axi_aid            ,
     addr2axi_aaddr               =>  sig_addr2axi_aaddr          ,
     addr2axi_alen                =>  sig_addr2axi_alen           ,
     addr2axi_asize               =>  sig_addr2axi_asize          ,
     addr2axi_aburst              =>  sig_addr2axi_aburst         ,
     addr2axi_aprot               =>  sig_addr2axi_aprot          ,
     addr2axi_arvalid             =>  sig_addr2axi_arvalid        ,
     addr2axi_awvalid             =>  sig_addr2axi_awvalid        ,
     axi2addr_aready              =>  sig_axi2addr_aready         ,

     mstr2addr_tag                =>  sig_pcc2addr_tag            ,
     mstr2addr_addr               =>  sig_pcc2addr_addr           ,
     mstr2addr_len                =>  sig_pcc2addr_len            ,
     mstr2addr_size               =>  sig_pcc2addr_size           ,
     mstr2addr_burst              =>  sig_pcc2addr_burst          ,
     mstr2addr_cmd_cmplt          =>  sig_pcc2addr_cmd_cmplt      ,
     mstr2addr_calc_error         =>  sig_pcc2addr_calc_error     ,
     mstr2addr_cmd_valid          =>  sig_pcc2addr_cmd_valid      ,
     addr2mstr_cmd_ready          =>  sig_addr2pcc_cmd_ready      ,

     addr2rst_stop_cmplt          =>  open                        ,

     allow_addr_req               =>  sig_allow_addr_req          ,
     addr_req_posted              =>  sig_addr_req_posted         ,

     addr2data_addr_posted        =>  sig_addr2data_addr_posted   ,
     data2addr_data_rdy           =>  LOGIC_LOW                   ,
     data2addr_stop_req           =>  sig_data2addr_stop_req      ,

     addr2stat_calc_error         =>  sig_addr2stat_calc_error    ,
     addr2stat_cmd_fifo_empty     =>  sig_addr2stat_cmd_fifo_empty
     );












  -------------------------------------------------------------------------
  -- Read Data Controller Logic
  -------------------------------------------------------------------------





  ------------------------------------------------------------
  -- Instance: I_RD_DATA_CNTL
  --
  -- Description:
  --     Read Data Controller Block
  --
  ------------------------------------------------------------
   I_RD_DATA_CNTL : entity axi_master_burst_v2_0_7.axi_master_burst_rddata_cntl
   generic map (

     C_INCLUDE_DRE             =>  OMIT_DRE                     ,
     C_ALIGN_WIDTH             =>  DRE_ALIGN_WIDTH              ,
     C_SEL_ADDR_WIDTH          =>  SEL_ADDR_WIDTH               ,
     C_DATA_CNTL_FIFO_DEPTH    =>  RD_DATA_CNTL_FIFO_DEPTH      ,
     C_MMAP_DWIDTH             =>  RDWR_MDATA_WIDTH             ,
     C_STREAM_DWIDTH           =>  RDWR_SDATA_WIDTH             ,
     C_TAG_WIDTH               =>  RDWR_TAG_WIDTH               ,
     C_FAMILY                  =>  C_FAMILY

     )
   port map (

     -- Clock and Reset  -----------------------------------
     primary_aclk              =>  rdwr_aclk                    ,
     mmap_reset                =>  rdwr_areset                  ,

     -- Soft Shutdown Interface -----------------------------
     rst2data_stop_request     =>  sig_rst2all_stop_request     ,
     data2addr_stop_req        =>  sig_rdc2addr_stop_req        ,
     data2rst_stop_cmplt       =>  open                         ,

     -- External Address Pipelining Contol support
     mm2s_rd_xfer_cmplt        =>  sig_rd_xfer_cmplt            ,


     -- AXI Read Data Channel I/O  -------------------------------
     mm2s_rdata                =>  sig_axi2rdc_rdata            ,
     mm2s_rresp                =>  sig_axi2rdc_rresp            ,
     mm2s_rlast                =>  sig_axi2rdc_rlast            ,
     mm2s_rvalid               =>  sig_axi2rdc_rvalid           ,
     mm2s_rready               =>  sig_rdc2axi_rready           ,

     -- MM2S DRE Control  -----------------------------------
     mm2s_dre_new_align        =>  open                         ,
     mm2s_dre_use_autodest     =>  open                         ,
     mm2s_dre_src_align        =>  open                         ,
     mm2s_dre_dest_align       =>  open                         ,
     mm2s_dre_flush            =>  open                         ,

     -- AXI Master Stream  -----------------------------------
     mm2s_strm_wvalid          =>  sig_rdc2rdskid_tvalid        ,
     mm2s_strm_wready          =>  sig_rdskid2rdc_tready        ,
     mm2s_strm_wdata           =>  sig_rdc2rdskid_tdata         ,
     mm2s_strm_wstrb           =>  sig_rdc2rdskid_tstrb         ,
     mm2s_strm_wlast           =>  sig_rdc2rdskid_tlast         ,

     -- Command Calculator Interface --------------------------
     mstr2data_tag             =>  sig_pcc2data_tag            ,
     mstr2data_saddr_lsb       =>  sig_pcc2data_saddr_lsb      ,
     mstr2data_len             =>  sig_pcc2data_len            ,
     mstr2data_strt_strb       =>  sig_pcc2data_strt_strb      ,
     mstr2data_last_strb       =>  sig_pcc2data_last_strb      ,
     mstr2data_drr             =>  sig_pcc2data_drr            ,
     mstr2data_eof             =>  sig_pcc2data_eof            ,
     mstr2data_sequential      =>  sig_pcc2data_sequential     ,
     mstr2data_calc_error      =>  sig_pcc2data_calc_error     ,
     mstr2data_cmd_cmplt       =>  sig_pcc2data_cmd_cmplt      ,
     mstr2data_cmd_valid       =>  sig_pcc2rdc_cmd_valid       ,
     data2mstr_cmd_ready       =>  sig_rdc2pcc_cmd_ready       ,
     mstr2data_dre_src_align   =>  sig_pcc2data_dre_src_align  ,
     mstr2data_dre_dest_align  =>  sig_pcc2data_dre_dest_align ,


     -- Address Controller Interface --------------------------
     addr2data_addr_posted     =>  sig_addr2rdc_addr_posted    ,

     -- Data Controller Halted Status
     data2all_dcntlr_halted    =>  open                        ,

     -- Output Stream Skid Buffer Halt control
     data2skid_halt            =>  sig_rdc2skid_halt           ,


     -- Read Status Controller Interface --------------------------
     data2rsc_tag              =>  sig_rdc2rsc_tag             ,
     data2rsc_calc_err         =>  sig_rdc2rsc_calc_err        ,
     data2rsc_okay             =>  sig_rdc2rsc_okay            ,
     data2rsc_decerr           =>  sig_rdc2rsc_decerr          ,
     data2rsc_slverr           =>  sig_rdc2rsc_slverr          ,
     data2rsc_cmd_cmplt        =>  sig_rdc2rsc_cmd_cmplt       ,
     rsc2data_ready            =>  sig_rsc2rdc_ready           ,
     data2rsc_valid            =>  sig_rdc2rsc_valid           ,
     rsc2mstr_halt_pipe        =>  sig_rsc2rdc_halt_pipe

     );




  ------------------------------------------------------------
  -- Instance: I_RD_STATUS_CNTLR
  --
  -- Description:
  -- Read Status Controller Block
  --
  ------------------------------------------------------------
   I_RD_STATUS_CNTLR : entity axi_master_burst_v2_0_7.axi_master_burst_rd_status_cntl
   generic map (

     C_STS_WIDTH            =>  RDWR_STS_WIDTH ,
     C_TAG_WIDTH            =>  RDWR_TAG_WIDTH

     )
   port map (

     primary_aclk           =>  rdwr_aclk                   ,
     mmap_reset             =>  rdwr_areset                 ,

     calc2rsc_calc_error    =>  sig_pcc2all_calc_err        ,

     addr2rsc_calc_error    =>  sig_addr2rsc_calc_error     ,
     addr2rsc_fifo_empty    =>  sig_addr2rsc_cmd_fifo_empty ,

     data2rsc_tag           =>  sig_rdc2rsc_tag             ,
     data2rsc_calc_error    =>  sig_rdc2rsc_calc_err        ,
     data2rsc_okay          =>  sig_rdc2rsc_okay            ,
     data2rsc_decerr        =>  sig_rdc2rsc_decerr          ,
     data2rsc_slverr        =>  sig_rdc2rsc_slverr          ,
     data2rsc_cmd_cmplt     =>  sig_rdc2rsc_cmd_cmplt       ,
     rsc2data_ready         =>  sig_rsc2rdc_ready           ,
     data2rsc_valid         =>  sig_rdc2rsc_valid           ,

     rsc2stat_status        =>  sig_rsc2stat_status         ,
     stat2rsc_status_ready  =>  sig_stat2rsc_status_ready   ,
     rsc2stat_status_valid  =>  sig_rsc2stat_status_valid   ,

     rsc2mstr_halt_pipe     =>  sig_rsc2rdc_halt_pipe

     );









   ------------------------------------------------------------
   -- Instance: I_READ_STREAM_SKID_BUF
   --
   -- Description:
   --   Instance for the Read side Skid Buffer which provides
   -- for registerd Master Stream outputs and supports bi-dir
   -- throttling.
   --
   ------------------------------------------------------------
    I_READ_STREAM_SKID_BUF : entity axi_master_burst_v2_0_7.axi_master_burst_skid_buf
    generic map (

      C_WDATA_WIDTH  =>  RDWR_SDATA_WIDTH

      )
    port map (

      -- System Ports
      aclk           =>  rdwr_aclk             ,
      arst           =>  rdwr_areset           ,

      -- Shutdown control (assert for 1 clk pulse)
      skid_stop      =>  sig_rdc2skid_halt     ,

      -- Slave Side (Stream Data Input)
      s_valid        =>  sig_rdc2rdskid_tvalid  ,
      s_ready        =>  sig_rdskid2rdc_tready  ,
      s_data         =>  sig_rdc2rdskid_tdata   ,
      s_strb         =>  sig_rdc2rdskid_tstrb   ,
      s_last         =>  sig_rdc2rdskid_tlast   ,

      -- Master Side (Stream Data Output
      m_valid        =>  sig_rdskid2strm_tvalid  ,
      m_ready        =>  sig_strm2rdskid_tready  ,
      m_data         =>  sig_rdskid2strm_tdata   ,
      m_strb         =>  sig_rdskid2strm_tstrb   ,
      m_last         =>  sig_rdskid2strm_tlast

      );









  -------------------------------------------------------------------------
  -- Write Data Controller Logic
  -------------------------------------------------------------------------

  sig_wdc_stbs_asserted     <= (others => '0');
  sig_realign2wdc_eop_error <= '0';


  ------------------------------------------------------------
  -- Instance: I_WR_DATA_CNTL
  --
  -- Description:
  --     Write Data Controller Block
  --
  ------------------------------------------------------------
   I_WR_DATA_CNTL : entity axi_master_burst_v2_0_7.axi_master_burst_wrdata_cntl
   generic map (

     C_REALIGNER_INCLUDED   =>  OMIT_DRE                  ,
     C_ENABLE_STORE_FORWARD =>  OMIT_STORE_FORWARD        ,
     C_SF_BYTES_RCVD_WIDTH  =>  WSC_BYTES_RCVD_WIDTH      ,
     C_SEL_ADDR_WIDTH       =>  SEL_ADDR_WIDTH            ,
     C_DATA_CNTL_FIFO_DEPTH =>  WR_DATA_CNTL_FIFO_DEPTH   ,
     C_MMAP_DWIDTH          =>  RDWR_MDATA_WIDTH          ,
     C_STREAM_DWIDTH        =>  RDWR_SDATA_WIDTH          ,
     C_TAG_WIDTH            =>  RDWR_TAG_WIDTH            ,
     C_FAMILY               =>  C_FAMILY

     )
   port map (

     primary_aclk           =>  rdwr_aclk                 ,
     mmap_reset             =>  rdwr_areset               ,

     rst2data_stop_request  =>  sig_rst2all_stop_request  ,
     data2addr_stop_req     =>  sig_wdc2addr_stop_req     ,
     data2rst_stop_cmplt    =>  open                      ,

     wr_xfer_cmplt          =>  sig_wr_xfer_cmplt         ,
     s2mm_ld_nxt_len        =>  open                      ,
     s2mm_wr_len            =>  open                      ,

     data2skid_saddr_lsb    =>  sig_wdc2wrskid_addr_lsb   ,
     data2skid_wdata        =>  sig_wdc2wrskid_wdata      ,
     data2skid_wstrb        =>  sig_wdc2wrskid_wstrb      ,
     data2skid_wlast        =>  sig_wdc2wrskid_wlast      ,
     data2skid_wvalid       =>  sig_wdc2wrskid_wvalid     ,
     skid2data_wready       =>  sig_wrskid2wdc_wready     ,

     s2mm_strm_wvalid       =>  sig_wrskid2wdc_tvalid     ,
     s2mm_strm_wready       =>  sig_wdc2wrskid_tready     ,
     s2mm_strm_wdata        =>  sig_wrskid2wdc_tdata      ,
     s2mm_strm_wstrb        =>  sig_wrskid2wdc_tstrb      ,
     s2mm_strm_wlast        =>  sig_wrskid2wdc_tlast      ,

     s2mm_strm_eop          =>  sig_wrskid2wdc_tlast      ,
     s2mm_stbs_asserted     =>  sig_wdc_stbs_asserted     ,

     realign2wdc_eop_error  =>  sig_realign2wdc_eop_error ,

     mstr2data_tag          =>  sig_pcc2data_tag          ,
     mstr2data_saddr_lsb    =>  sig_pcc2data_saddr_lsb    ,
     mstr2data_len          =>  sig_pcc2data_len          ,
     mstr2data_strt_strb    =>  sig_pcc2data_strt_strb    ,
     mstr2data_last_strb    =>  sig_pcc2data_last_strb    ,
     mstr2data_drr          =>  sig_pcc2data_drr          ,
     mstr2data_eof          =>  sig_pcc2data_eof          ,
     mstr2data_sequential   =>  sig_pcc2data_sequential   ,
     mstr2data_calc_error   =>  sig_pcc2data_calc_error   ,
     mstr2data_cmd_cmplt    =>  sig_pcc2data_cmd_cmplt    ,
     mstr2data_cmd_valid    =>  sig_pcc2wdc_cmd_valid     ,
     data2mstr_cmd_ready    =>  sig_wdc2pcc_cmd_ready     ,

     addr2data_addr_posted  =>  sig_addr2wdc_addr_posted  ,
     data2addr_data_rdy     =>  open                      ,

     data2all_tlast_error   =>  open                      ,
     data2all_dcntlr_halted =>  open                      ,
     data2skid_halt         =>  sig_wdc2skid_halt         ,

     data2wsc_tag           =>  sig_wdc2wsc_tag           ,
     data2wsc_calc_err      =>  sig_wdc2wsc_calc_err      ,
     data2wsc_last_err      =>  sig_wdc2wsc_last_err      ,
     data2wsc_cmd_cmplt     =>  sig_wdc2wsc_cmd_cmplt     ,
     wsc2data_ready         =>  sig_wsc2wdc_ready         ,
     data2wsc_valid         =>  sig_wdc2wsc_valid         ,
     data2wsc_eop           =>  sig_wdc2wsc_eop           ,
     data2wsc_bytes_rcvd    =>  sig_wdc2wsc_bytes_rcvd    ,

     wsc2mstr_halt_pipe     =>  sig_wsc2wdc_halt_pipe

     );











  ------------------------------------------------------------
  -- Instance: I_WR_STATUS_CNTLR
  --
  -- Description:
  -- Write Status Controller Block
  --
  ------------------------------------------------------------
   I_WR_STATUS_CNTLR : entity axi_master_burst_v2_0_7.axi_master_burst_wr_status_cntl
   generic map (

     C_ENABLE_STORE_FORWARD =>  OMIT_STORE_FORWARD          ,
     C_SF_BYTES_RCVD_WIDTH  =>  WSC_BYTES_RCVD_WIDTH        ,
     C_STS_FIFO_DEPTH       =>  WR_STATUS_CNTL_FIFO_DEPTH   ,
     C_STS_WIDTH            =>  RDWR_STS_WIDTH              ,
     C_TAG_WIDTH            =>  RDWR_TAG_WIDTH              ,
     C_FAMILY               =>  C_FAMILY

     )
   port map (

     primary_aclk           =>  rdwr_aclk                   ,
     mmap_reset             =>  rdwr_areset                 ,

     rst2wsc_stop_request   =>  sig_rst2all_stop_request    ,
     wsc2rst_stop_cmplt     =>  open                        ,
     addr2wsc_addr_posted   =>  sig_addr2wdc_addr_posted,

     s2mm_bresp             =>  sig_axi2wsc_bresp           ,
     s2mm_bvalid            =>  sig_axi2wsc_bvalid          ,
     s2mm_bready            =>  sig_wsc2axi_bready          ,

     calc2wsc_calc_error    =>  sig_pcc2all_calc_err        ,

     addr2wsc_calc_error    =>  sig_addr2wsc_calc_error     ,
     addr2wsc_fifo_empty    =>  sig_addr2wsc_cmd_fifo_empty ,

     data2wsc_tag           =>  sig_wdc2wsc_tag             ,
     data2wsc_calc_error    =>  sig_wdc2wsc_calc_err        ,
     data2wsc_last_error    =>  sig_wdc2wsc_last_err        ,
     data2wsc_cmd_cmplt     =>  sig_wdc2wsc_cmd_cmplt       ,
     data2wsc_valid         =>  sig_wdc2wsc_valid           ,
     wsc2data_ready         =>  sig_wsc2wdc_ready           ,
     data2wsc_eop           =>  sig_wdc2wsc_eop             ,
     data2wsc_bytes_rcvd    =>  sig_wdc2wsc_bytes_rcvd      ,

     wsc2stat_status        =>  sig_wsc2stat_status         ,
     stat2wsc_status_ready  =>  sig_stat2wsc_status_ready   ,
     wsc2stat_status_valid  =>  sig_wsc2stat_status_valid   ,

     wsc2mstr_halt_pipe     =>  sig_wsc2wdc_halt_pipe

     );









    ------------------------------------------------------------
    -- Instance: I_WRITE_MMAP_SKID_BUF
    --
    -- Description:
    --   Instance for the S2MM Skid Buffer which provides for
    -- registered outputs and supports bi-dir throttling.
    --
    -- This Module also provides Write Data Bus Mirroring and WSTRB
    -- Demuxing to match a narrow Stream to a wider MMap Write
    -- Channel. By doing this in the skid buffer, the resource
    -- utilization of the skid buffer can be minimized by only
    -- having to buffer/mux the Stream data width, not the MMap
    -- Data width.
    --
    ------------------------------------------------------------
     I_WRITE_MMAP_SKID_BUF : entity axi_master_burst_v2_0_7.axi_master_burst_skid2mm_buf
     generic map (

       C_MDATA_WIDTH    =>  RDWR_MDATA_WIDTH       ,
       C_SDATA_WIDTH    =>  RDWR_SDATA_WIDTH       ,
       C_ADDR_LSB_WIDTH =>  SEL_ADDR_WIDTH

       )
     port map (

       -- System Ports
       ACLK             =>   rdwr_aclk             ,
       ARST             =>   rdwr_areset           ,

       -- Slave Side (Wr Data Controller Input Side )
       S_ADDR_LSB       =>   sig_wdc2wrskid_addr_lsb,
       S_VALID          =>   sig_wdc2wrskid_wvalid  ,
       S_READY          =>   sig_wrskid2wdc_wready  ,
       S_Data           =>   sig_wdc2wrskid_wdata   ,
       S_STRB           =>   sig_wdc2wrskid_wstrb   ,
       S_Last           =>   sig_wdc2wrskid_wlast   ,

       -- Master Side (MMap Write Data Output Side)
       M_VALID          =>   sig_wrskid2axi_wvalid  ,
       M_READY          =>   sig_axi2wrskid_wready  ,
       M_Data           =>   sig_wrskid2axi_wdata   ,
       M_STRB           =>   sig_wrskid2axi_wstrb   ,
       M_Last           =>   sig_wrskid2axi_wlast

       );



  ------------------------------------------------------------
  -- Instance: I_WRITE_STRM_SKID_BUF
  --
  -- Description:
  --   Instance for the Write Stream Input Skid Buffer which
  -- provides for registerd Slave Stream inputs and supports
  -- bi-dir throttling.
  --
  ------------------------------------------------------------
  I_WRITE_STRM_SKID_BUF : entity axi_master_burst_v2_0_7.axi_master_burst_skid_buf
  generic map (

    C_WDATA_WIDTH =>  RDWR_SDATA_WIDTH

    )
  port map (

    -- System Ports
    aclk          =>  rdwr_aclk           ,
    arst          =>  rdwr_areset         ,

    -- Shutdown control (assert for 1 clk pulse)
    skid_stop     =>  sig_wdc2skid_halt   ,

    -- Slave Side (Stream Data Input)
    s_valid       =>  sig_strm2wrskid_tvalid ,
    s_ready       =>  sig_wrskid2strm_tready ,
    s_data        =>  sig_strm2wrskid_tdata  ,
    s_strb        =>  sig_strm2wrskid_tstrb  ,
    s_last        =>  sig_strm2wrskid_tlast  ,

    -- Master Side (Stream Data Output)
    m_valid       =>  sig_wrskid2wdc_tvalid  ,
    m_ready       =>  sig_wdc2wrskid_tready  ,
    m_data        =>  sig_wrskid2wdc_tdata   ,
    m_strb        =>  sig_wrskid2wdc_tstrb   ,
    m_last        =>  sig_wrskid2wdc_tlast

    );







end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_rd_llink.vhd
--
-- Description:     
--    THis file implements the Read LocalLink to AXI Stream adapter for the
--    AXI Master burst core.              
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_rd_llink.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.1 $
-- Date:            $1/29/2011$
--
-- History:
--   DET   1/29/2011       Initial Version
--
--     DET     2/11/2011     Initial for EDK 13.2
-- ~~~~~~
--    -- Per CR593485
--     - Modified the Error logic to clear the rdllink_llink_busy assertion
--       when the localLink discontinue completes. 
--     - Added logic to complete a Read Discontinue per LocalLink spec after a
--       rdllink_rd_error assertion.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
--
-------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




-------------------------------------------------------------------------------

entity axi_master_burst_rd_llink is
  generic (
    
    C_NATIVE_DWIDTH : INTEGER range 32 to 128 := 32  
        --  Set this equal to desred data bus width needed by IPIC
        --  LocalLink Data Channels.
    
    );
  port (
    
    
    -------------------------------------------------------------------------
    -- Read LocalLink Clock input
    -------------------------------------------------------------------------
    rdllink_aclk               : in  std_logic;
    
    -------------------------------------------------------------------------
    -- Read LocalLink Reset input
    -------------------------------------------------------------------------
    rdllink_areset             : in  std_logic;


    
    -------------------------------------------------------------------------
    -- RDWR Cntlr Internal Error Indication
    -------------------------------------------------------------------------
    rdllink_rd_error           : In  std_logic;
 
    -------------------------------------------------------------------------
    -- LocalLink Enable Control (1 Clock wide pulse)
    -------------------------------------------------------------------------
    rdllink_llink_enable       : In  std_logic;
 
    -------------------------------------------------------------------------
    -- IPIC LocalLink Busy Flag
    -------------------------------------------------------------------------
    rdllink_llink_busy         : Out std_logic;
 
  
  
    -------------------------------------------------------------------------
    -- Read Address Posting Contols/Status
    -------------------------------------------------------------------------
    rdllink_allow_addr_req     : Out std_logic; -- Active High enable (1-clk pulse wide)
    rdllink_addr_req_posted    : In  std_logic; -- ignored
    rdllink_xfer_cmplt         : In  std_logic; -- ignored
  
  
    -------------------------------------------------------------------------
    -- Read AXI Master Stream Channel  
    -------------------------------------------------------------------------
    rdllink_strm_tdata         : In  std_logic_vector(C_NATIVE_DWIDTH-1 downto 0);    -- Read AXI Stream
    rdllink_strm_tstrb         : In  std_logic_vector((C_NATIVE_DWIDTH/8)-1 downto 0);-- Read AXI Stream
    rdllink_strm_tlast         : In  std_logic;                                       -- Read AXI Stream
    rdllink_strm_tvalid        : In  std_logic;                                       -- Read AXI Stream
    rdllink_strm_tready        : Out std_logic;                                       -- Read AXI Stream
    
   
    -----------------------------------------------------------------------------
    -- IPIC Read LocalLink Channel
    -----------------------------------------------------------------------------
    bus2ip_mstrd_d             : out std_logic_vector(0 to C_NATIVE_DWIDTH-1);        -- IPIC Read LocalLink
    bus2ip_mstrd_rem           : out std_logic_vector(0 to (C_NATIVE_DWIDTH/8)-1);    -- IPIC Read LocalLink
    bus2ip_mstrd_sof_n         : Out std_logic;                                       -- IPIC Read LocalLink
    bus2ip_mstrd_eof_n         : Out std_logic;                                       -- IPIC Read LocalLink
    bus2ip_mstrd_src_rdy_n     : Out std_logic;                                       -- IPIC Read LocalLink
    bus2ip_mstrd_src_dsc_n     : Out std_logic;                                       -- IPIC Read LocalLink
    
    ip2bus_mstrd_dst_rdy_n     : In  std_logic;                                       -- IPIC Read LocalLink
    ip2bus_mstrd_dst_dsc_n     : In  std_logic  -- ignored                            -- IPIC Read LocalLink

    );

 
 
end entity axi_master_burst_rd_llink;


architecture implementation of axi_master_burst_rd_llink is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  -- Constants
  Constant STRB_WIDTH : integer := C_NATIVE_DWIDTH/8;
  
  
  
  -- Signals
  signal sig_inverted_strbs      : std_logic_vector(STRB_WIDTH-1 downto 0) := (others => '0');
  signal sig_llink_busy          : std_logic := '0';
  signal sig_last_debeat_xfered  : std_logic := '0';
  signal sig_allow_rd_requests   : std_logic := '0';
  signal sig_debeat_xfered       : std_logic := '0';
  signal sig_stream_sof          : std_logic := '0';
  
  signal sig_set_discontinue     : std_logic := '0';
  signal sig_rd_error_reg        : std_logic := '0';
  signal sig_rd_discontinue      : std_logic := '0';
  signal sig_discontinue_src_rdy : std_logic := '0';
  signal sig_discontinue_eof     : std_logic := '0';
  signal sig_discontinue_cmplt   : std_logic := '0';
  
  

begin --(architecture implementation)


  
  -------------------------------------------------------------------------
  -- LocalLink Port Assignments
  -------------------------------------------------------------------------
  
  bus2ip_mstrd_d           <=  rdllink_strm_tdata           ;
  bus2ip_mstrd_rem         <=  sig_inverted_strbs           ;
  bus2ip_mstrd_sof_n       <=  not(sig_stream_sof)          ;  
  
  bus2ip_mstrd_eof_n       <=  not(rdllink_strm_tlast or
                                   sig_discontinue_eof)     ;  
  
  bus2ip_mstrd_src_rdy_n   <=  not(rdllink_strm_tvalid or
                                   sig_discontinue_src_rdy) ;  
  
  bus2ip_mstrd_src_dsc_n   <=  not(sig_discontinue_src_rdy) ;

  
  
  -------------------------------------------------------------------------
  -- Stream Port Assignments
  -------------------------------------------------------------------------
  
  rdllink_strm_tready      <=  Not(ip2bus_mstrd_dst_rdy_n) and
                               sig_llink_busy;
  
  
  
  
  
  
  -------------------------------------------------------------------------
  -- Stream Strobes to LLink REM Conversion
  -------------------------------------------------------------------------
   
 
     
  -------------------------------------------------------------
  -- Combinational Process
  --
  -- Label: IMP_STRBS_INVERT
  --
  -- Process Description:
  --   Inverts the Input Stream Strobe polarity
  --
  -------------------------------------------------------------
  IMP_STRBS_INVERT : process (rdllink_strm_tstrb)
     begin
  
       for bit_index in 0 to STRB_WIDTH-1 loop
       
        sig_inverted_strbs(bit_index) <= not(rdllink_strm_tstrb(bit_index));
       
       end loop;
  
     end process IMP_STRBS_INVERT; 
  
     
     
     
  
  
  -------------------------------------------------------------------------
  -- LocalLink Busy Flag logic
  -------------------------------------------------------------------------
  
  
  rdllink_llink_busy <= sig_llink_busy ;
  
  
   
  -- Detect the last data beat of the Stream to LocalLink transfer 
  sig_last_debeat_xfered <=  rdllink_strm_tlast          and
                             rdllink_strm_tvalid         and 
                             not(ip2bus_mstrd_dst_rdy_n) and
                             sig_llink_busy ;
   
   
   
   
   
   
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_LLINK_BUSY_FLOP
  --
  -- Process Description:
  --  Implements the LocalLink Busy Flop
  --
  -------------------------------------------------------------
  IMP_LLINK_BUSY_FLOP : process (rdllink_aclk)
    begin
      if (rdllink_aclk'event and rdllink_aclk = '1') then
         if (rdllink_areset        = '1' or
             sig_discontinue_cmplt = '1') then
  
           sig_llink_busy <= '0';
             
         elsif (rdllink_llink_enable = '1') then
  
           sig_llink_busy <= '1';
             
         elsif (sig_last_debeat_xfered = '1') then
  
           sig_llink_busy <= '0';
             
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_LLINK_BUSY_FLOP; 
  
  
 
 
 
  
  
  -------------------------------------------------------------------------
  -- LocalLink SOF Flag logic
  --
  -- Since the input AXI Stream does not have a Start of Frame analog,
  -- one must be generated here and inserted in the LocalLink output on
  -- the first data beat of the Stream to LocalLink transfer,
  -------------------------------------------------------------------------
  
  
   
  -- Detect a data beat tranfer between the LocalLink and Stream 
  sig_debeat_xfered <= rdllink_strm_tvalid         and 
                       not(ip2bus_mstrd_dst_rdy_n) and
                       sig_llink_busy ;
   
   
   
   
   
   
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_LLINK_SOF_FLOP
  --
  -- Process Description:
  --  Implements the LocalLink SOF Flop. There is no SOF Flag
  -- that can be derived from the Stream Input.
  --
  -------------------------------------------------------------
  IMP_LLINK_SOF_FLOP : process (rdllink_aclk)
    begin
      if (rdllink_aclk'event and rdllink_aclk = '1') then
         if (rdllink_areset         = '1' or
             sig_last_debeat_xfered = '1' or
             sig_discontinue_cmplt = '1') then
  
           sig_stream_sof <= '0';
             
         elsif (rdllink_llink_enable = '1') then
  
           sig_stream_sof <= '1';
             
         elsif (sig_debeat_xfered = '1') then
  
           sig_stream_sof <= '0';
             
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_LLINK_SOF_FLOP; 
  
  
 
 
 
  
  
  
  
  -------------------------------------------------------------------------
  -- AXI Read Address Posting Control logic
  -------------------------------------------------------------------------
  
  rdllink_allow_addr_req  <= sig_allow_rd_requests;
  
  
   
   
   
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_ALLOW_RD_REQ_FLOP
  --
  -- Process Description:
  --   Implements the AXI Read Address Request control flop.
  -- AXI Read Requests will be withheld from the AXI Read Address
  -- Channel until the LocalLink Destination is ready to receive
  -- read data.
  --
  -------------------------------------------------------------
  IMP_ALLOW_RD_REQ_FLOP : process (rdllink_aclk)
    begin
      if (rdllink_aclk'event and rdllink_aclk = '1') then
         if (rdllink_areset       = '1' or
             rdllink_llink_enable = '1') then
  
           sig_allow_rd_requests <= '0';
             
         elsif (ip2bus_mstrd_dst_rdy_n = '0' and
                sig_llink_busy         = '1') then
  
           sig_allow_rd_requests <= '1';
             
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_ALLOW_RD_REQ_FLOP; 
  
  
  
  
  
  
  
  
  
  -------------------------------------------------------------------------
  -- Read Error LLink discontinue logic
  -------------------------------------------------------------------------
  
  
  
  -- Detect rising edge of the Read Error assertion
  sig_set_discontinue     <= rdllink_rd_error      and 
                             not(sig_rd_error_reg) and
                             sig_llink_busy ;
  
  -- Force the assertion of the Source ready at Discontinue
  sig_discontinue_src_rdy <= sig_rd_discontinue and 
                             sig_llink_busy;
           
  
  -- Detect Completion of the Read Discontinue
  sig_discontinue_cmplt   <= sig_rd_discontinue      and 
                             sig_discontinue_src_rdy and 
                             Not(ip2bus_mstrd_dst_rdy_n);
  
  
  -- Must also assert the EOF on a discontinue
  sig_discontinue_eof    <= sig_discontinue_src_rdy;
  
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_RD_ERROR_FLOP
  --
  -- Process Description:
  --   Implements the register for the read discontinue flag.
  --
  -------------------------------------------------------------
  IMP_RD_ERROR_FLOP : process (rdllink_aclk)
    begin
      if (rdllink_aclk'event and rdllink_aclk = '1') then
         if (rdllink_areset  = '1') then
  
           sig_rd_error_reg <= '0';
  
         else
  
           sig_rd_error_reg <= rdllink_rd_error;
  
         end if; 
      end if;       
    end process IMP_RD_ERROR_FLOP; 
 
                
                
                
  
  -------------------------------------------------------------
  -- Synchronous Process with Sync Reset
  --
  -- Label: IMP_RD_DSC_FLOP
  --
  -- Process Description:
  --   Implements the register for the read discontinue flag.
  --
  -------------------------------------------------------------
  IMP_RD_DSC_FLOP : process (rdllink_aclk)
    begin
      if (rdllink_aclk'event and rdllink_aclk = '1') then
         if (rdllink_areset        = '1' or
             sig_discontinue_cmplt = '1') then
  
           sig_rd_discontinue <= '0';
  
         elsif (sig_set_discontinue = '1') then
  
           sig_rd_discontinue <= '1';
  
         else
  
           null;  -- Hold Current State
  
         end if; 
      end if;       
    end process IMP_RD_DSC_FLOP; 
 
  

end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst_cmd_status.vhd
--
-- Description:     
--    This file implements the AXI Master Burst Command and Status interfaces.                 
--                  
--                  
--                  
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              axi_master_burst_cmd_status.vhd
--
-------------------------------------------------------------------------------
-- Revision History:
--
--
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $1/20/2011$
--
-- History:
--     DET     1/20/2011     Initial
-- ~~~~~~
--     - New file for AXi Master burst
-- ^^^^^^
--
--     DET     2/10/2011     Initial for 13.2
-- ~~~~~~
--     - Registered the bus2ip_mst_cmdack and bus2ip_mst_cmplt ouputs per
--       Linting guidelines.
-- ^^^^^^
--
--     DET     2/17/2011     Initial for 13.2
-- ~~~~~~
--    -- Per CR593967
--     - Added the port rdwr2llink_int_err. This output is now used to initiate
--       a Locallink discontinue when an internal error is detected.
--     - Added the logic for to drive the new rdwr2llink_int_err port.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library axi_master_burst_v2_0_7;
Use axi_master_burst_v2_0_7.axi_master_burst_stbs_set ;
Use axi_master_burst_v2_0_7.axi_master_burst_first_stb_offset;
-------------------------------------------------------------------------------

entity axi_master_burst_cmd_status is
  generic (
    
    C_ADDR_WIDTH         : Integer range 32 to  64 := 32;
      -- The bit width of the AXI address Buses
      
    C_NATIVE_DWIDTH      : Integer range 32 to 128 := 32;
      -- The bit width of the Master's data Buses
      
    C_CMD_WIDTH          : Integer range 64 to 128 := 68;
      -- The bit width of the command bus to the RD/WR Controller
    
    C_CMD_BTT_USED_WIDTH : Integer range 12 to  20 := 12;
      -- The bit width of the input ip2bus_mst_length (Bytes to Transfer)
    
    C_STS_WIDTH          : Integer                 :=  8;
      -- The bit width of the input status bus from the Rd/Wr Controller
    
    C_FAMILY             : string                  := "virtex7"
      -- The target FPGA device familiy
    
    );
  port (
    
    -- Clock inputs
    axi_aclk                : in  std_logic;

    -- Reset inputs
    axi_reset               : in  std_logic;
    
    -----------------------------------------------------------------------------
    -- RW_ERROR Output Discrete
    -----------------------------------------------------------------------------
    rw_error                : Out std_logic;
    
    -----------------------------------------------------------------------------
    -- Internal error Output Discrete to LocalLink backends 
    -- (Asserted until Pertinent LocalLink IF is not busy)
    -----------------------------------------------------------------------------
    rdwr2llink_int_err      : Out std_logic;
    
    -----------------------------------------------------------------------------
    -- IPIC Request/Qualifiers
    -----------------------------------------------------------------------------
    ip2bus_mstrd_req        : In  std_logic;                                     -- IPIC Cmd
    ip2bus_mstwr_req        : In  std_logic;                                     -- IPIC Cmd
    ip2bus_mst_addr         : in  std_logic_vector(0 to C_ADDR_WIDTH-1);         -- IPIC Cmd
    ip2bus_mst_length       : in  std_logic_vector(0 to C_CMD_BTT_USED_WIDTH-1); -- IPIC Cmd
    ip2bus_mst_be           : in  std_logic_vector(0 to (C_NATIVE_DWIDTH/8)-1);  -- IPIC Cmd
                                                                                 
    ip2bus_mst_type         : in  std_logic;                                     -- IPIC Cmd
    ip2bus_mst_lock         : In  std_logic;                                     -- IPIC Cmd
    ip2bus_mst_reset        : In  std_logic;                                     -- IPIC Cmd
     
    
    -----------------------------------------------------------------------------
    -- IPIC Request Status Reply
    -----------------------------------------------------------------------------
    bus2ip_mst_cmdack       : Out std_logic;                                     -- IPIC Status Reply
    bus2ip_mst_cmplt        : Out std_logic;                                     -- IPIC Status Reply
    bus2ip_mst_error        : Out std_logic;                                     -- IPIC Status Reply
    bus2ip_mst_rearbitrate  : Out std_logic;                                     -- IPIC Status Reply
    bus2ip_mst_cmd_timeout  : out std_logic;                                     -- IPIC Status Reply

     
    -----------------------------------------------------------------------------
    -- IPIC LocalLink Busy Flag
    -----------------------------------------------------------------------------
    mstrd_llink_busy        : In  std_logic;                                    -- LLink Busy Ooutput Discrete
    mstwr_llink_busy        : In  std_logic;                                    -- LLink Busy Ooutput Discrete
  
    
    -----------------------------------------------------------------------------
    -- PCC Command Interface
    -----------------------------------------------------------------------------
    pcc2cmd_cmd_ready      : in  std_logic;
       -- Handshake bit indicating the Predictive Command Calculator is ready  
       -- to accept another command
    
    cmd2pcc_cmd_valid      : Out std_logic;
       -- Handshake bit indicating the Command module has at least 1 valid 
       -- command entry
       
    cmd2pcc_command        : Out std_logic_vector(C_CMD_WIDTH-1 downto 0);
       -- The next command value available from the Command Register
       
    
    
    -----------------------------------------------------------------------------
    -- Read/Write Command Indicator Interface
    -----------------------------------------------------------------------------
    cmd2all_doing_read     : out std_logic;
       -- Indication that the current command is a read
    
    cmd2all_doing_write    : out std_logic;
       -- Indication that the current command is a write
    
    
    
    
    
    
    -----------------------------------------------------------------------------
    -- Read Status Controller Interface
    -----------------------------------------------------------------------------
    stat2rsc_status_ready  : Out std_logic;
       -- Handshake bit indicating that the Status FIFO/Register is ready for transfer
       
    rsc2stat_status_valid  : In  std_logic ;
       -- Handshake bit for writing the Status value into the Status FIFO/Register
   
    rsc2stat_status        : in  std_logic_vector(C_STS_WIDTH-1 downto 0);
       -- The input for writing the status value to the Status FIFO/Register
  
   
     
    -----------------------------------------------------------------------------
    -- Write Status Controller Interface
    -----------------------------------------------------------------------------
    stat2wsc_status_ready  : Out std_logic;
       -- Handshake bit indicating that the Status FIFO/Register is ready for transfer
       
    wsc2stat_status_valid  : In  std_logic ;
       -- Handshake bit for writing the Status value into the Status FIFO/Register
   
    wsc2stat_status        : in  std_logic_vector(C_STS_WIDTH-1 downto 0)
       -- The input for writing the status value to the Status FIFO/Register
  
      );
  
  end entity axi_master_burst_cmd_status;
  
  
architecture implementation of axi_master_burst_cmd_status is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";
  
    
    
    
    -- Functions
    
    
    
    
    
    
     -------------------------------------------------------------------
     -- Function
     --
     -- Function Name: get_addr_lsb_slice_width
     --
     -- Function Description:
     --   Calculates the number of Least significant Address bits that
     -- need to be overridden by the position of the first asserted BE
     -- specified during a commanded single data beat transfer.
     -------------------------------------------------------------------
     function get_addr_lsb_slice_width (native_dwidth: integer) return integer is
     
       Variable temp_ls_slice_width : natural := 2;
     
     
     begin
     
       case native_dwidth is
         when 32 =>
           temp_ls_slice_width := 2; -- 4 bytes max transfer
         when 64 =>
           temp_ls_slice_width := 3; -- 8 bytes max transfer
         when others => -- assume 128 bit
           temp_ls_slice_width := 4; -- 16 bytes max transfer
       end case;
      
      
       Return (temp_ls_slice_width);
      
      
       
     end function get_addr_lsb_slice_width;
    
    
    
    
    
    
     
    
    -- Constants 
    
    -- Constant REGISTER_TYPE  : integer := 0; 
    -- Constant BRAM_TYPE      : integer := 1; 
    -- Constant SRL_TYPE       : integer := 2; 
    -- Constant FIFO_PRIM_TYPE : integer := SRL_TYPE;
        
        
     Constant STRB_WIDTH            : integer := C_NATIVE_DWIDTH/8;
     Constant BE_WIDTH              : integer := C_NATIVE_DWIDTH/8;
     Constant CMD_BTT_WIDTH         : integer := 23;
     Constant CMD_BTT_USED_WIDTH    : integer := C_CMD_BTT_USED_WIDTH;
     Constant CMD_BTT_NOTUSED_WIDTH : integer := CMD_BTT_WIDTH-CMD_BTT_USED_WIDTH;
--     Constant CMD_TAG_WIDTH         : integer := C_CMD_WIDTH-64;
     Constant CMD_TAG_WIDTH         : integer := C_CMD_WIDTH-64-C_ADDR_WIDTH+32;
     Constant CMD_DSA_WIDTH         : integer := 6;
     Constant STRB_ASSERTED_WIDTH   : integer := 8;
     Constant OFFSET_WIDTH          : Integer := 8;
     
     
     
     Constant TAG_CNTR_ONE          : unsigned(CMD_TAG_WIDTH-1 downto 0) := 
                                      TO_UNSIGNED(1, CMD_TAG_WIDTH);
     
     Constant ADDR_LS_SLICE_WIDTH      : integer := get_addr_lsb_slice_width(C_NATIVE_DWIDTH);
     Constant ADDR_MS_SLICE_WIDTH      : integer := C_ADDR_WIDTH - ADDR_LS_SLICE_WIDTH;
     Constant ADDR_LS_SLICE_HIGH_INDEX : integer := ADDR_LS_SLICE_WIDTH-1;
     Constant ADDR_MS_SLICE_LOW_INDEX  : integer := ADDR_LS_SLICE_WIDTH;
     
     Constant STAT_OKAY_BIT            : integer := 7;
     Constant STAT_SLVERR_BIT          : integer := 6;
     Constant STAT_DECERR_BIT          : integer := 5;
     Constant STAT_INTERR_BIT          : integer := 4;
     Constant STAT_TAG_MSBIT           : integer := 3;
     
     
     
    
    -- Signals
    
     --signal sig_cmd_ack            : std_logic := '0';
     signal sig_cmd_cmplt          : std_logic := '0';
     signal sig_cmd_error          : std_logic := '0';
      
     
     signal sig_addr_out           : std_logic_vector(C_ADDR_WIDTH-1 downto 0) := (others => '0');
     signal sig_addr_ms_slice      : std_logic_vector(ADDR_MS_SLICE_WIDTH-1 downto 0) := (others => '0');
     signal sig_addr_ls_slice      : std_logic_vector(ADDR_LS_SLICE_WIDTH-1 downto 0) := (others => '0');
     signal sig_addr_be_offset     : std_logic_vector(ADDR_LS_SLICE_WIDTH-1 downto 0) := (others => '0');
     
     signal sig_cmd_mstrd_req      : std_logic;
     signal sig_cmd_mstwr_req      : std_logic;
     signal sig_cmd_mst_addr       : std_logic_vector(C_ADDR_WIDTH-1 downto 0);
     signal sig_cmd_mst_length     : std_logic_vector(CMD_BTT_USED_WIDTH-1 downto 0);
     signal sig_cmd_mst_be         : std_logic_vector((C_NATIVE_DWIDTH/8)-1 downto 0);     
     signal sig_cmd_type_req       : std_logic;
      
     
     signal sig_init_done          : std_logic := '0';
     signal sig_init_reg1          : std_logic := '0';
     signal sig_init_reg2          : std_logic := '0';
     
     signal sig_muxed_length       : std_logic_vector(CMD_BTT_USED_WIDTH-1 downto 0) := (others => '0');
     
     signal sig_sngl_beat_length   : std_logic_vector(CMD_BTT_USED_WIDTH-1 downto 0) := (others => '0');
     
     signal sig_num_stbs_asserted  : std_logic_vector(STRB_ASSERTED_WIDTH-1 downto 0) := (others => '0');
     
     signal sig_cmd_full_reg       : std_logic := '0';
     signal sig_cmd_empty_reg      : std_logic := '0';
     signal sig_push_cmd_reg       : std_logic := '0';
     signal sig_pop_cmd_reg        : std_logic := '0';
 
     signal sig_cmd_tag_slice      : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
     signal sig_cmd_addr_slice     : std_logic_vector(C_ADDR_WIDTH-1 downto 0)  := (others => '0');
     signal sig_cmd_drr_slice      : std_logic := '0';
     signal sig_cmd_eof_slice      : std_logic := '0';
     signal sig_cmd_dsa_slice      : std_logic_vector(CMD_DSA_WIDTH-1 downto 0) := (others => '0');
     signal sig_cmd_type_slice     : std_logic := '0';
     signal sig_cmd_btt_rsvd_slice : std_logic_vector(CMD_BTT_NOTUSED_WIDTH-1 downto 0) := (others => '0');
     signal sig_cmd_btt_slice      : std_logic_vector(CMD_BTT_USED_WIDTH-1 downto 0)    := (others => '0');
   
     signal sig_pcc_cmd_rdy        : std_logic := '0';
     signal sig_pcc_taking_command : std_logic := '0';
     
     signal sig_incr_tag_cnt       : std_logic := '0';
     Signal sig_tag_counter        : unsigned(CMD_TAG_WIDTH-1 downto 0) := (others => '0'); 
     
     signal sig_strt_addr_offset   : unsigned(OFFSET_WIDTH-1 downto 0) ;

     signal sig_doing_read_reg     : std_logic := '0';
     signal sig_doing_write_reg    : std_logic := '0';
     
     signal sig_push_status        : std_logic := '0';
     signal sig_pop_status         : std_logic := '0';
     signal sig_status_reg         : std_logic_vector(C_STS_WIDTH-1 downto 0) := (others => '0');
     signal sig_status_reg_full    : std_logic := '0';
     signal sig_status_reg_empty   : std_logic := '0';
     signal sig_status_valid       : std_logic := '0';
     
     signal sig_muxed_status       : std_logic_vector(C_STS_WIDTH-1 downto 0) := (others => '0');
     
     signal sig_stat_tag           : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
     signal sig_stat_tag_reg       : std_logic_vector(CMD_TAG_WIDTH-1 downto 0) := (others => '0');
     signal sig_stat_error         : std_logic := '0';
     signal sig_stat_error_reg     : std_logic := '0';
     signal sig_stat_int_error     : std_logic := '0';
     
     signal sig_error_sh_reg       : std_logic := '0';
     signal sig_int_error_pulse_reg   : std_logic := '0';
     
     signal sig_cmdack_reg         : std_logic := '0';
     signal sig_cmd_cmplt_reg      : std_logic := '0';
     signal sig_llink_busy         : std_logic := '0';
     
     
  
  begin --(architecture implementation)
  
    
   
    -- IPIC Status Reply Port
   
    bus2ip_mst_cmdack        <= sig_cmdack_reg    ;
    bus2ip_mst_cmplt         <= sig_cmd_cmplt_reg ;
    bus2ip_mst_error         <= sig_cmd_error     ;
    bus2ip_mst_rearbitrate   <= '0'               ;
    bus2ip_mst_cmd_timeout   <= '0'               ;
   
   
   
    -- Type of command discrete indicators
    cmd2all_doing_read       <= sig_doing_read_reg  ;
     
    cmd2all_doing_write      <= sig_doing_write_reg ;
     
     
     
    -- PCC Command Interface Port Assignments 
    sig_pcc_cmd_rdy          <= pcc2cmd_cmd_ready;
     
    cmd2pcc_cmd_valid        <= sig_cmd_full_reg ;
     
    cmd2pcc_command          <= sig_cmd_tag_slice      &
                                sig_cmd_addr_slice     &
                                sig_cmd_drr_slice      &
                                sig_cmd_eof_slice      &
                                sig_cmd_dsa_slice      &
                                sig_cmd_type_slice     &
                                sig_cmd_btt_rsvd_slice &
                                sig_cmd_btt_slice ;
     
     
    -- Generate a flag indicating the PCC is accepting the 
    -- new command being output
    sig_pcc_taking_command  <= sig_cmd_full_reg and                     
                               pcc2cmd_cmd_ready;   
                         
     
     
   -- Build the PCC command from the input IPIC Command Qualifiers
   
    sig_cmd_tag_slice       <= STD_LOGIC_VECTOR(sig_tag_counter); -- tag count
   
    sig_cmd_addr_slice      <= sig_addr_out;     -- formulated starting address
   
    sig_cmd_drr_slice       <= '1';              -- always a sof started packet
   
    sig_cmd_eof_slice       <= '1';              -- always a eof terminated packet
   
    sig_cmd_dsa_slice       <= (others => '0');  -- no DRE so set to zeros
   
    sig_cmd_type_slice      <= '0';              -- reserved, set to zero
   
    sig_cmd_btt_rsvd_slice  <= (others => '0');  -- unused portion of the BTT field
   
    sig_cmd_btt_slice       <= sig_muxed_length; -- transfer length in bytes
   
  
  
    
    -- Resize the strobes asserted value (from the BE) up to a 20-bit value. This is
    -- only used for Single Beat commands
    sig_sngl_beat_length  <= STD_LOGIC_VECTOR(RESIZE(UNSIGNED(sig_num_stbs_asserted), CMD_BTT_USED_WIDTH));  
      
    
    
    -- If a single beat command, then the length must be derived
    -- from the asserted BE bits, else just use the command's length
    -- when the command is a burst.
    sig_muxed_length <= sig_sngl_beat_length
      When (sig_cmd_type_req = '0')
      Else sig_cmd_mst_length;
    
    
    
    -- Rip the upper address bit field from the input command address.
    sig_addr_ms_slice <= sig_cmd_mst_addr(C_ADDR_WIDTH-1 downto ADDR_MS_SLICE_LOW_INDEX);
    
    
    -- If the command is a single beat request, then the LS Bits of the AXI 
    -- Address must be set to the byte offset of the first asserted BE in the
    -- input BE command qualifier. Otherwise, it is a burst request so use the 
    -- original address offset from the command.
    sig_addr_ls_slice <= sig_cmd_mst_addr(ADDR_LS_SLICE_HIGH_INDEX downto 0)
      When (sig_cmd_type_req = '1')
      Else sig_addr_be_offset;
   
    
    -- Formulate the final address to be used for the starting AXI4 Address by
    -- concatonating the Upper address slice with the multiplexed lower address
    -- slice.
    sig_addr_out <=  sig_addr_ms_slice & sig_addr_ls_slice;
    
    
    
    
    ---------------------------------------------------------------------------------
    --  IPIC Status IF Registering 
    ---------------------------------------------------------------------------------
     
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_CMDACK_REG
    --
    -- Process Description:
    --   Generates a 1-clock wide command acknowledge pulse.
    --
    -------------------------------------------------------------
    IMP_CMDACK_REG : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset      = '1' or 
               sig_cmdack_reg = '1') then
    
             sig_cmdack_reg <= '0';
    
           else
    
             sig_cmdack_reg <= sig_push_cmd_reg;
    
           end if; 
        end if;       
      end process IMP_CMDACK_REG; 
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_CMDCMPLT_REG
    --
    -- Process Description:
    --   Generates a 1-clock wide command complete pulse and the
    -- status register pop control.
    --
    -------------------------------------------------------------
    IMP_CMDCMPLT_REG : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset         = '1' or 
               sig_cmd_cmplt_reg = '1') then
    
             sig_cmd_cmplt_reg <= '0';
             sig_pop_status    <= '0';
    
           else
    
             sig_cmd_cmplt_reg <= sig_cmd_cmplt;
             sig_pop_status    <= sig_cmd_cmplt;
    
           end if; 
        end if;       
      end process IMP_CMDCMPLT_REG; 
    
    
    
    
    
    
    
    
    
    
    
    
     
    ---------------------------------------------------------------------------------
    --  User Command Input Register 
    ---------------------------------------------------------------------------------
     
     
    sig_push_cmd_reg        <= (ip2bus_mstrd_req or
                               ip2bus_mstwr_req) and
                               sig_cmd_empty_reg;
    
    
    sig_pop_cmd_reg         <= sig_pcc_taking_command;
     
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_CMD_REG_FIFO
    --
    -- Process Description:
    --    This process implements the input command register and  
    -- associated full flag (emulates a 1-deep FIFO). It also
    -- re-orders the vector bit sequence from (x to y) to 
    -- (y downto x). 
    --
    -------------------------------------------------------------
    IMP_CMD_REG_FIFO : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset    = '1' or
              (sig_pop_cmd_reg  = '1' and
               sig_push_cmd_reg = '0')) then
            
            sig_cmd_mstrd_req   <= '0';
            sig_cmd_mstwr_req   <= '0';
            sig_cmd_mst_addr    <= (others => '0');
            sig_cmd_mst_length  <= (others => '0');
            sig_cmd_mst_be      <= (others => '0');
            sig_cmd_type_req    <= '0'; 
            
            sig_cmd_full_reg    <= '0';
            
          elsif (sig_push_cmd_reg = '1') then
            
            
            sig_cmd_mstrd_req  <= ip2bus_mstrd_req  ;
            sig_cmd_mstwr_req  <= ip2bus_mstwr_req  ;
            sig_cmd_mst_addr   <= ip2bus_mst_addr   ;
            sig_cmd_mst_length <= ip2bus_mst_length ;
            sig_cmd_mst_be     <= ip2bus_mst_be     ;
            sig_cmd_type_req   <= ip2bus_mst_type   ;
            
            sig_cmd_full_reg   <= '1';
            
          else
            null;  -- don't change state
          end if; 
        end if;       
      end process IMP_CMD_REG_FIFO; 
    
     
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_CMD_REG_EMPTY_FLOP
    --
    -- Process Description:
    --    This process implements the empty flag for the 
    -- register fifo. The register is only allowed to go empty
    -- on reset or when a command has completed (as indicated
    -- by the assertion of the Command Complete status output).
    --
    -------------------------------------------------------------
    IMP_CMD_REG_EMPTY_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset    = '1') then
            
            sig_cmd_empty_reg <= '0'; -- since this is used for the ready (invertd)
                                      -- it can't be asserted during reset
            
          --elsif (sig_pop_cmd_reg  = '1' or
          elsif (sig_cmd_cmplt_reg = '1' or
                 sig_init_done     = '1') then
            
            sig_cmd_empty_reg <= '1';
            
          elsif (sig_push_cmd_reg = '1') then
            
            sig_cmd_empty_reg <= '0';
            
          else
            null;  -- don't change state
          end if; 
        end if;       
      end process IMP_CMD_REG_EMPTY_FLOP; 
    

 
 
 
 
 
  
    
    ---------------------------------------------------------------------
    -- Single DataBeat Support logic
    ---------------------------------------------------------------------
    
    
    sig_addr_be_offset <= STD_LOGIC_VECTOR(RESIZE(sig_strt_addr_offset, ADDR_LS_SLICE_WIDTH));

    
    ------------------------------------------------------------
    -- Instance: I_FIRST_BE_OFFSET 
    --
    -- Description:
    --  Finds the first asserted BE bit (searching from ls to 
    -- ms bit) and returns the address offset of that asserted 
    -- strobe.   
    --
    ------------------------------------------------------------
    I_FIRST_BE_OFFSET : entity axi_master_burst_v2_0_7.axi_master_burst_first_stb_offset
    generic map(
      
      C_STROBE_WIDTH    => BE_WIDTH     ,  
      C_OFFSET_WIDTH    => OFFSET_WIDTH
      
      )
    port map(
      
      tstrb_in          => sig_cmd_mst_be      ,  
     
      first_offset      => sig_strt_addr_offset   
     
      );



   
        
        
    ------------------------------------------------------------
    -- Instance: I_GET_BE_SET 
    --
    -- Description:
    -- Calculates the number of asserted BE in a single beat transfer
    -- type.    
    --
    ------------------------------------------------------------
    I_GET_BE_SET : entity axi_master_burst_v2_0_7.axi_master_burst_stbs_set
    generic map (

       C_STROBE_WIDTH    =>  BE_WIDTH

      )
    port map (

       tstrb_in          =>  sig_cmd_mst_be,
      
       num_stbs_asserted =>  sig_num_stbs_asserted

      );

      
    
    
   
   
   
   

    ---------------------------------------------------------------------------------
    --  TAG Counter Logic 
    ---------------------------------------------------------------------------------
     
    
    
    
    sig_incr_tag_cnt <= sig_push_cmd_reg;
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_TAG_CNTR
    --
    -- Process Description:
    --  Implements the TAG counter used for tracking commands
    -- through the pipeline back to status generation.
    --
    -------------------------------------------------------------
    IMP_TAG_CNTR : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset = '1') then
    
             sig_tag_counter <= (others => '1'); -- Init to max count
                                                 -- Will roll to zero on first command push
    
           elsif (sig_incr_tag_cnt = '1') then
    
             sig_tag_counter <= sig_tag_counter + TAG_CNTR_ONE;
    
           else
    
             null;  -- Hold Current State
    
           end if; 
        end if;       
      end process IMP_TAG_CNTR; 



  
  
  
  
  
  
    ---------------------------------------------------------------------------------
    --  Doing a Read discrete Register 
    ---------------------------------------------------------------------------------
     
    
    
  
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_DOING_READ_FLOP
    --
    -- Process Description:
    --   Implement the Doing Read discrete Register.
    --
    -------------------------------------------------------------
    IMP_DOING_READ_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset         = '1' or
               sig_cmd_cmplt_reg = '1') then
    
             sig_doing_read_reg <= '0';
    
           elsif (sig_pcc_taking_command = '1') then
    
             sig_doing_read_reg <= sig_cmd_mstrd_req;
    
           else
    
             null;  -- Hold Current State
    
           end if; 
        end if;       
      end process IMP_DOING_READ_FLOP; 
  
  
  
    
    
    
    
    
    
    ---------------------------------------------------------------------------------
    --  Doing a Write discrete Register 
    ---------------------------------------------------------------------------------
     
    
    
  
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_DOING_WRITE_FLOP
    --
    -- Process Description:
    --   Implement the Doing Write discrete Register.
    --
    -------------------------------------------------------------
    IMP_DOING_WRITE_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset         = '1' or
               sig_cmd_cmplt_reg = '1') then
    
             sig_doing_write_reg <= '0';
    
           elsif (sig_pcc_taking_command = '1') then
    
             sig_doing_write_reg <= sig_cmd_mstwr_req;
    
           else
    
             null;  -- Hold Current State
    
           end if; 
        end if;       
      end process IMP_DOING_WRITE_FLOP; 
  
  
  
  
  
    
    
    
  
    ---------------------------------------------------------------------------------
    --  Status Register Support Logic
    -- 
    -- Input status is either from the Write Status Controller or the Read Status
    -- Controller depending on if a Read or Write in being performed.
    ---------------------------------------------------------------------------------
     
     
    -- sig_cmd_cmplt  <=  ((sig_doing_read_reg and not(mstrd_llink_busy))   or 
    --                    (sig_doing_write_reg and not(mstwr_llink_busy))) and
    --                     sig_status_reg_full;  
    
    
    sig_llink_busy  <= (sig_doing_read_reg  and mstrd_llink_busy) or 
                       (sig_doing_write_reg and mstwr_llink_busy);                
    
    
    sig_cmd_cmplt   <= not(sig_llink_busy) and
                       sig_status_reg_full;  
    
    
    sig_cmd_error   <= sig_stat_error_reg;
    
    
    
    -- Mux the input status value from either the Write status
    -- controller or the Read Status Controller.
    sig_muxed_status   <= wsc2stat_status
     When (sig_doing_write_reg = '1')
     Else rsc2stat_status;
    
    
    
     sig_stat_tag   <=  sig_muxed_status(STAT_TAG_MSBIT downto 0);
    
    
     -- Merge Slave error, Decode Error, and Internal Error into 1 flag
     sig_stat_error <=  sig_muxed_status(STAT_SLVERR_BIT) or
                        sig_muxed_status(STAT_DECERR_BIT) or
                        sig_muxed_status(STAT_INTERR_BIT);
    
    
    -- Rip the internal error status bit for use in causeing the
    -- LocalLink backends to assert discontinue if needed.
    sig_stat_int_error  <= sig_muxed_status(STAT_INTERR_BIT);
    
    
    
    stat2rsc_status_ready  <= sig_status_reg_empty and sig_doing_read_reg;
    
    stat2wsc_status_ready  <= sig_status_reg_empty and sig_doing_write_reg;
    
    
   
   
    sig_status_valid  <= wsc2stat_status_valid
      when (sig_doing_write_reg = '1')
      Else rsc2stat_status_valid
      When (sig_doing_read_reg = '1')
      Else '0';
    
    
    sig_push_status        <=  sig_status_valid and
                               sig_status_reg_empty;
    
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_STATUS_REG_FIFO
    --
    -- Process Description:
    --    This process implements the input status register and  
    -- associated full flag (emulates a 1-deep FIFO). 
    --
    -------------------------------------------------------------
    IMP_STATUS_REG_FIFO : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset    = '1' or
              (sig_pop_status  = '1' and
               sig_push_status = '0')) then
            
            sig_stat_tag_reg     <= (others => '0');
            sig_stat_error_reg   <= '0';
            
            sig_status_reg_full  <= '0';
            
          elsif (sig_push_status = '1') then
            
            sig_stat_tag_reg     <= sig_stat_tag   ;
            sig_stat_error_reg   <= sig_stat_error ;
            
            
            sig_status_reg_full  <= '1';
            
          else
            null;  -- don't change state
          end if; 
        end if;       
      end process IMP_STATUS_REG_FIFO; 
    
     
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_STATUS_REG_EMPTY_FLOP
    --
    -- Process Description:
    --    This process implements the empty flag for the 
    -- register fifo. The register is only allowed to go empty
    -- on reset or when a command has completed (as indicated
    -- by the assertion of the Command Complete status output).
    --
    -------------------------------------------------------------
    IMP_STATUS_REG_EMPTY_FLOP : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset    = '1') then
            
            sig_status_reg_empty <= '0'; -- since this is used for the ready (invertd)
                                         -- it can't be asserted during reset
            
          --elsif (sig_pop_cmd_reg  = '1' or
          elsif (sig_cmd_cmplt_reg    = '1' or
                 sig_init_done    = '1') then
            
            sig_status_reg_empty <= '1';
            
          elsif (sig_push_status = '1') then
            
            sig_status_reg_empty <= '0';
            
          else
            null;  -- don't change state
          end if; 
        end if;       
      end process IMP_STATUS_REG_EMPTY_FLOP; 
    

 
 
   
   
   
 
 
    -----------------------------------------------------------------------------
    -- RW_ERROR Output Discrete Logic
    -----------------------------------------------------------------------------
    
    rw_error      <= sig_error_sh_reg ;
    
    
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_ERROR_SH_REG
    --
    -- Process Description:
    --   Sample and Hold register for the rw_error output 
    -- discrete port. This is a sticky register. Once set,
    -- it can only be cleared by a reset.
    --
    -------------------------------------------------------------
    IMP_ERROR_SH_REG : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset = '1') then
    
             sig_error_sh_reg <= '0';
    
           elsif (sig_push_status  = '1' and
                  sig_error_sh_reg = '0') then
    
             sig_error_sh_reg <= sig_stat_error;
    
           else
    
             null;  -- Hold Current State
    
           end if; 
        end if;       
      end process IMP_ERROR_SH_REG; 
    
    
    
    
    
    
    
    
    -----------------------------------------------------------------------------
    -- Internal Error Output Discrete Logic
    -----------------------------------------------------------------------------
    
    rdwr2llink_int_err     <= sig_int_error_pulse_reg ;
                               
    
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_INT_ERROR_REG
    --
    -- Process Description:
    --   Creates a 1-clock wide pulse when an internal error is 
    -- reported by the status controllers. This pulse is sent to  
    -- the LocalLink modules causing them to initiate a discontinue 
    -- sequence (if needed) to terminate a LocalLink transfer in
    -- progress.
    --
    -------------------------------------------------------------
    IMP_INT_ERROR_REG : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
          if (axi_reset      = '1' or
              sig_llink_busy = '0') then
   
            sig_int_error_pulse_reg <= '0';
   
          elsif (sig_push_status = '1') then
   
            sig_int_error_pulse_reg <= sig_stat_int_error;
   
          else
   
            null;  -- Hold Current State
   
          end if; 
        end if;       
      end process IMP_INT_ERROR_REG; 
    
    
    
    
    
    
    
    
    
    
  
  
    ---------------------------------------------------------------------------------
    --  Init Done Logic
    -- 
    -- This is used to keep some logic in reset for an extra 2 clock cycles after
    -- reset de-asserts. This is used to keep any AXI-Like Ready signals from
    -- asserting during reset but allows assertion after coming out of reset.
    ---------------------------------------------------------------------------------
  
                     
    sig_init_done <= sig_init_reg1 and not(sig_init_reg2) ;
  
     
    -------------------------------------------------------------
    -- Synchronous Process with Sync Reset
    --
    -- Label: IMP_INIT_DONE_REGS
    --
    -- Process Description:
    --   Creates a 1 clock period wide pulse that asserts 1 clock 
    -- after reset de-asserts.
    --
    -------------------------------------------------------------
    IMP_INIT_DONE_REGS : process (axi_aclk)
      begin
        if (axi_aclk'event and axi_aclk = '1') then
           if (axi_reset = '1') then
    
             sig_init_reg1 <= '0';
             sig_init_reg2 <= '0';
    
           else
    
             sig_init_reg1 <= '1';
             sig_init_reg2 <= sig_init_reg1;
    
           end if; 
        end if;       
      end process IMP_INIT_DONE_REGS; 
  
  
  
  
 
  
  end implementation;


-------------------------------------------------------------------
-- (c) Copyright 1984 - 2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-------------------------------------------------------------------

-- Filename:        axi_master_burst.vhd
--
-- Description:
--
-- AXI Master interface utilizing Xilinx LocalLink interface for User Logic
-- Side (IPIC) data transfer interface
--
--
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:
--
--      axi_master_burst.vhd
--          |
--          |-- proc_common_v4_0_2 (helper library)
--          |
--          |-- axi_master_burst_reset.vhd
--          |
--          |-- axi_master_rd_llink.vhd
--          |
--          |-- axi_master_wr_llink.vhd
--          |
--          |
--          |-- axi_master_burst_cmd_status.vhd
--          |       |-- axi_master_burst_first_stb_offset.vhd
--          |       |-- axi_master_burst_stbs_set.vhd
--          |
--          |-- axi_master_burst_rd_wr_cntlr.vhd
--                  |--  axi_master_burst_pcc.vhd
--                  |        |--  axi_master_burst_strb_gen.vhd
--                  |--  axi_master_burst_addr_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |--  axi_master_burst_rddata_cntl.vhd
--                  |        |--  axi_master_burst_rdmux.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |--  axi_master_burst_wrdata_cntl.vhd
--                  |        |--  axi_master_burst_strb_gen
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |--  axi_master_burst_rd_status_cntl.vhd
--                  |--  axi_master_burst_wr_status_cntl.vhd
--                  |        |--  axi_master_burst_fifo.vhd
--                  |               |-- proc_common_v4_0_2.srl_fifo_f
--                  |--  axi_master_burst_skid_buf.vhd
--                  |--  axi_master_burst_skid2mm_buf.vhd
--
--
-------------------------------------------------------------------------------
-- Author:          DET
-- Revision:        $Revision: 1.0 $
-- Date:            $$
--
-- History:
--   DET   01/18/2011       Version 1_00_a
--
--     DET     2/10/2011     Initial for EDK 13.1
-- ~~~~~~
--    -- Per CR593346
--     - Connected md_error output to the axi_master_burst_cmd_status rw_error
--       output.
-- ^^^^^^
--
--     DET     2/17/2011     Initial for 13.2
-- ~~~~~~
--    -- Per CR593967
--     - Added the port rdwr2llink_int_err to the Cmd/Status Module.
--       This output is now used to initiate a Locallink discontinue
--       when an internal error is detected.
-- ^^^^^^
-- ~~~~~~
--  SK       12/16/12      -- v2.0
--  1. up reved to major version for 2013.1 Vivado release. No logic updates.
--  2. Updated the version of AXI MASTER BURST to v2.0 in X.Y format
--  3. updated the proc common version to proc_common_v4_0_2
--  4. No Logic Updates
-- ^^^^^^
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x"
--      reset signals:                          "rst", "rst_n"
--      generics:                               "C_*"
--      user defined types:                     "*_TYPE"
--      state machine next state:               "*_ns"
--      state machine current state:            "*_cs"
--      combinatorial signals:                  "*_com"
--      pipelined or register delay signals:    "*_d#"
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce"
--      internal version of output port         "*_i"
--      device pins:                            "*_pin"
--      ports:                                  - Names begin with Uppercase
--      processes:                              "*_PROCESS"
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



library axi_master_burst_v2_0_7;
Use axi_master_burst_v2_0_7.axi_master_burst_reset       ;
Use axi_master_burst_v2_0_7.axi_master_burst_cmd_status  ;
Use axi_master_burst_v2_0_7.axi_master_burst_rd_wr_cntlr ;
Use axi_master_burst_v2_0_7.axi_master_burst_rd_llink    ;
Use axi_master_burst_v2_0_7.axi_master_burst_wr_llink    ;


-------------------------------------------------------------------------------

entity axi_master_burst is
  generic (



    ----------------------------------------------------------------------------
    -- AXI4 Related Parameters
    ----------------------------------------------------------------------------
    C_M_AXI_ADDR_WIDTH         : integer range 32 to 64    := 32;
        -- DataMover Master AXI Memory Map Address Width (bits)

    C_M_AXI_DATA_WIDTH         : integer range 32 to 256   := 32;
        -- DataMover Master AXI Memory Map Data Width (bits)

    C_MAX_BURST_LEN     : Integer range 16 to  256 :=  16;
       -- Specifies the max number of databeats to use for each AXI MMap
       -- transfer by the AXI Master Burst

    C_ADDR_PIPE_DEPTH   : Integer range 1 to  14 :=  1;
       -- Specifies the address pipeline depth for the AXI Master Burst
       -- when submitting transfer requests to the AXI4 Read and Write
       -- Address Channels.



    ----------------------------------------------------------------------------
    -- IPIC Related Parameters
    ----------------------------------------------------------------------------
    C_NATIVE_DATA_WIDTH : INTEGER range 32 to 128 := 32;
        --  Set this equal to desired data bus width needed by IPIC
        --  LocalLink Data Channels.

    C_LENGTH_WIDTH      : INTEGER range 12 to 20 := 12;
        -- Set this to the desired bit width for the ip2bus_mst_length
        -- input port required to specify the maximimum transfer byte
        -- count needed for any one command by the User logic.
        -- 12 bits =    4095 bytes max per command
        -- 13 bits =    8191 bytes max per command
        -- 14 bits =   16383 bytes max per command
        -- 15 bits =   32767 bytes max per command
        -- 16 bits =   65535 bytes max per command
        -- 17 bits =  131071 bytes max per command
        -- 18 bits =  262143 bytes max per command
        -- 19 bits =  524287 bytes max per command
        -- 20 bits = 1048575 bytes max per command


    ----------------------------------------------------------------------------
    -- Target FPGA Family Parameter
    ----------------------------------------------------------------------------
    C_FAMILY                   : string := "virtex7"
        -- Target FPGA Device Family

    );
  port (

    ----------------------------------------------------------------------------
    -- Primary Clock
    ----------------------------------------------------------------------------
    m_axi_aclk                  : in  std_logic                         ;-- AXI4

    ----------------------------------------------------------------------------
    -- Primary Reset Input (active low)
    ----------------------------------------------------------------------------
    m_axi_aresetn               : in  std_logic                         ;-- AXI4



    -----------------------------------------------------------------------
    -- Master Detected Error output
    -----------------------------------------------------------------------
    md_error                    : out  std_logic                        ;-- Error output discrete




    ----------------------------------------------------------------------------
    -- AXI4 Master Read Channel
    ----------------------------------------------------------------------------
    -- MMap Read Address Channel                                          -- AXI4
    m_axi_arready               : in  std_logic                          ;-- AXI4
    m_axi_arvalid               : out std_logic                          ;-- AXI4
    m_axi_araddr                : out std_logic_vector                    -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_arlen                 : out std_logic_vector(7 downto 0)       ;-- AXI4
    m_axi_arsize                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_arburst               : out std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_arprot                : out std_logic_vector(2 downto 0)       ;-- AXI4
    m_axi_arcache               : out std_logic_vector(3 downto 0)       ;-- AXI4
                                                                          -- AXI4
    -- MMap Read Data Channel                                             -- AXI4
    m_axi_rready                : out std_logic                          ;-- AXI4
    m_axi_rvalid                : in  std_logic                          ;-- AXI4
    m_axi_rdata                 : in  std_logic_vector                    -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ;-- AXI4
    m_axi_rresp                 : in  std_logic_vector(1 downto 0)       ;-- AXI4
    m_axi_rlast                 : in  std_logic                          ;-- AXI4



    -----------------------------------------------------------------------------
    -- AXI4 Master Write Channel
    -----------------------------------------------------------------------------
    -- Write Address Channel                                               -- AXI4
    m_axi_awready               : in  std_logic                          ; -- AXI4
    m_axi_awvalid               : out std_logic                          ; -- AXI4
    m_axi_awaddr                : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_ADDR_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_awlen                 : out std_logic_vector(7 downto 0)       ; -- AXI4
    m_axi_awsize                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awburst               : out std_logic_vector(1 downto 0)       ; -- AXI4
    m_axi_awprot                : out std_logic_vector(2 downto 0)       ; -- AXI4
    m_axi_awcache               : out std_logic_vector(3 downto 0)       ; -- AXI4
                                                                           -- AXI4
    -- Write Data Channel                                                  -- AXI4
    m_axi_wready                : in  std_logic                          ; -- AXI4
    m_axi_wvalid                : out std_logic                          ; -- AXI4
    m_axi_wdata                 : out std_logic_vector                     -- AXI4
                                      (C_M_AXI_DATA_WIDTH-1 downto 0)    ; -- AXI4
    m_axi_wstrb                 : out std_logic_vector                     -- AXI4
                                      ((C_M_AXI_DATA_WIDTH/8)-1 downto 0); -- AXI4
    m_axi_wlast                 : out std_logic                          ; -- AXI4
                                                                           -- AXI4
    -- Write Response Channel                                              -- AXI4
    m_axi_bready                : out std_logic                          ; -- AXI4
    m_axi_bvalid                : in  std_logic                          ; -- AXI4
    m_axi_bresp                 : in  std_logic_vector(1 downto 0)       ; -- AXI4





    -----------------------------------------------------------------------------------------
    -- IPIC Request/Qualifiers
    -----------------------------------------------------------------------------------------
    ip2bus_mstrd_req           : In  std_logic                                           ;-- IPIC CMD
    ip2bus_mstwr_req           : In  std_logic                                           ;-- IPIC CMD
    ip2bus_mst_addr            : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0)     ;-- IPIC CMD
    ip2bus_mst_length          : in  std_logic_vector(C_LENGTH_WIDTH-1 downto 0)         ;-- IPIC CMD
    ip2bus_mst_be              : in  std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC CMD
    ip2bus_mst_type            : in  std_logic                                           ;-- IPIC CMD
    ip2bus_mst_lock            : In  std_logic                                           ;-- IPIC CMD
    ip2bus_mst_reset           : In  std_logic                                           ;-- IPIC CMD


    -----------------------------------------------------------------------------------------
    -- IPIC Request Status Reply
    -----------------------------------------------------------------------------------------
    bus2ip_mst_cmdack          : Out std_logic                                           ;-- IPIC Stat
    bus2ip_mst_cmplt           : Out std_logic                                           ;-- IPIC Stat
    bus2ip_mst_error           : Out std_logic                                           ;-- IPIC Stat
    bus2ip_mst_rearbitrate     : Out std_logic                                           ;-- IPIC Stat
    bus2ip_mst_cmd_timeout     : out std_logic                                           ;-- IPIC Stat


    -----------------------------------------------------------------------------------------
    -- IPIC Read LocalLink Channel
    -----------------------------------------------------------------------------------------
    bus2ip_mstrd_d             : out std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;-- IPIC RD LLink
    bus2ip_mstrd_rem           : out std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC RD LLink
    bus2ip_mstrd_sof_n         : Out std_logic                                           ;-- IPIC RD LLink
    bus2ip_mstrd_eof_n         : Out std_logic                                           ;-- IPIC RD LLink
    bus2ip_mstrd_src_rdy_n     : Out std_logic                                           ;-- IPIC RD LLink
    bus2ip_mstrd_src_dsc_n     : Out std_logic                                           ;-- IPIC RD LLink

    ip2bus_mstrd_dst_rdy_n     : In  std_logic                                           ;-- IPIC RD LLink
    ip2bus_mstrd_dst_dsc_n     : In  std_logic                                           ;-- IPIC RD LLink


    -----------------------------------------------------------------------------------------
    -- IPIC Write LocalLink Channel
    -----------------------------------------------------------------------------------------
    ip2bus_mstwr_d             : In  std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0)    ;-- IPIC WR LLink
    ip2bus_mstwr_rem           : In  std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC WR LLink
    ip2bus_mstwr_sof_n         : In  std_logic                                           ;-- IPIC WR LLink
    ip2bus_mstwr_eof_n         : In  std_logic                                           ;-- IPIC WR LLink
    ip2bus_mstwr_src_rdy_n     : In  std_logic                                           ;-- IPIC WR LLink
    ip2bus_mstwr_src_dsc_n     : In  std_logic                                           ;-- IPIC WR LLink

    bus2ip_mstwr_dst_rdy_n     : Out std_logic                                           ;-- IPIC WR LLink
    bus2ip_mstwr_dst_dsc_n     : Out std_logic                                            -- IPIC WR LLink

    );

end entity axi_master_burst;


architecture implementation of axi_master_burst is

attribute DowngradeIPIdentifiedWarnings: string;

attribute DowngradeIPIdentifiedWarnings of implementation : architecture is "yes";


  -- Constants

   Constant LOGIC_LOW            : std_logic := '0';
   Constant LOGIC_HIGH           : std_logic := '1';

   Constant LLINK_DWIDTH         : integer := C_NATIVE_DATA_WIDTH;

   Constant LENGTH_WIDTH         : integer := C_LENGTH_WIDTH;
   Constant PCC_CMD_WIDTH        : integer := 68+C_M_AXI_ADDR_WIDTH-32; -- in bits
   Constant STATUS_WIDTH         : integer :=  8; -- in bits

   Constant RDWR_ID_WIDTH        : integer :=  4; -- in bits
   Constant RDWR_ID              : integer :=  0; -- in bits

   Constant RDWR_MAX_BURST_LEN   : integer := C_MAX_BURST_LEN; -- in data beats
   Constant RDWR_BTT_USED        : integer := LENGTH_WIDTH;
   Constant RDWR_ADDR_PIPE_DEPTH : integer := C_ADDR_PIPE_DEPTH;









  -- Signal Declarations

   signal sig_ipic_reset               : std_logic := '0';
   signal sig_rst2cmd_stat_reset       : std_logic := '0';
   signal sig_rst2rdwr_cntlr_reset     : std_logic := '0';
   signal sig_rst2llink_reset          : std_logic := '0';

   signal sig_rw_error                 : std_logic := '0';
   signal sig_rdwr2llink_int_err       : std_logic := '0';



   signal sig_ip2bus_mstrd_req         : std_logic := '0';
   signal sig_ip2bus_mstwr_req         : std_logic := '0';
   signal sig_ip2bus_mst_addr          : std_logic_vector(0 to C_M_AXI_ADDR_WIDTH-1) := (others => '0');
   signal sig_ip2bus_mst_length        : std_logic_vector(0 to LENGTH_WIDTH-1) := (others => '0');
   signal sig_ip2bus_mst_be            : std_logic_vector(0 to (C_NATIVE_DATA_WIDTH/8)-1) := (others => '0');
   signal sig_ip2bus_mst_type          : std_logic := '0';
   signal sig_ip2bus_mst_lock          : std_logic := '0';

   signal sig_bus2ip_mst_cmdack        : std_logic := '0';
   signal sig_bus2ip_mst_cmplt         : std_logic := '0';
   signal sig_bus2ip_mst_error         : std_logic := '0';
   signal sig_bus2ip_mst_rearbitrate   : std_logic := '0';
   signal sig_bus2ip_mst_cmd_timeout   : std_logic := '0';

   signal sig_llink2cmd_rd_busy        : std_logic := '0';
   signal sig_llink2cmd_wr_busy        : std_logic := '0';

   signal sig_pcc2cmd_cmd_ready        : std_logic := '0';
   signal sig_cmd2pcc_cmd_valid        : std_logic := '0';
   signal sig_cmd2pcc_command          : std_logic_vector(PCC_CMD_WIDTH-1 downto 0) := (others => '0');

   signal sig_cmd2all_doing_read       : std_logic := '0';
   signal sig_cmd2all_doing_write      : std_logic := '0';

   signal sig_stat2rsc_status_ready    : std_logic := '0';
   signal sig_rsc2stat_status_valid    : std_logic := '0';
   signal sig_rsc2stat_status          : std_logic_vector(STATUS_WIDTH-1 downto 0) := (others => '0');

   signal sig_stat2wsc_status_ready    : std_logic := '0';
   signal sig_wsc2stat_status_valid    : std_logic := '0';
   signal sig_wsc2stat_status          : std_logic_vector(STATUS_WIDTH-1 downto 0) := (others => '0');

   signal sig_llink2rd_allow_addr_req  : std_logic := '0';
   signal sig_rd2llink_addr_req_posted : std_logic := '0';
   signal sig_rd2llink_xfer_cmplt      : std_logic := '0';

   signal sig_llink2wr_allow_addr_req  : std_logic := '0';
   signal sig_wr2llink_addr_req_posted : std_logic := '0';
   signal sig_wr2llink_xfer_cmplt      : std_logic := '0';

   signal sig_rd2llink_strm_tdata      : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0);
   signal sig_rd2llink_strm_tstrb      : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
   signal sig_rd2llink_strm_tlast      : std_logic := '0';
   signal sig_rd2llink_strm_tvalid     : std_logic := '0';
   signal sig_llink2rd_strm_tready     : std_logic := '0';

   signal sig_llink2wr_strm_tdata      : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0);
   signal sig_llink2wr_strm_tstrb      : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);
   signal sig_llink2wr_strm_tlast      : std_logic := '0';
   signal sig_llink2wr_strm_tvalid     : std_logic := '0';
   signal sig_llink2wr_strm_tready     : std_logic := '0';

   signal sig_rd_llink_enable          : std_logic := '0';
   signal sig_wr_llink_enable          : std_logic := '0';

   signal sig_md_error                 : std_logic := '0';


    -----------------------------------------------------------------------------------------
    -- IPIC Read LocalLink Channel (Little Endian bit ordering)
    -----------------------------------------------------------------------------------------
    -- signal sig_bus2ip_mstrd_d             : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0 )   ;-- IPIC RD LLink
    -- signal sig_bus2ip_mstrd_rem           : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC RD LLink
    -- signal sig_bus2ip_mstrd_sof_n         : std_logic                                           ;-- IPIC RD LLink
    -- signal sig_bus2ip_mstrd_eof_n         : std_logic                                           ;-- IPIC RD LLink
    -- signal sig_bus2ip_mstrd_src_rdy_n     : std_logic                                           ;-- IPIC RD LLink
    -- signal sig_bus2ip_mstrd_src_dsc_n     : std_logic                                           ;-- IPIC RD LLink
    --
    -- signal sig_ip2bus_mstrd_dst_rdy_n     : std_logic                                           ;-- IPIC RD LLink
    -- signal sig_ip2bus_mstrd_dst_dsc_n     : std_logic                                           ;-- IPIC RD LLink

    -----------------------------------------------------------------------------------------
    -- IPIC Read LocalLink Channel (Big Endian bit ordering)
    -----------------------------------------------------------------------------------------
    signal sig_bus2ip_mstrd_d             : std_logic_vector(0 to C_NATIVE_DATA_WIDTH-1)        ;-- IPIC RD LLink
    signal sig_bus2ip_mstrd_rem           : std_logic_vector(0 to (C_NATIVE_DATA_WIDTH/8)-1)    ;-- IPIC RD LLink
    signal sig_bus2ip_mstrd_sof_n         : std_logic                                           ;-- IPIC RD LLink
    signal sig_bus2ip_mstrd_eof_n         : std_logic                                           ;-- IPIC RD LLink
    signal sig_bus2ip_mstrd_src_rdy_n     : std_logic                                           ;-- IPIC RD LLink
    signal sig_bus2ip_mstrd_src_dsc_n     : std_logic                                           ;-- IPIC RD LLink

    signal sig_ip2bus_mstrd_dst_rdy_n     : std_logic                                           ;-- IPIC RD LLink
    signal sig_ip2bus_mstrd_dst_dsc_n     : std_logic                                           ;-- IPIC RD LLink



    -----------------------------------------------------------------------------------------
    -- IPIC Write LocalLink Channel  (Little Endian bit ordering)
    -----------------------------------------------------------------------------------------
    -- signal sig_ip2bus_mstwr_d             : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0)    ;-- IPIC WR LLink
    -- signal sig_ip2bus_mstwr_rem           : std_logic_vector((C_NATIVE_DATA_WIDTH/8)-1 downto 0);-- IPIC WR LLink
    -- signal sig_ip2bus_mstwr_sof_n         : std_logic                                           ;-- IPIC WR LLink
    -- signal sig_ip2bus_mstwr_eof_n         : std_logic                                           ;-- IPIC WR LLink
    -- signal sig_ip2bus_mstwr_src_rdy_n     : std_logic                                           ;-- IPIC WR LLink
    -- signal sig_ip2bus_mstwr_src_dsc_n     : std_logic                                           ;-- IPIC WR LLink
    --
    -- signal sig_bus2ip_mstwr_dst_rdy_n     : std_logic                                           ;-- IPIC WR LLink
    -- signal sig_bus2ip_mstwr_dst_dsc_n     : std_logic                                           ;-- IPIC WR LLink


    -----------------------------------------------------------------------------------------
    -- IPIC Write LocalLink Channel  (Big Endian bit ordering)
    -----------------------------------------------------------------------------------------
    signal sig_ip2bus_mstwr_d             : std_logic_vector(0 to C_NATIVE_DATA_WIDTH-1)        ;-- IPIC WR LLink
    signal sig_ip2bus_mstwr_rem           : std_logic_vector(0 to (C_NATIVE_DATA_WIDTH/8)-1)    ;-- IPIC WR LLink
    signal sig_ip2bus_mstwr_sof_n         : std_logic                                           ;-- IPIC WR LLink
    signal sig_ip2bus_mstwr_eof_n         : std_logic                                           ;-- IPIC WR LLink
    signal sig_ip2bus_mstwr_src_rdy_n     : std_logic                                           ;-- IPIC WR LLink
    signal sig_ip2bus_mstwr_src_dsc_n     : std_logic                                           ;-- IPIC WR LLink

    signal sig_bus2ip_mstwr_dst_rdy_n     : std_logic                                           ;-- IPIC WR LLink
    signal sig_bus2ip_mstwr_dst_dsc_n     : std_logic                                           ;-- IPIC WR LLink








begin --(architecture implementation)

  -- Master detected Error output discrete
  -- md_error                  <= sig_md_error      ;
  md_error                  <= sig_rw_error      ;



  -- Assign IPIC Command Inputs
  -- Note that this also changes the bit ordering
  -- from Little Endian to big endian for vectors.
  sig_ip2bus_mstrd_req      <= ip2bus_mstrd_req  ;
  sig_ip2bus_mstwr_req      <= ip2bus_mstwr_req  ;
  sig_ip2bus_mst_addr       <= ip2bus_mst_addr   ;
  sig_ip2bus_mst_length     <= ip2bus_mst_length ;
  sig_ip2bus_mst_be         <= ip2bus_mst_be     ;
  sig_ip2bus_mst_type       <= ip2bus_mst_type   ;
  sig_ip2bus_mst_lock       <= ip2bus_mst_lock   ;
  sig_ipic_reset            <= ip2bus_mst_reset  ;


  -- Assign IPIC Status Outputs

  bus2ip_mst_cmdack         <= sig_bus2ip_mst_cmdack      ;
  bus2ip_mst_cmplt          <= sig_bus2ip_mst_cmplt       ;
  bus2ip_mst_error          <= sig_bus2ip_mst_error       ;
  bus2ip_mst_rearbitrate    <= sig_bus2ip_mst_rearbitrate ;
  bus2ip_mst_cmd_timeout    <= sig_bus2ip_mst_cmd_timeout ;


  -- Assign Read LocalLink Ports
  -- Note that this also changes the bit ordering
  -- from Little Endian to big endian for vectors.
  bus2ip_mstrd_d              <=  sig_bus2ip_mstrd_d         ;
  bus2ip_mstrd_rem            <=  sig_bus2ip_mstrd_rem       ;
  bus2ip_mstrd_sof_n          <=  sig_bus2ip_mstrd_sof_n     ;
  bus2ip_mstrd_eof_n          <=  sig_bus2ip_mstrd_eof_n     ;
  bus2ip_mstrd_src_rdy_n      <=  sig_bus2ip_mstrd_src_rdy_n ;
  bus2ip_mstrd_src_dsc_n      <=  sig_bus2ip_mstrd_src_dsc_n ;

  sig_ip2bus_mstrd_dst_rdy_n  <=  ip2bus_mstrd_dst_rdy_n     ;
  sig_ip2bus_mstrd_dst_dsc_n  <=  ip2bus_mstrd_dst_dsc_n     ;


  -- Assign Write LocalLink Ports
  -- Note that this also changes the bit ordering
  -- from Little Endian to big endian for vectors.
  sig_ip2bus_mstwr_d          <= ip2bus_mstwr_d             ;
  sig_ip2bus_mstwr_rem        <= ip2bus_mstwr_rem           ;
  sig_ip2bus_mstwr_sof_n      <= ip2bus_mstwr_sof_n         ;
  sig_ip2bus_mstwr_eof_n      <= ip2bus_mstwr_eof_n         ;
  sig_ip2bus_mstwr_src_rdy_n  <= ip2bus_mstwr_src_rdy_n     ;
  sig_ip2bus_mstwr_src_dsc_n  <= ip2bus_mstwr_src_dsc_n     ;

  bus2ip_mstwr_dst_rdy_n      <= sig_bus2ip_mstwr_dst_rdy_n ;
  bus2ip_mstwr_dst_dsc_n      <= sig_bus2ip_mstwr_dst_dsc_n ;







  ------------------------------------------------------------
  -- Instance: I_RESET_MODULE
  --
  -- Description:
  --   Reset Module instance.
  --
  ------------------------------------------------------------
  I_RESET_MODULE : entity axi_master_burst_v2_0_7.axi_master_burst_reset
  port map (

    -- Clock Input
    axi_aclk               => m_axi_aclk     ,

    -- Reset Input (active low)
    axi_aresetn            => m_axi_aresetn  ,


    -- IPIC Reset Input
    ip2bus_mst_reset       => sig_ipic_reset ,




    -- HW Reset to internal reset groups --------------------------
    rst2cmd_reset_out      => sig_rst2cmd_stat_reset    ,
    rst2rdwr_reset_out     => sig_rst2rdwr_cntlr_reset  ,
    rst2llink_reset_out    => sig_rst2llink_reset

    );





   ------------------------------------------------------------
   -- Instance: I_CMD_STATUS_MODULE
   --
   -- Description:
   --  Instance of the Command and Status Module
   --
   ------------------------------------------------------------
   I_CMD_STATUS_MODULE : entity axi_master_burst_v2_0_7.axi_master_burst_cmd_status
   generic map (

     C_ADDR_WIDTH            =>   C_M_AXI_ADDR_WIDTH ,
     C_NATIVE_DWIDTH         =>   C_NATIVE_DATA_WIDTH,
     C_CMD_WIDTH             =>   PCC_CMD_WIDTH      ,
     C_CMD_BTT_USED_WIDTH    =>   LENGTH_WIDTH       ,
     C_STS_WIDTH             =>   STATUS_WIDTH       ,
     C_FAMILY                =>   C_FAMILY

     )
   port map (

     -- Clock inputs
     axi_aclk                =>  m_axi_aclk                 ,

     -- Reset inputs
     axi_reset               =>  sig_rst2cmd_stat_reset     ,

     -- RW_ERROR Output Discrete
     rw_error                =>  sig_rw_error               ,

     -- Internal error Output Discrete to LocalLink backends
     -- (Asserted until Pertinent LocalLink IF is not busy)
     rdwr2llink_int_err      =>  sig_rdwr2llink_int_err     ,

-- IPIC Request/Qualifiers
     ip2bus_mstrd_req        =>  sig_ip2bus_mstrd_req       ,
     ip2bus_mstwr_req        =>  sig_ip2bus_mstwr_req       ,
     ip2bus_mst_addr         =>  sig_ip2bus_mst_addr        ,
     ip2bus_mst_length       =>  sig_ip2bus_mst_length      ,
     ip2bus_mst_be           =>  sig_ip2bus_mst_be          ,
     ip2bus_mst_type         =>  sig_ip2bus_mst_type        ,
     ip2bus_mst_lock         =>  sig_ip2bus_mst_lock        ,
     ip2bus_mst_reset        =>  LOGIC_LOW                  ,


     -- IPIC Request Status Reply
     bus2ip_mst_cmdack       =>  sig_bus2ip_mst_cmdack      ,
     bus2ip_mst_cmplt        =>  sig_bus2ip_mst_cmplt       ,
     bus2ip_mst_error        =>  sig_bus2ip_mst_error       ,
     bus2ip_mst_rearbitrate  =>  sig_bus2ip_mst_rearbitrate ,
     bus2ip_mst_cmd_timeout  =>  sig_bus2ip_mst_cmd_timeout ,


     -- IPIC LocalLink Busy Flag
     mstrd_llink_busy        =>  sig_llink2cmd_rd_busy      ,
     mstwr_llink_busy        =>  sig_llink2cmd_wr_busy      ,


     -- PCC Command Interface
     pcc2cmd_cmd_ready       =>  sig_pcc2cmd_cmd_ready      ,
     cmd2pcc_cmd_valid       =>  sig_cmd2pcc_cmd_valid      ,
     cmd2pcc_command         =>  sig_cmd2pcc_command        ,



     -- Read/Write Command Indicator Interface
     cmd2all_doing_read      =>  sig_cmd2all_doing_read     ,
     cmd2all_doing_write     =>  sig_cmd2all_doing_write    ,


     -- Read Status Controller Interface
     stat2rsc_status_ready   =>  sig_stat2rsc_status_ready  ,
     rsc2stat_status_valid   =>  sig_rsc2stat_status_valid  ,
     rsc2stat_status         =>  sig_rsc2stat_status        ,


     -- Write Status Controller Interface
     stat2wsc_status_ready   =>  sig_stat2wsc_status_ready  ,
     wsc2stat_status_valid   =>  sig_wsc2stat_status_valid  ,
     wsc2stat_status         =>  sig_wsc2stat_status

     );







     ------------------------------------------------------------
     -- Instance: I_RD_WR_CNTRL_MODULE
     --
     -- Description:
     --   Instance of the Read and Write Controller Module
     --
     ------------------------------------------------------------
     I_RD_WR_CNTRL_MODULE : entity axi_master_burst_v2_0_7.axi_master_burst_rd_wr_cntlr
     generic map (

       C_RDWR_ID_WIDTH          => RDWR_ID_WIDTH        ,
       C_RDWR_ARID              => RDWR_ID              ,
       C_RDWR_ADDR_WIDTH        => C_M_AXI_ADDR_WIDTH   ,
       C_RDWR_MDATA_WIDTH       => C_M_AXI_DATA_WIDTH   ,
       C_RDWR_SDATA_WIDTH       => C_NATIVE_DATA_WIDTH  ,
       C_RDWR_MAX_BURST_LEN     => RDWR_MAX_BURST_LEN   ,
       C_RDWR_BTT_USED          => RDWR_BTT_USED        ,
       C_RDWR_ADDR_PIPE_DEPTH   => RDWR_ADDR_PIPE_DEPTH ,
       C_RDWR_PCC_CMD_WIDTH     => PCC_CMD_WIDTH        ,
       C_RDWR_STATUS_WIDTH      => STATUS_WIDTH         ,
       C_FAMILY                 => C_FAMILY

       )
     port map (

       -- RDWR Primary Clock input
       rdwr_aclk               => m_axi_aclk                    ,

       -- RDWR Primary Reset input
       rdwr_areset             => sig_rst2rdwr_cntlr_reset      ,

       -- RDWR Master detected Error Output Discrete
       rdwr_md_error           => sig_md_error                   ,


       -- Command/Status Module PCC Command Interface (AXI Stream Like)
       cmd2rdwr_cmd_valid      => sig_cmd2pcc_cmd_valid         ,
       rdwr2cmd_cmd_ready      => sig_pcc2cmd_cmd_ready         ,
       cmd2rdwr_cmd_data       => sig_cmd2pcc_command           ,

       -- Command/Status Module Type Interface
       cmd2rdwr_doing_read     => sig_cmd2all_doing_read        ,
       cmd2rdwr_doing_write    => sig_cmd2all_doing_write       ,

       -- Command/Status Module Read Status Ports (AXI Stream Like)
       stat2rsc_status_ready   => sig_stat2rsc_status_ready     ,
       rsc2stat_status_valid   => sig_rsc2stat_status_valid     ,
       rsc2stat_status         => sig_rsc2stat_status           ,


       -- Command/Status Module Write Status Ports (AXI Stream Like)
       stat2wsc_status_ready   => sig_stat2wsc_status_ready     ,
       wsc2stat_status_valid   => sig_wsc2stat_status_valid     ,
       wsc2stat_status         => sig_wsc2stat_status           ,


       -- Read Address Posting Contols/Status
       rd_allow_addr_req       => sig_llink2rd_allow_addr_req   ,
       rd_addr_req_posted      => sig_rd2llink_addr_req_posted  ,
       rd_xfer_cmplt           => sig_rd2llink_xfer_cmplt       ,

       -- Write Address Posting Contols/Status
       wr_allow_addr_req       => sig_llink2wr_allow_addr_req   ,
       wr_addr_req_posted      => sig_wr2llink_addr_req_posted  ,
       wr_xfer_cmplt           => sig_wr2llink_xfer_cmplt       ,



       -- LocalLink Enable Outputs (1 clock pulse)
       rd_llink_enable        => sig_rd_llink_enable            ,
       wr_llink_enable        => sig_wr_llink_enable            ,



       -- AXI Read Address Channel I/O
       rd_arid                 => open                          ,
       rd_araddr               => m_axi_araddr                  ,
       rd_arlen                => m_axi_arlen                   ,
       rd_arsize               => m_axi_arsize                  ,
       rd_arburst              => m_axi_arburst                 ,
       rd_arprot               => m_axi_arprot                  ,
       rd_arcache              => m_axi_arcache                 ,
       rd_arvalid              => m_axi_arvalid                 ,
       rd_arready              => m_axi_arready                 ,

       -- AXI Read Data Channel I/O
       rd_rdata                => m_axi_rdata                   ,
       rd_rresp                => m_axi_rresp                   ,
       rd_rlast                => m_axi_rlast                   ,
       rd_rvalid               => m_axi_rvalid                  ,
       rd_rready               => m_axi_rready                  ,

       -- AXI Read Master Stream Channel I/O
       rd_strm_tdata           => sig_rd2llink_strm_tdata       ,
       rd_strm_tstrb           => sig_rd2llink_strm_tstrb       ,
       rd_strm_tlast           => sig_rd2llink_strm_tlast       ,
       rd_strm_tvalid          => sig_rd2llink_strm_tvalid      ,
       rd_strm_tready          => sig_llink2rd_strm_tready      ,


       -- AXI Write Address Channel I/O
       wr_awid                 => open                          ,
       wr_awaddr               => m_axi_awaddr                  ,
       wr_awlen                => m_axi_awlen                   ,
       wr_awsize               => m_axi_awsize                  ,
       wr_awburst              => m_axi_awburst                 ,
       wr_awprot               => m_axi_awprot                  ,
       wr_awcache              => m_axi_awcache                 ,
       wr_awvalid              => m_axi_awvalid                 ,
       wr_awready              => m_axi_awready                 ,

       -- RDWR AXI Write Data Channel I/O
       wr_wdata                => m_axi_wdata                   ,
       wr_wstrb                => m_axi_wstrb                   ,
       wr_wlast                => m_axi_wlast                   ,
       wr_wvalid               => m_axi_wvalid                  ,
       wr_wready               => m_axi_wready                  ,


       -- RDWR AXI Write response Channel I/O
       wr_bresp                => m_axi_bresp                   ,
       wr_bvalid               => m_axi_bvalid                  ,
       wr_bready               => m_axi_bready                  ,

       -- RDWR AXI Slave Stream Channel I/O
       wr_strm_tdata           => sig_llink2wr_strm_tdata       ,
       wr_strm_tstrb           => sig_llink2wr_strm_tstrb       ,
       wr_strm_tlast           => sig_llink2wr_strm_tlast       ,
       wr_strm_tvalid          => sig_llink2wr_strm_tvalid      ,
       wr_strm_tready          => sig_llink2wr_strm_tready


       );












    ------------------------------------------------------------
    -- Instance: I_RD_LLINK_ADAPTER
    --
    -- Description:
    --   Instance for the Read AXI Stream to Read LocalLink Adapter
    --
    ------------------------------------------------------------
    I_RD_LLINK_ADAPTER : entity axi_master_burst_v2_0_7.axi_master_burst_rd_llink
    generic map (

      C_NATIVE_DWIDTH => C_NATIVE_DATA_WIDTH

      )
    port map (

      -- Read LocalLink Clock input
      rdllink_aclk               =>  m_axi_aclk                   ,

      -- Read LocalLink Reset input
      rdllink_areset             =>  sig_rst2llink_reset          ,

      -- Read Cntlr Internal Error Indication
      rdllink_rd_error           =>  sig_rdwr2llink_int_err       ,

      -- LocalLink Enable Control (1 Clock wide pulse)
      rdllink_llink_enable       =>  sig_rd_llink_enable          ,

      -- IPIC LocalLink Busy Flag
      rdllink_llink_busy         =>  sig_llink2cmd_rd_busy        ,


      -- Read Address Posting Contols/Status
      rdllink_allow_addr_req     =>  sig_llink2rd_allow_addr_req  ,
      rdllink_addr_req_posted    =>  sig_rd2llink_addr_req_posted ,
      rdllink_xfer_cmplt         =>  sig_rd2llink_xfer_cmplt      ,


      -- Read AXI Slave Master Channel
      rdllink_strm_tdata         =>  sig_rd2llink_strm_tdata      ,
      rdllink_strm_tstrb         =>  sig_rd2llink_strm_tstrb      ,
      rdllink_strm_tlast         =>  sig_rd2llink_strm_tlast      ,
      rdllink_strm_tvalid        =>  sig_rd2llink_strm_tvalid     ,
      rdllink_strm_tready        =>  sig_llink2rd_strm_tready     ,

      -- IPIC Read LocalLink Channel
      bus2ip_mstrd_d             =>  sig_bus2ip_mstrd_d           ,
      bus2ip_mstrd_rem           =>  sig_bus2ip_mstrd_rem         ,
      bus2ip_mstrd_sof_n         =>  sig_bus2ip_mstrd_sof_n       ,
      bus2ip_mstrd_eof_n         =>  sig_bus2ip_mstrd_eof_n       ,
      bus2ip_mstrd_src_rdy_n     =>  sig_bus2ip_mstrd_src_rdy_n   ,
      bus2ip_mstrd_src_dsc_n     =>  sig_bus2ip_mstrd_src_dsc_n   ,

      ip2bus_mstrd_dst_rdy_n     =>  sig_ip2bus_mstrd_dst_rdy_n   ,
      ip2bus_mstrd_dst_dsc_n     =>  sig_ip2bus_mstrd_dst_dsc_n


      );












    ------------------------------------------------------------
    -- Instance: I_WR_LLINK_ADAPTER
    --
    -- Description:
    --   Instance for the Write LocalLink to AXI Stream Adapter
    --
    ------------------------------------------------------------
    I_WR_LLINK_ADAPTER : entity axi_master_burst_v2_0_7.axi_master_burst_wr_llink
    generic map (

      C_NATIVE_DWIDTH => C_NATIVE_DATA_WIDTH

      )
    port map (

      -- Write LocalLink Clock input
      wrllink_aclk               =>  m_axi_aclk                   ,

      -- Write LocalLink Reset input
      wrllink_areset             =>  sig_rst2llink_reset          ,

      -- RDWR Cntlr Internal Error Indication
      wrllink_wr_error           =>  sig_rdwr2llink_int_err       ,

      -- LocalLink Enable Control (1 Clock wide pulse)
      wrllink_llink_enable       =>  sig_wr_llink_enable          ,

      -- IPIC LocalLink Busy Flag
      wrllink_llink_busy         =>  sig_llink2cmd_wr_busy        ,


      -- Write Address Posting Contols/Status
      wrllink_allow_addr_req     =>  sig_llink2wr_allow_addr_req  ,
      wrllink_addr_req_posted    =>  sig_wr2llink_addr_req_posted ,
      wrllink_xfer_cmplt         =>  sig_wr2llink_xfer_cmplt      ,


      -- Write AXI Slave Master Channel
      wrllink_strm_tdata         =>  sig_llink2wr_strm_tdata      ,
      wrllink_strm_tstrb         =>  sig_llink2wr_strm_tstrb      ,
      wrllink_strm_tlast         =>  sig_llink2wr_strm_tlast      ,
      wrllink_strm_tvalid        =>  sig_llink2wr_strm_tvalid     ,
      wrllink_strm_tready        =>  sig_llink2wr_strm_tready     ,

      -- IPIC Write LocalLink Channel
      ip2bus_mstwr_d             =>  sig_ip2bus_mstwr_d           ,
      ip2bus_mstwr_rem           =>  sig_ip2bus_mstwr_rem         ,
      ip2bus_mstwr_sof_n         =>  sig_ip2bus_mstwr_sof_n       ,
      ip2bus_mstwr_eof_n         =>  sig_ip2bus_mstwr_eof_n       ,
      ip2bus_mstwr_src_rdy_n     =>  sig_ip2bus_mstwr_src_rdy_n   ,
      ip2bus_mstwr_src_dsc_n     =>  sig_ip2bus_mstwr_src_dsc_n   ,

      bus2ip_mstwr_dst_rdy_n     =>  sig_bus2ip_mstwr_dst_rdy_n   ,
      bus2ip_mstwr_dst_dsc_n     =>  sig_bus2ip_mstwr_dst_dsc_n


      );









end implementation;


