//============================================================================
//  joy2quad
//
//  Take in digital joystick buttons, and try to estimate a quadrature encoder
//
// 
//  This makes an offset wave pattern for each keyboard stroke.  It might
//  be a good extension to change the size of the wave based on how long the joystick
//  is held down. 
//
//  Copyright (c) 2019 Alan Steremberg - alanswx
//
//   
//============================================================================
// digital joystick button to quadrature encoder

module joy2quad
(
	input CLK,
	input [31:0] clkdiv,
	
	input right,
	input left,
	
	output reg [1:0] steer
);


reg [3:0] state = 0;

always @(posedge CLK) begin
	reg [31:0] count = 0;
	if (count >0) count=count-1;
	else begin
		count=clkdiv;
		casex(state)
			0: begin
				 steer = 2'b00;
				 if (left==1)  state = 1;
				 if (right==1) state = 5;
			 end

			1: begin
				 steer=2'b00;
				 state=2;
			  end
			2: begin
				 steer=2'b01;
				 state=3;
			  end
			3: begin
				 steer=2'b11;
				 state=4;
			  end
			4: begin
				 steer=2'b10;
				 state=0;
			  end

			5: begin
				 steer=2'b00;
				 state=6;
			  end
			6: begin
				 steer=2'b10;
				 state=7;
			  end
			7: begin
				 steer=2'b11;
				 state=8;
			  end
			8: begin
				 steer=2'b01;
				 state=0;
			  end
		endcase
	end
end

endmodule