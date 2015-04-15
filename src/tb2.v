module reg_tb;
    reg clock, reset, enc;
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
        clock <= 0;
        reset <= 1;
        addrc <= 5'd31;
        addrb <= 5'd31;
    end

    always #1 clock <= ~clock;
    always #25 reset <= ~reset;
    always #15 enc <= ~enc;

    initial begin
        $dumpfile ("reg_tb1.vcd");
        $dumpvars;
        $display("\t\ttime\tclock\t\tdatab\tenc\treset\t\tdatac");
        $monitor("%d\t%b\t%d\t%b\t%b\t%d", $time, clock, datab, enc, reset, datac);
        #300 $finish;
    end

endmodule
