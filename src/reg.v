module Registers (
    input clock,
    input reset,
    input [4:0] addra,
    output reg [31:0] dataa,
    input [4:0] addrb,
    output reg [31:0] datab,
    input enc,
    input [4:0] addrc,
    input [31:0] datac
);
    
    reg [31:0] registers [31:0];

    //...

endmodule