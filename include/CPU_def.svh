`define DATA_WIDTH	32
`define REG_SIZE	32
`define REG_ADDR_BITS	5
`define IR_MEM_ADDR_BITS	14
`define DATA_MEM_ADDR_BITS	14

`define PC_BITS		32
`define ALUop_BITS	1
`define WB_BITS		6
`define M_BITS		5
`define EX_BITS		10

`define CSR_SEL_BITS	1
`define IMM_BITS		12
`define UIMM_BITS		5
`define CSR_SIZE		4096
`define CSR_ADDR_BITS	12

//------------------instruction field------------------//
`define OPCODE	6:0
`define RD	11:7
`define RS1	19:15
`define RS2	24:20
`define FUNCT3	14:12
`define FUNCT7	31:25
`define IMM	31:20

`define WB_REG_wen 3:0
`define WB_sel 4
`define WB_sign 5

`define M_MEM_wen 4:1
`define M_MEM_ren 0

`define EX_ALUop	1:0
`define EX_ALU_src1	3:2
`define EX_ALU_src2	5:4
`define EX_FUNCT3	8:6
`define EX_FUNCT7	9

//------------------OPCODE------------------//
`define RTYPE	7'b0110011
`define LOAD 	7'b0000011
`define ITYPE	7'b0010011
`define JALR	7'b1100111
`define STYPE	7'b0100011
`define BTYPE	7'b1100011
`define AUIPC	7'b0010111
`define LUI		7'b0110111
`define JTYPE	7'b1101111
`define CSR		7'b1110011

`define NOP		32'h0000_0000
`define SYSCALL	32'hffff_ffff

//------------------CSR------------------//
`define MSTATUS_ADDR	12'h300
`define MIE_ADDR		12'h304
`define MTVEC_ADDR		12'h305
`define MEPC_ADDR		12'h341
`define MIP_ADDR		12'h344
`define MCYCLE_ADDR		12'hB00
`define MINSTRET_ADDR	12'hB02
`define MCYCLEH_ADDR	12'hB80
`define MINSTRETH_ADDR	12'hB82
`define MRET			12'h302
`define WFI				12'h105