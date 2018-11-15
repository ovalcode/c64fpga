//==========================================
// Function : Asynchronous FIFO (w/ 2 asynchronous clocks).
// Coder    : Alex Claros F.
// Date     : 15/May/2005.
// Notes    : This implementation is based on the article 
//            'Asynchronous FIFO in Virtex-II FPGAs'
//            writen by Peter Alfke. This TechXclusive 
//            article can be downloaded from the
//            Xilinx website. It has some minor modifications.
//=========================================

`timescale 1ns/1ps

module aFifo
  #(parameter    DATA_WIDTH    = 8,
                 ADDRESS_WIDTH = 4,
                 FIFO_DEPTH    = (1 << ADDRESS_WIDTH))
     //Reading port
    (output reg  [DATA_WIDTH-1:0]        Data_out, 
     output wire                          Empty_out,
     input wire                          ReadEn_in,
     input wire                          RClk,        
     //Writing port.	 
     input wire  [DATA_WIDTH-1:0]        Data_in,  
     output wire                          Full_out,
     input wire                          WriteEn_in,
     input wire                          WClk,
	 
     input wire                          Clear_in,
     output wire [3:0] next_word_read_debug,
     output wire [3:0] next_word_write_debug,
     output equal_debug,
     output next_add_read_enable_debug,
     output next_add_write_enable_debug,
     output set_status_debug,
     output rst_status,
     output status_debug,
     output preset_full_debug,
     output preset_empty_debug
      );

    /////Internal connections & variables//////
    reg   [DATA_WIDTH-1:0]              Mem [FIFO_DEPTH-1:0];
    wire  [ADDRESS_WIDTH-1:0]           pNextWordToWrite, pNextWordToRead;
    //wire                                EqualAddresses;
    wire                                EqualAddresses_write_side, EqualAddresses_read_side;
    wire                                NextWriteAddressEn, NextReadAddressEn;
   // wire                                Set_Status, Rst_Status;
    wire                                Set_Status_write_side, Rst_Status_write_side;
    wire                                Set_Status_read_side, Rst_Status_read_side;
    reg                                 Status_write_side, Status_write_prev_side;
    reg                                 Status_read_side, Status_read_prev_side;
    //wire                                PresetFull, PresetEmpty;
    wire                                PresetFull_write_side, PresetEmpty_write_side;
    wire                                PresetFull_read_side, PresetEmpty_read_side;
    
   (* ASYNC_REG = "TRUE" *)  reg [3:0] synchro_write_side_0, synchro_write_side_1; 
   (* ASYNC_REG = "TRUE" *) reg [3:0] synchro_read_side_0, synchro_read_side_1;

//write synchroniser
//--------------------------------------------------------------------------------------
     always @(posedge WClk) 
     begin
       synchro_write_side_0 <= pNextWordToRead;
       synchro_write_side_1 <= synchro_write_side_0;
     end
//---------------------------------------------------------------------------------------     

//read synchroniser
//--------------------------------------------------------------------------------------
     always @(posedge RClk) 
     begin
       synchro_read_side_0 <= pNextWordToWrite;
       synchro_read_side_1 <= synchro_read_side_0;
     end
//---------------------------------------------------------------------------------------     
     
     assign next_word_read_debug = pNextWordToRead;
     assign next_word_write_debug = pNextWordToWrite;
//     assign equal_debug = EqualAddresses;
     assign next_add_read_enable_debug = NextReadAddressEn;
     assign next_add_write_enable_debug = NextWriteAddressEn;
//     assign set_status_debug = Set_Status;
//     assign rst_status = Rst_Status;
//     assign status_debug = Status;
//     assign preset_full_debug = PresetFull;
//     assign preset_empty_debug = PresetEmpty;

    
    //////////////Code///////////////
    //Data ports logic:
    //(Uses a dual-port RAM).
    //'Data_out' logic:
    always @ (posedge RClk)
        if (ReadEn_in & !Empty_out)
            Data_out <= Mem[pNextWordToRead];
            
    //'Data_in' logic:
    always @ (posedge WClk)
        if (WriteEn_in & !Full_out)
            Mem[pNextWordToWrite] <= Data_in;

    //Fifo addresses support logic: 
    //'Next Addresses' enable logic:
    assign NextWriteAddressEn = WriteEn_in & ~Full_out;
    assign NextReadAddressEn  = ReadEn_in  & ~Empty_out;
           
    //Addreses (Gray counters) logic:
    GrayCounter GrayCounter_pWr
       (.GrayCount_out(pNextWordToWrite),
       
        .Enable_in(NextWriteAddressEn),
        .Clear_in(Clear_in),
        
        .Clk(WClk)
       );
       
    GrayCounter GrayCounter_pRd
       (.GrayCount_out(pNextWordToRead),
        .Enable_in(NextReadAddressEn),
        .Clear_in(Clear_in),
        .Clk(RClk)
       );
     
//Empty/Full Handling on Write Side
//----------------------------------------------------------------------------------------------------
    //'EqualAddresses' logic:
    assign EqualAddresses_write_side = (pNextWordToWrite == synchro_write_side_1);

    //'Quadrant selectors' logic:
    assign Set_Status_write_side = (pNextWordToWrite[ADDRESS_WIDTH-2] ~^ synchro_write_side_1[ADDRESS_WIDTH-1]) &
                         (pNextWordToWrite[ADDRESS_WIDTH-1] ^  synchro_write_side_1[ADDRESS_WIDTH-2]);
                            
    assign Rst_Status_write_side = (pNextWordToWrite[ADDRESS_WIDTH-2] ^  synchro_write_side_1[ADDRESS_WIDTH-1]) &
                         (pNextWordToWrite[ADDRESS_WIDTH-1] ~^ synchro_write_side_1[ADDRESS_WIDTH-2]);
                         
                         //reg                                 Status_write_side, Status_write_prev_side;
    //'Status' latch logic:
    /*always @ (Set_Status, Rst_Status, Clear_in) //D Latch w/ Asynchronous Clear & Preset.
        if (Rst_Status | Clear_in)
            Status = 0;  //Going 'Empty'.
        else if (Set_Status)
            Status = 1;  //Going 'Full'.*/
            
    always @*            
        if (Rst_Status_write_side | Clear_in)
          Status_write_side = 0;  //Going 'Empty'.
        else if (Set_Status_write_side)
          Status_write_side = 1;  //Going 'Full'.
        else
          Status_write_side = Status_write_prev_side; 
          
    always @(posedge WClk)
         Status_write_prev_side <= Status_write_side; 
             
    //'Full_out' logic for the writing port:
   assign PresetFull_write_side = Status_write_side & EqualAddresses_write_side;  //'Full' Fifo.
    
    /*always @ (posedge WClk, posedge PresetFull) //D Flip-Flop w/ Asynchronous Preset.
        if (PresetFull)
            Full_out <= 1;
        else
            Full_out <= 0;*/
            
   assign Full_out = PresetFull_write_side;             

                
            
    /*Empty_out' logic for the reading port:
    assign PresetEmpty_write_side = ~Status_write_side & EqualAddresses_write_side;  //'Empty' Fifo.
    
    always @ (posedge RClk, posedge PresetEmpty)  //D Flip-Flop w/ Asynchronous Preset.
        if (PresetEmpty)
            Empty_out <= 1;
        else
            Empty_out <= 0;*/
//----------------------------------------------------------------------------------------------------            
//Empty/Full Handling on Read Side
//----------------------------------------------------------------------------------------------------
    //'EqualAddresses' logic:
assign EqualAddresses_read_side = (synchro_read_side_1 == pNextWordToRead);

//'Quadrant selectors' logic:
assign Set_Status_read_side = (synchro_read_side_1[ADDRESS_WIDTH-2] ~^ pNextWordToRead[ADDRESS_WIDTH-1]) &
                     (synchro_read_side_1[ADDRESS_WIDTH-1] ^  pNextWordToRead[ADDRESS_WIDTH-2]);
                        
assign Rst_Status_read_side = (synchro_read_side_1[ADDRESS_WIDTH-2] ^  pNextWordToRead[ADDRESS_WIDTH-1]) &
                     (synchro_read_side_1[ADDRESS_WIDTH-1] ~^ pNextWordToRead[ADDRESS_WIDTH-2]);
                     
                     //reg                                 Status_write_side, Status_write_prev_side;
//'Status' latch logic:
/*always @ (Set_Status, Rst_Status, Clear_in) //D Latch w/ Asynchronous Clear & Preset.
    if (Rst_Status | Clear_in)
        Status = 0;  //Going 'Empty'.
    else if (Set_Status)
        Status = 1;  //Going 'Full'.*/
        
always @*            
    if (Rst_Status_read_side | Clear_in)
      Status_read_side = 0;  //Going 'Empty'.
    else if (Set_Status_read_side)
      Status_read_side = 1;  //Going 'Full'.
    else
      Status_read_side = Status_read_prev_side; 
      
always @(posedge RClk)
     Status_read_prev_side <= Status_read_side; 
         
//'Full_out' logic for the writing port:
assign PresetEmpty_read_side = ~Status_read_side & EqualAddresses_read_side;  //'Full' Fifo.

/*always @ (posedge WClk, posedge PresetFull) //D Flip-Flop w/ Asynchronous Preset.
    if (PresetFull)
        Full_out <= 1;
    else
        Full_out <= 0;*/
        
assign Empty_out = PresetEmpty_read_side;
//assign Full_out = PresetFull_write_side;             

            
        
/*Empty_out' logic for the reading port:
assign PresetEmpty_write_side = ~Status_write_side & EqualAddresses_write_side;  //'Empty' Fifo.

always @ (posedge RClk, posedge PresetEmpty)  //D Flip-Flop w/ Asynchronous Preset.
    if (PresetEmpty)
        Empty_out <= 1;
    else
        Empty_out <= 0;*/
//----------------------------------------------------------------------------------------------------------            
endmodule