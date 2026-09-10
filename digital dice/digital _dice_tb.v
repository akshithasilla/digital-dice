`timescale 1ns/1ps

module digital_dice_tb;

    reg clk;
    reg reset;
    reg roll;

    wire [2:0] dice_value;

    // Instantiate DUT
    digital_dice uut (
        .clk(clk),
        .reset(reset),
        .roll(roll),
        .dice_value(dice_value)
    );

    // 10 ns clock
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        reset = 1;
        roll = 0;

        // Reset
        #20;
        reset = 0;

        // Roll 1
        #20;
        roll = 1;
        #10;
        roll = 0;

        // Roll 2
        #30;
        roll = 1;
        #10;
        roll = 0;

        // Roll 3
        #30;
        roll = 1;
        #10;
        roll = 0;

        #30;

        $finish;
    end

    // Display results
    initial begin
        $monitor(
            "Time=%0t | Reset=%b | Roll=%b | Dice=%d",
            $time, reset, roll, dice_value
        );
    end

endmodule
