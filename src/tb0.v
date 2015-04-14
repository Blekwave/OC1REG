module reg_tb;
    reg clock, reset;
    reg [4:0] addra, addrb, addrc;
    wire [31:0] dataa, datab;
    reg [31:0] datac;

    Registers U0 (
        .clock (clock),
        .reset (reset),
        .addra (addra),
        .dataa (dataa),
        .addrb (addrb),
        .datab (datab),
        .enc (enc),
        .addrc (addrc),
        .datac (datac)
    );

    initial begin
        clock = 0;
        reset = 0;
    end

    always begin
        #5 clock = ~clock;
    end

    initial begin
        $dumpfile ("reg_tb1.vcd");
        $dumpvars;
        $display("\ttime,\tclock\treset");
        $monitor("%d,\t%b,\t%b", $time, clock, reset);
        #100 $finish;
    end

endmodule
