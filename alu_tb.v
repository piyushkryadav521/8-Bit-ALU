`timescale 1ns / 1ns

module alu8_tb;
    reg [7:0] a;
    reg [7:0] b;
    reg [2:0] op;
    wire [7:0] result;
    wire carry;
    wire zero;
    wire overflow;
    wire negative;

    alu8 uut (
        .a(a),
        .b(b),
        .op(op),
        .result(result),
        .carry(carry),
        .zero(zero),
        .overflow(overflow),
        .negative(negative)
    );

    initial begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu8_tb);

        $display("time\top\ta\tb\tresult\tcarry\tzero\toverflow\tnegative");
        $monitor("%0dns\t%03b\t%02h\t%02h\t%02h\t%b\t%b\t%b\t%b", $time, op, a, b, result, carry, zero, overflow, negative);

        a = 8'h14; b = 8'h22; op = 3'b000; #10; // add
        a = 8'h90; b = 8'h90; op = 3'b000; #10; // add with overflow
        a = 8'h10; b = 8'h05; op = 3'b001; #10; // subtract
        a = 8'h05; b = 8'h10; op = 3'b001; #10; // subtract negative
        a = 8'hF0; b = 8'h0F; op = 3'b010; #10; // and
        a = 8'hF0; b = 8'h0F; op = 3'b011; #10; // or
        a = 8'hAA; b = 8'h55; op = 3'b100; #10; // xor
        a = 8'h0F; b = 8'h00; op = 3'b101; #10; // not
        a = 8'hFF; b = 8'h00; op = 3'b110; #10; // increment with carry
        a = 8'h00; b = 8'h00; op = 3'b111; #10; // decrement with carry

        $finish;
    end

endmodule
