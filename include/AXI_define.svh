//================================================
// Auther:      Chang-Wan-Yun (Claire)
// Filename:    AXI_define.svh
// Description: AXI defination
// Version:     1.0
//================================================
//`ifndef AXI_DEF
//`define AXI_DEF

`define AXI_ID_BITS 4
`define AXI_IDS_BITS 8
`define AXI_ADDR_BITS 32
`define AXI_LEN_BITS 4
`define AXI_SIZE_BITS 3
`define AXI_DATA_BITS 32
`define AXI_STRB_BITS 4
`define AXI_LEN_ONE 4'h0
`define AXI_SIZE_BYTE 3'b000
`define AXI_SIZE_HWORD 3'b001
`define AXI_SIZE_WORD 3'b010
`define AXI_BURST_INC 2'h1
`define AXI_STRB_WORD 4'b1111
`define AXI_STRB_HWORD 4'b0011
`define AXI_STRB_BYTE 4'b0001
`define AXI_RESP_OKAY 2'h0
`define AXI_RESP_SLVERR 2'h2
`define AXI_RESP_DECERR 2'h3

//slave base address
`define BASE_ADDR_S0 32'h0000_0000 //ROM
`define BASE_ADDR_S1 32'h0001_0000 //IM
`define BASE_ADDR_S2 32'h0002_0000 //DM
`define BASE_ADDR_S3 32'h1000_0000 //Sctrl
`define BASE_ADDR_S4 32'h1001_0000 //WDT
`define BASE_ADDR_S5 32'h2000_0000 //DRAM

`define END_ADDR_S0 32'h0000_3FFF //ROM
`define END_ADDR_S1 32'h0001_FFFF //IM
`define END_ADDR_S2 32'h0002_FFFF //DM
`define END_ADDR_S3 32'h1000_03FF //Sctrl
`define END_ADDR_S4 32'h1001_03FF //WDT
`define END_ADDR_S5 32'h207F_FFFF //DRAM


//outstanding
`define OUTSTANDING 3'd3

//transfer type
`define INCR 2'd0
`define FIXED 2'd1
`define WRAP 2'd2

//response
`define OKAY 2'd0
`define EXOKAY 2'd1
`define SLVERR 2'd2
`define DECERR 2'd3

//master
`define M0 3'd0
`define M1 3'd1
`define MX 3'd7

//slave
`define S0 3'd0
`define S1 3'd1
`define S2 3'd2
`define S3 3'd3
`define S4 3'd4
`define S5 3'd5
`define SX 3'd7

//ID
`define MASTER_ID 3:0

//`endif
