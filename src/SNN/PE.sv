`threshold	0.5

module PE(
	input clk,
	input rst,
	input SPIKE_in0,
	input SPIKE_in1,
	input SPIKE_in2,
	input SPIKE_in3,
	input [7:0] WEIGHT_IN0,
	input [7:0] WEIGHT_IN1,
	input [7:0] WEIGHT_IN2,
	input [7:0] WEIGHT_IN3,
	input EN,
	input layer,
	output SPIKE_OUT
);
	logic [15:0] psum;
	logic [7:0] src0, src1, src2, src3, tmp0, tmp1, ,addresult;
	logic [7:0] presult_l, presult_h;
	
	always_ff@(posedge clk) begin
		if(rst) begin
			psum <= 16'b0;
		end
		else begin
			if(EN[0] && layer == 1'd0) begin
				psum[7:0] <= (spike_out)? psum[7:0] : presult_l;
			end
			else if(EN[1] && layer == 1'd1) begin
				psum[15:8] <= (spike_out)? psum[15:8] : presult_h;
			end
			else begin
				psum[7:0] <= (spike_out && layer == 1'd0)? 8'b0 : psum[7:0];
				psum[7:0] <= (spike_out && layer == 1'd1)? 8'b0 : psum[15:8];
			end
		end
	end
	
	assign src0 = (SPIKE_in0)? WEIGHT_IN0 : 8'b0;
	assign src1 = (SPIKE_in1)? WEIGHT_IN1 : 8'b0;
	assign src2 = (SPIKE_in2)? WEIGHT_IN2 : 8'b0;
	assign src3 = (SPIKE_in3)? WEIGHT_IN3 : 8'b0;
	assign tmp0 = src0 + src1;
	assign tmp1 = src2 + src3;
	assign addresult = tmp0 + tmp1;
	assign presult_l = addresult + psum[7:0];
	assign presult_h = addresult + psum[15:8];
	
	assign spike_out = (layer)? (psum[15:8] >= `threshold) : (psum[7:0] >= `threshold);
endmodule