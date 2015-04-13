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
    integer i;

    always @ (negedge reset) begin
        for (i=0; i<31; i=i+1) registers[i] <= 32'b00;
    end

    always @ (posedge clock) begin
        dataa <= registers[addra];
        datab <= registers[addrb];
        if(enc) begin
            registers[addrc] <= datac;
        end
    end

endmodule
