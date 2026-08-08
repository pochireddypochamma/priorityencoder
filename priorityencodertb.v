```verilog
// Testbench for 4-to-2 Priority Encoder

module priority_encoder_tb;

    reg  [3:0] D;
    wire [1:0] Y;
    wire       Valid;

    // Instantiate the Priority Encoder
    priority_encoder uut (
        .D(D),
        .Y(Y),
        .Valid(Valid)
    );

    initial begin

        $display("D    | Y  | Valid");
        $display("----------------");

        // Test 1: No input active
        D = 4'b0000;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 2: D0 active
        D = 4'b0001;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 3: D1 active
        D = 4'b0010;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 4: D2 active
        D = 4'b0100;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 5: D3 active
        D = 4'b1000;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 6: D3 and D2 active
        // D3 has higher priority
        D = 4'b1100;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 7: D2 and D1 active
        // D2 has higher priority
        D = 4'b0110;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        // Test 8: All inputs active
        // D3 has highest priority
        D = 4'b1111;
        #10;
        $display("%b | %b |   %b", D, Y, Valid);

        $finish;

    end

endmodule
```
