module digital_dice (
    input  wire       clk,
    input  wire       reset,
    input  wire       roll,
    output reg  [2:0] dice_value
);

    // 3-bit pseudo-random counter
    reg [2:0] counter;

    // Counter runs continuously
    always @(posedge clk or posedge reset) begin
        if (reset)
            counter <= 3'b001;
        else if (counter == 3'b110)
            counter <= 3'b001;
        else
            counter <= counter + 1'b1;
    end

    // Generate dice value when roll is pressed
    always @(posedge clk or posedge reset) begin
        if (reset)
            dice_value <= 3'b001;
        else if (roll)
            dice_value <= counter;
    end

endmodule
