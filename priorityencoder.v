```verilog
// 4-to-2 Priority Encoder
// Priority: D3 > D2 > D1 > D0

module priority_encoder (
    input  [3:0] D,
    output reg [1:0] Y,
    output reg       Valid
);

    always @(*) begin

        if (D[3]) begin
            Y = 2'b11;
            Valid = 1'b1;
        end
        else if (D[2]) begin
            Y = 2'b10;
            Valid = 1'b1;
        end
        else if (D[1]) begin
            Y = 2'b01;
            Valid = 1'b1;
        end
        else if (D[0]) begin
            Y = 2'b00;
            Valid = 1'b1;
        end
        else begin
            Y = 2'b00;
            Valid = 1'b0;
        end

    end

endmodule
```
