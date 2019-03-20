module demo(
	input clk,
	output [9:0] LED
);

`define CLOCK_FREQ 50000000
`define TIME_DELAY 1

integer number1 = 0;
reg [9:0] LEDs;
reg [31:0] count=0;
assign LED = LEDs;

always @(posedge clk) 
begin
	LEDs[0] <= (number1 == 0) ? 1 : 0;
	LEDs[1] <= (number1 == 1) ? 1 : 0;
   	LEDs[2] <= (number1 == 2) ? 1 : 0;
	LEDs[3] <= (number1 == 3) ? 1 : 0;
	LEDs[4] <= (number1 == 4) ? 1 : 0;
	LEDs[5] <= (number1 == 5) ? 1 : 0;
	LEDs[6] <= (number1 == 6) ? 1 : 0;
	LEDs[7] <= (number1 == 7) ? 1 : 0;
	LEDs[8] <= (number1 == 8) ? 1 : 0;
	LEDs[9] <= (number1 == 9) ? 1 : 0;
	
	count <= count + 1;
	
	if (count == `CLOCK_FREQ*`TIME_DELAY)
	begin
		number1 = number1 + 1;
		count <= 0;
	end
	
	if (number1 > 9)
	begin
		number1 = 0;
	end
end

endmodule
