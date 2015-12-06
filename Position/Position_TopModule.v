`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:00 11/22/2015 
// Design Name: 
// Module Name:    position_topModule 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module position_topModule(
    input clk,
    input rst,
    input en,
	 output reg busy,
    output reg [31:0] vX,
    output reg [31:0] vY,
    output reg [31:0] pX,
    output reg [31:0] pY,
    output reg [31:0] theta,
	 // To Timer/Counter Module
	 input int_o,
	 output reg[31:0] int_limit,
	 output reg int_en,
	 
	 input [15:0] counter_count,
	 output reg counter_en,
	 output reg counter_rst,
	 
	 input clk_frame,
	 output reg [31:0] clk_freq,
	 
	 // Block RAM
	 input w_ram,
	 input w_ram_ref,
	 input [7:0] w_ram_address,
	 input [31:0] w_ram_data,
	 // I2C Signals
    output SCL,
    output SDA_oen,
    input SDA_in,
    output SDA_out
    );
	 
	 // Angular Velocity Integrator
	 reg theta_integ_en;
	 reg theta_integ_rst;
	 wire [15:0] theta_integ_a;
	 wire theta_integ_busy;
	 wire [31:0] theta_integ_out;
	 // Velocity Integrators
	 reg velX_integ_en;
	 reg velX_integ_rst;
	 wire [15:0] velX_integ_a;
	 wire velX_integ_busy;
	 wire [31:0] velX_integ_out;
	 reg velY_integ_en;
	 reg velY_integ_rst;
	 wire [15:0] velY_integ_a;
	 wire velY_integ_busy;
	 wire [31:0] velY_integ_out;
	 // Position Integrators
	 reg posX_integ_en;
	 reg posX_integ_rst;
	 wire [15:0] posX_integ_a;
	 wire posX_integ_busy;
	 wire [31:0] posX_integ_out;
	 reg posY_integ_en;
	 reg posY_integ_rst;
	 wire [15:0] posY_integ_a;
	 wire posY_integ_busy;
	 wire [31:0] posY_integ_out;
	 // MPU-6050 Communication Module
	 reg mpu_en;
	 reg mpu_rst;
	 wire mpu_busy;
	 wire mpu_error;
	 // Rotation
	 reg rot_rst;
	 reg rot_en;
	 wire rot_busy;
	 wire [15:0] rot_x0;
	 wire [15:0] rot_y0;
	 wire [15:0] rot_z0;
	 wire [31:0] rot_x;
	 wire [31:0] rot_y;
	 wire [31:0] rot_z;
	 
	 MPU_controller mpu(
		.clk(clk),
		.clk_frame(clk_frame),
		.rst(mpu_rst),
		.en(mpu_en),
		
		.busy(mpu_busy),
		.error_i2c(mpu_error),
		.AcX(rot_x0),
		.AcY(rot_y0),
		.AcZ(rot_z0),
		.GyZ(theta_integ_a),
		
		.SCL(SCL),
		.SDA_oen(SDA_oen),
		.SDA_in(SDA_in),
		.SDA_out(SDA_out)
	 );
	 
	 Integrador_theta ttheta(
		.clk(clk),
		.rst(theta_integ_rst),
		.enable(theta_integ_en),
		.a(theta_integ_a),
		.dt(counter_count),
		
		.busy(theta_integ_busy),
		.v(theta_integ_out)
	 );
	 
	 Top_BackBox rotation(
		.clk(clk),
		.rst(rot_rst),
		.AcX(rot_x0),
		.AcY(rot_y0),
		.AcZ(rot_z0),
		.enable(rot_en),
		.W(w_ram),
		.W_ref(w_ram_ref),
		.Address_w(w_ram_address),
		.Data_I(w_ram_data),
		.theta(theta_integ_out),
		
		.busy(rot_busy),
		.XAc(rot_x),
		.YAc(rot_y),
		.ZAc(rot_z)
	 );
	 
	 Integradorv2 velX(
		.clk(clk),
		.rst(velX_integ_rst),
		.enable(velX_integ_en),
		.a(rot_x),
		.dt(counter_count),
		
		.busy(velX_integ_busy),
		.v(velX_integ_out)
	 );
	 
	 Integradorv2 velY(
		.clk(clk),
		.rst(velY_integ_rst),
		.enable(velY_integ_en),
		.a(rot_y),
		.dt(counter_count),
		
		.busy(velY_integ_busy),
		.v(velY_integ_out)
	 );
	 
	 Integradorv2 posX(
		.clk(clk),
		.rst(posX_integ_rst),
		.enable(posX_integ_en),
		.a(velX_integ_out),
		.dt(counter_count),
		
		.busy(posX_integ_busy),
		.v(posX_integ_out)
	 );
	 
	 Integradorv2 posY(
		.clk(clk),
		.rst(posY_integ_rst),
		.enable(posY_integ_en),
		.a(velY_integ_out),
		.dt(counter_count),
		
		.busy(posY_integ_busy),
		.v(posY_integ_out)
	 );
	 
	 reg [15:0] vX_d;
	 reg [15:0] vY_d;
	 reg [15:0] pX_d;
	 reg [15:0] pY_d;
	 reg [15:0] theta_d;
	 
	 localparam I2C_FREQ = 32'd31;
	 
	 reg[3:0] state;
	 initial state = 0;
	 localparam reset 		 = 0,
					wait4init 	 = 1,
					idle			 = 2,
					i2c_start	 = 3,
					i2c_wait		 = 4,
					intg_theta	 = 5,
					intg_theta_w = 6,
					rotate		 = 7,
					rotate_w		 = 8,
					intg_vel		 = 9,
					intg_vel_w	 = 10,
					integ_pos	 = 11,
					integ_pos_w	 = 12,
					end_s			 = 13;
					
	 always@(posedge clk) begin
		if(rst)	state <= reset;
		else begin
			case(state)
				reset: begin
					if (int_o) state <= wait4init;
					else state <= reset;
				end
				
				wait4init: begin
					if(mpu_busy) state <= wait4init;
					else state <= idle;
				end
				
				idle: begin
					if(en&int_o) state <= i2c_start;
					else state <= idle;
				end
				
				i2c_start: begin
					if(mpu_busy) state <= i2c_wait;
					else state <= i2c_start;
				end
				
				i2c_wait: begin
					if(mpu_busy) state <= i2c_wait;
					else state <= intg_theta;
				end
				
				intg_theta: begin
					if(theta_integ_busy) state <= intg_theta_w;
					else state <= intg_theta;
				end
				
				intg_theta_w: begin
					if(theta_integ_busy | w_ram | w_ram_ref) state <= intg_theta_w;
					else state <= rotate;
				end
				
				rotate: begin
					if(rot_busy) state <= rotate;
					else state <= rotate_w;
				end
				
				rotate_w: begin
					if(rot_busy) state <= rotate_w;
					else state <= intg_vel;
				end
				
				intg_vel: begin
					if(velX_integ_busy & velY_integ_busy) state <= intg_vel;
					else state <= intg_vel_w;
				end
				
				intg_vel_w: begin
					if(velX_integ_busy | velY_integ_busy) state <= intg_vel_w;
					else state <= integ_pos;
				end
				
				integ_pos: begin
					if(posX_integ_busy & posY_integ_busy) state <= integ_pos;
					else state <= integ_pos_w;
				end
				
				integ_pos_w: begin
					if(posX_integ_busy | posY_integ_busy) state <= integ_pos_w;
					else state <= end_s;
				end
				
				end_s: state <= idle;
				
				default: state <= reset;
			endcase
		end
	 end
	 
	 always@(negedge clk) begin
		vX_d <= vX;
		vY_d <= vY;
		pX_d <= pX;
		pY_d <= pY;
		theta_d <= theta;
	 end
	 
	 always@(*) begin
		case(state)
			reset: begin
				// MPU
				mpu_rst 	<= 1;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 1;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 1;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 1;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 1;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 1;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 1;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= 0;
				vY <= 0;
				pX <= 0;
				pY <= 0;
				theta <= 0;
				 // Timer/Counter Module
				int_limit 	<= 32'h05F5E100;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 1;
				clk_freq		<= I2C_FREQ;
			end
			
			wait4init: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= 0;
				vY <= 0;
				pX <= 0;
				pY <= 0;
				theta <= 0;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 0;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			idle: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 0;
				vX <= velX_integ_out;
				vY <= velY_integ_out;
				pX <= posX_integ_out;
				pY <= posY_integ_out;
				theta <= theta_integ_out;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 1;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			i2c_start: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 1;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 0;
				counter_en	<= 1;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			i2c_wait: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 0;
				counter_en	<= 1;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			intg_theta: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 1;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			intg_theta_w: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			rotate: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 1;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			rotate_w: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			intg_vel: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 1;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 1;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			intg_vel_w: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			integ_pos: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 1;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 1;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			integ_pos_w: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
			end_s: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= vX_d;
				vY <= vY_d;
				pX <= pX_d;
				pY <= pY_d;
				theta <= theta_d;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 1;
				clk_freq		<= I2C_FREQ;
			end
			
			default: begin
				// MPU
				mpu_rst 	<= 0;
				mpu_en 	<= 0;
				// Integ Theta
				theta_integ_rst 	<= 0;
				theta_integ_en		<= 0;
				// Rotation
				rot_rst 	<= 0;
				rot_en 	<= 0;
				// Integs Vel
				velX_integ_rst <= 0;
				velX_integ_en 	<= 0;
				velY_integ_rst <= 0;
				velY_integ_en 	<= 0;
				// Integs Pos
				posX_integ_rst <= 0;
				posX_integ_en 	<= 0;
				posY_integ_rst <= 0;
				posY_integ_en 	<= 0;
				// Outputs
				 // Processor
				busy <= 1;
				vX <= 0;
				vY <= 0;
				pX <= 0;
				pY <= 0;
				theta <= 0;
				 // Timer/Counter Module
				int_limit 	<= 32'h000186A0;
				int_en	 	<= 1;
				counter_en	<= 0;
				counter_rst	<= 0;
				clk_freq		<= I2C_FREQ;
			end
			
		endcase
	 end
	 
endmodule
