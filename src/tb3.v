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
            #5 enc <= 1;
            #11 datac <= 32'd89;
            #13 addrc <= 5'd0;
            #15 datac <= 32'd66;
            #17 addrc <= 5'd1;
            #19 datac <= 32'd76;
            #21 addrc <= 5'd2;
            #23 datac <= 32'd94;
            #25 addrc <= 5'd3;
            #27 datac <= 32'd5;
            #29 addrc <= 5'd4;
            #31 datac <= 32'd83;
            #33 addrc <= 5'd5;
            #35 datac <= 32'd58;
            #37 addrc <= 5'd6;
            #39 datac <= 32'd85;
            #41 addrc <= 5'd7;
            #43 datac <= 32'd50;
            #45 addrc <= 5'd8;
            #47 datac <= 32'd1;
            #49 addrc <= 5'd9;
            #51 datac <= 32'd67;
            #53 addrc <= 5'd10;
            #55 datac <= 32'd54;
            #57 addrc <= 5'd11;
            #59 datac <= 32'd1;
            #61 addrc <= 5'd12;
            #63 datac <= 32'd28;
            #65 addrc <= 5'd13;
            #67 datac <= 32'd2;
            #69 addrc <= 5'd14;
            #71 datac <= 32'd63;
            #73 addrc <= 5'd15;
            #75 datac <= 32'd71;
            #77 addrc <= 5'd16;
            #79 datac <= 32'd43;
            #81 addrc <= 5'd17;
            #83 datac <= 32'd13;
            #85 addrc <= 5'd18;
            #87 datac <= 32'd94;
            #89 addrc <= 5'd19;
            #91 datac <= 32'd52;
            #93 addrc <= 5'd20;
            #95 datac <= 32'd63;
            #97 addrc <= 5'd21;
            #99 datac <= 32'd76;
            #101 addrc <= 5'd22;
            #103 datac <= 32'd83;
            #105 addrc <= 5'd23;
            #107 datac <= 32'd2;
            #109 addrc <= 5'd24;
            #111 datac <= 32'd74;
            #113 addrc <= 5'd25;
            #115 datac <= 32'd94;
            #117 addrc <= 5'd26;
            #119 datac <= 32'd75;
            #121 addrc <= 5'd27;
            #123 datac <= 32'd23;
            #125 addrc <= 5'd28;
            #127 datac <= 32'd26;
            #129 addrc <= 5'd29;
            #131 datac <= 32'd82;
            #133 addrc <= 5'd30;
            #135 datac <= 32'd13;
            #137 addrc <= 5'd31;
            #139 enc <= 0;
            #140 addra <= 5'd0;
            #142 addrb <= 5'd1;
            #144 addra <= 5'd2;
            #146 addrb <= 5'd3;
            #148 addra <= 5'd4;
            #150 addrb <= 5'd5;
            #152 addra <= 5'd6;
            #154 addrb <= 5'd7;
            #156 addra <= 5'd8;
            #158 addrb <= 5'd9;
            #160 addra <= 5'd10;
            #162 addrb <= 5'd11;
            #164 addra <= 5'd12;
            #166 addrb <= 5'd13;
            #168 addra <= 5'd14;
            #170 addrb <= 5'd15;
            #172 addra <= 5'd16;
            #174 addrb <= 5'd17;
            #176 addra <= 5'd18;
            #178 addrb <= 5'd19;
            #180 addra <= 5'd20;
            #182 addrb <= 5'd21;
            #184 addra <= 5'd22;
            #186 addrb <= 5'd23;
            #188 addra <= 5'd24;
            #190 addrb <= 5'd25;
            #192 addra <= 5'd26;
            #194 addrb <= 5'd27;
            #196 addra <= 5'd28;
            #198 addrb <= 5'd29;
            #200 addra <= 5'd30;
            #202 addrb <= 5'd31;
            #204 reset <= 0;
            #205 addra <= 5'd0;
            #207 addrb <= 5'd1;
            #209 addra <= 5'd2;
            #211 addrb <= 5'd3;
            #213 addra <= 5'd4;
            #215 addrb <= 5'd5;
            #217 addra <= 5'd6;
            #219 addrb <= 5'd7;
            #221 addra <= 5'd8;
            #223 addrb <= 5'd9;
            #225 addra <= 5'd10;
            #227 addrb <= 5'd11;
            #229 addra <= 5'd12;
            #231 addrb <= 5'd13;
            #233 addra <= 5'd14;
            #235 addrb <= 5'd15;
            #237 addra <= 5'd16;
            #239 addrb <= 5'd17;
            #241 addra <= 5'd18;
            #243 addrb <= 5'd19;
            #245 addra <= 5'd20;
            #247 addrb <= 5'd21;
            #249 addra <= 5'd22;
            #251 addrb <= 5'd23;
            #253 addra <= 5'd24;
            #255 addrb <= 5'd25;
            #257 addra <= 5'd26;
            #259 addrb <= 5'd27;
            #261 addra <= 5'd28;
            #263 addrb <= 5'd29;
            #265 addra <= 5'd30;
            #267 addrb <= 5'd31;
            #269 enc <= 1;
            #270 addrc <= 5'd20;
            #271 datac <= 32'd10;
            #272 addra <= 5'd20;
            #273 reset <= ~reset;
            #274 reset <= ~reset;
        end

        always #1 clock <= ~clock;

        initial begin
        $dumpfile ("reg_tb1.vcd");
        $dumpvars;
        $display("\t\ttime\tclock\t\tdataa\t\tdatab\tenc\treset\t\tdatac");
        $monitor("%d\t%b\t%d\t%d\t%b\t%b\t%d", $time, clock, dataa, datab, enc, reset, datac);
        #300 $finish;
    end

endmodule
