// 8-bit ALU
// ops:
// 000 = add
// 001 = subtract
// 010 = and
// 011 = or
// 100 = xor
// 101 = not a
// 110 = increment a
// 111 = decrement a

module alu8 (
    input  wire [7:0] a,
    input  wire [7:0] b,
    input  wire [2:0] op,
    output reg  [7:0] result,
    output reg  carry,
    output reg  zero,
    output reg  overflow,
    output reg  negative
);

    reg [8:0] add_sub;
    reg [7:0] logic_res;

    always @(*) begin
        carry     = 1'b0;
        overflow  = 1'b0;
        logic_res = 8'h00;

        case (op)
            3'b000: begin // addition
                add_sub = {1'b0, a} + {1'b0, b};
                result  = add_sub[7:0];
                carry   = add_sub[8];
                overflow = (a[7] == b[7]) && (result[7] != a[7]);
            end

            3'b001: begin // subtraction
                add_sub = {1'b0, a} - {1'b0, b};
                result  = add_sub[7:0];
                carry   = ~add_sub[8];
                overflow = (a[7] != b[7]) && (result[7] != a[7]);
            end

            3'b010: begin // and
                logic_res = a & b;
                result = logic_res;
            end

            3'b011: begin // or
                logic_res = a | b;
                result = logic_res;
            end

            3'b100: begin // xor
                logic_res = a ^ b;
                result = logic_res;
            end

            3'b101: begin // not a
                result = ~a;
            end

            3'b110: begin // increment a
                result = a + 1;
                carry  = (a == 8'hFF);
                overflow = (a == 8'h7F);
            end

            3'b111: begin // decrement a
                result = a - 1;
                carry  = (a == 8'h00);
                overflow = (a == 8'h80);
            end

            default: begin
                result = 8'h00;
            end
        endcase

        zero     = (result == 8'h00);
        negative = result[7];
    end

endmodule
