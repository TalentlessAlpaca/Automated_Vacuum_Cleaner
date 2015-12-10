`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:20 11/17/2015 
// Design Name: 
// Module Name:    MPU_controller 
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
module MPU_controller(
    input clk,
    input clk_frame,
    input rst,
    input en,
    output reg busy,
	 output reg [15:0] AcX,
    output reg [15:0] AcY,
    output reg [15:0] AcZ,
    output reg [15:0] GyX,
    output reg [15:0] GyY,
    output reg [15:0] GyZ,
	 output reg error_i2c,
    output SCL,
	 input SDA_in,
	 output SDA_out,
	 output SDA_oen
    );
	 
	 ////////////////////// MPU-6050 Registers ////////////////////////////////////////
	 localparam MPU_SPRT 		= 8'h19, // Sample Rate											//
					MPU_CONF 		= 8'h1A, // General Configuration							//
					MPU_CONF_GYRO 	= 8'h1B, // Gyroscope Configuration							//
					MPU_CONF_ACC 	= 8'h1C, // Accelerometer Configuration					//
					MPU_ACC_X_H 	= 8'h3B, // Accelerometer Reading							//
					MPU_ACC_X_L		= 8'h3C, // Accelerometer Reading							//
					MPU_ACC_Y_H 	= 8'h3D, // Accelerometer Reading							//
					MPU_ACC_Y_L 	= 8'h3E, // Accelerometer Reading							//
					MPU_ACC_Z_H 	= 8'h3F, // Accelerometer Reading							//
					MPU_ACC_Z_L 	= 8'h40, // Accelerometer Reading							//
					MPU_TMP_h 		= 8'h41, // Temperature Reading								//
					MPU_TMP_L 		= 8'h42, // Temperature Reading								//
					MPU_GYR_X_H 	= 8'h43, // Gyroscope Reading									//
					MPU_GYR_X_L 	= 8'h44, // Gyroscope Reading									//
					MPU_GYR_Y_H 	= 8'h45, // Gyroscope Reading									//
					MPU_GYR_Y_L 	= 8'h46, // Gyroscope Reading									//
					MPU_GYR_Z_H 	= 8'h47, // Gyroscope Reading									//
					MPU_GYR_Z_L 	= 8'h48, // Gyroscope Reading									//
					MPU_PWR_MGM		= 8'h6B, // Powr Management Register						//
					MPU_WAI 			= 8'h75; // Who Am I?											//
	 //////////////////////////////////////////////////////////////////////////////////				
	 ///////////////// MPU-6050 Registers Configuration ///////////////////////////////
	 localparam MPU_SPRT_VAL 		= 8'h00, // SR = GOR/(1+MPU_SPRT_VAL)					//
					MPU_FSYNC_DIS    	= 8'h00, // Disable Frame Synchronization				//
					MPU_LPF_CONF_260 	= 8'h00, // Low Pass Filter: 260Hz -> GOR = 8000	//
					MPU_LPF_CONF_184 	= 8'h01, // Low Pass Filter: 184Hz -> GOR = 1000	//
					MPU_LPF_CONF_94 	= 8'h02, // Low Pass Filter: 094Hz -> GOR = 1000	//
					MPU_LPF_CONF_44 	= 8'h03, // Low Pass Filter: 044Hz -> GOR = 1000	//
					MPU_LPF_CONF_21 	= 8'h04, // Low Pass Filter: 021Hz -> GOR = 1000	//
					MPU_LPF_CONF_10 	= 8'h05, // Low Pass Filter: 010Hz -> GOR = 1000	//
					MPU_LPF_CONF_5 	= 8'h06, // Low Pass Filter: 005Hz -> GOR = 1000	//
					MPU_GYRO_250		= 8'h00, // 250°/S											//
					MPU_GYRO_500		= 8'h08, // 500°/S											//
					MPU_GYRO_1000		= 8'h10, // 1000°/S											//
					MPU_GYRO_2000		= 8'h18, // 2000°/S											//
					MPU_ACCL_2			= 8'h00, // 2g													//
					MPU_ACCL_4			= 8'h08, // 4g													//
					MPU_ACCL_8			= 8'h10, // 8g													//
					MPU_ACCL_16			= 8'h18, // 16g												//
					MPU_RST				= 8'h80, // Resets device									//
					MPU_WUP				= 8'h00, // Wakes up Device								//
					ADDR_W				= 8'b01101000, // Slave Addres, Write mode			//
					ADDR_R				= 8'b01101001; // Generate START condition			//
	 //////////////////////////////////////////////////////////////////////////////////
	 //////////////////////// Internal Registers ///////////////////////
	 reg [7:0] regDir,data,regDir_d,data_d;									//
	 reg [3:0] i;																		//
	 reg stop_d,ack_o_d;
	 ///////////////////////////////////////////////////////////////////
	 ///////////////////// I2C Instantiation /////////////////////////////////
	 reg  en_i2c,start,stop,ack_o,rw;													//
	 reg[7:0] out_byte;																		//
	 wire err,busy_i2c;																		//
	 wire[7:0] in_byte;																		//
	 I2C_Top I2C (																				//
		 .clk(clk), 																			//
		 .clk_frame(clk_frame), 															//
		 .rst(rst), 																			//
		 .en(en_i2c), 																			//
		 .start(start), 																		//
		 .stop(stop), 																			//
		 .ack_o(ack_o), 																		//
		 .rw(rw), 																				//
		 .out_byte(out_byte), 																//
		 .busy(busy_i2c), 																	//
		 .err(err_i2c), 																		//
		 .in_byte(in_byte), 																	//
		 .SCL(SCL), 																			//
		 .SDA_in(SDA_in),																		//
		 .SDA_out(SDA_out),																	//
		 .SDA_oen(SDA_oen)																	//
    );																							//
	 /////////////////////////////////////////////////////////////////////////
	 ///////////////////////// Math Instances ////////////////////////////////
	 reg [15:0] mul1_A;																		//
	 reg [15:0] mul1_B;																		//
	 reg mul1_en;																				//
	 reg mul1_rst;																				//
	 reg mul1_busy;																			//
	 wire [31:0] mul1_R;																		//
	 booth_mult multi_1 (																	//
		 .clk(clk), 																			//
		 .rst(mul1_rst), 																		//
		 .en(mul1_en), 																		//
		 .A(mul1_A), 																			//
		 .B(mul1_B), 																			//
		 .busy(mul1_busy), 																	//
		 .R(mul1_R)																				//
    );																							//
	 reg [15:0] mul2_A;																		//
	 reg [15:0] mul2_B;																		//
	 reg mul2_en;																				//
	 reg mul2_rst;																				//
	 reg mul2_busy;																			//
	 wire [31:0] mul2_R;																		//
	 booth_mult multi_2 (																	//
		 .clk(clk),																				//
		 .rst(mul2_rst),																		//
		 .en(mul2_en),																			//
		 .A(mul2_A),																			//
		 .B(mul2_B),																			//
		 .busy(mul2_busy),																	//
		 .R(mul2_R)																				//
    );																							//
	 
	 
	 /////////////////////////////////////////////////////////////////////////
	 ///////////////////////////// States ////////////////////////////////////
	 reg [4:0] state, pointer, pointer2, pointer3,temp;							//
	 initial begin
		state = 5'h00;
		pointer = 5'h00;
		pointer2 = 5'h00;
		pointer3 = 5'h00;
	 end
	 localparam reset 			= 00, 													//
					set_FSNC			= 01, 													//
					set_LPF			= 02, 													//
					set_res_gyr		= 03, 													//
					set_res_acc		= 04, 													//
					wake_up			= 05, 													//
					idle 				= 06, 													//
					write_accX		= 07, 													//
					read				= 08, 													//
					read_w			= 09,														//
					check1			= 10, 													//
					check2			= 11, 													//
					check3			= 12, 													//
					error				= 13, 													//
					start_cond		= 14, 													//
					send_addresR	= 15, 													//
					send_addresW	= 16, 													//
					send_regAddr	= 17, 													//
					send_byte		= 18, 													//
					read_8_ACK		= 19, 													//
					read_8_NACK		= 20, 													//
					stop_cond		= 21, 													//
					wait_i2c			= 22,														//
					wait_i2c_A		= 23,														//
					wait_i2c_B		= 24;														//
	 /////////////////////////////////////////////////////////////////////////
					
	 
	 always@(posedge clk) begin
		if(rst) begin
			i <= 4'h0;
				
				AcX			<= 16'h0000;
				AcY			<= 16'h0000;
				AcZ			<= 16'h0000;
				GyX			<= 16'h0000;
				GyY			<= 16'h0000;
				GyZ			<= 16'h0000;
				
				state 	<= set_FSNC;
				pointer 	<= reset;
				pointer2 <= reset;
				pointer3 <= reset;
			state <= reset;
		end
		else begin
			case(state)
				reset: begin
					i <= 4'h0;
					
					AcX			<= 16'h0000;
					AcY			<= 16'h0000;
					AcZ			<= 16'h0000;
					GyX			<= 16'h0000;
					GyY			<= 16'h0000;
					GyZ			<= 16'h0000;
					
					state 	<= set_FSNC;
					pointer 	<= reset;
					pointer2 <= reset;
					pointer3 <= reset;
				end
				
				set_FSNC: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					state    <= send_addresW;
					pointer  <= send_regAddr;
					pointer2 <= send_byte;
					pointer3	<= set_LPF;
				end
				
				set_LPF: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					state    <= send_addresW;
					pointer  <= send_regAddr;
					pointer2 <= send_byte;
					pointer3	<= set_res_gyr;
				end
				
				set_res_gyr: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					state    <= send_addresW;
					pointer  <= send_regAddr;
					pointer2 <= send_byte;
					pointer3	<= set_res_acc;
				end
				
				set_res_acc: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					state    <= send_addresW;
					pointer  <= send_regAddr;
					pointer2 <= send_byte;
					pointer3	<= wake_up;
				end
				
				wake_up: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					state    <= send_addresW;
					pointer  <= send_regAddr;
					pointer2 <= send_byte;
					pointer3	<= idle;
				end
				
				idle: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer  <= idle;
					pointer2 <= idle;
					pointer3	<= idle;
					
					if(en)	state    <= write_accX;
					else		state 	<= idle;
				end
				
				write_accX: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer  <= send_regAddr;
					pointer2 <= send_addresR;
					pointer3	<= read;
					
					state    <= send_addresW;
				end
				
				read: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= read_w;
					else state <= read;
				end
				
				read_w: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= read_w;
					else state <= check1;
				end
				
				check1: begin
					i <= i;
					case(i)
						4'h0: begin
							AcX[15:8] 	<= in_byte;
							AcX[7:0]		<= 8'h00;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h1: begin
							AcX[15:8] 	<= AcX[15:8];
							AcX[7:0]		<= in_byte;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h2: begin
							AcX			<= AcX;
							AcY[15:8] 	<= in_byte;
							AcY[7:0]		<= 8'h00;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h3: begin
							AcX			<= AcX;
							AcY[15:8] 	<= AcY[15:8];
							AcY[7:0]		<= in_byte;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h4: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ[15:8] 	<= in_byte;
							AcZ[7:0]		<= 8'h00;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h5: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ[15:8] 	<= AcZ[15:8];
							AcZ[7:0]		<= in_byte;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h6: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h7: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h8: begin
							AcX		 	<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX[15:8] 	<= in_byte;
							GyX[7:0]		<= 8'h00;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'h9: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX[15:8] 	<= GyX[15:8];
							GyX[7:0]		<= in_byte;
							GyY			<= GyY;
							GyZ			<= GyZ;
						end
						4'hA: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY[15:8] 	<= in_byte;
							GyY[7:0]		<= 8'h00;
							GyZ			<= GyZ;
						end
						4'hB: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY[15:8] 	<= GyY[15:8];
							GyY[7:0]		<= in_byte;
							GyZ			<= GyZ;
						end
						4'hC: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ[15:8] 	<= in_byte;
							GyZ[7:0]		<= 8'h00;
						end
						4'hD: begin
							AcX			<= AcX;
							AcY			<= AcY;
							AcZ			<= AcZ;
							GyX			<= GyX;
							GyY			<= GyY;
							GyZ[15:8] 	<= GyZ[15:8];
							GyZ[7:0]		<= in_byte;
						end
						default: begin
							AcX			<= 16'h0000;
							AcY			<= 16'h0000;
							AcZ			<= 16'h0000;
							GyX			<= 16'h0000;
							GyY			<= 16'h0000;
							GyZ[15:8] 	<= 16'h0000;
							GyZ[7:0]		<= 16'h0000;
						end
					endcase
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					state <= check2;
				end
				
				check2: begin
					i <= i+1;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					state <= check3;
				end
				
				check3: begin
					i <= i;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(i == 4'hE) state <= idle;
					else			  state <= read;
				end
				
				error: begin
					i <= 4'h00;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= error;
					pointer2	<= error;
					pointer3	<= error;
					
					state <= error;
				end
				
				send_addresR: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= wait_i2c_A;
					else state <= send_addresR;
				end
				
				send_addresW: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= wait_i2c_A;
					else state <= send_addresW;
				end
				
				send_regAddr: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= wait_i2c_A;
					else state <= send_regAddr;
				end
				
				send_byte: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= wait_i2c_A;
					else state <= send_byte;
				end
				
				wait_i2c_A: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer2;
					pointer2	<= pointer3;
					pointer3	<= pointer;
					
					state <= wait_i2c_B;
				end
				
				wait_i2c_B: begin
					i <= 4'h0;
					
					AcX			<= AcX;
					AcY			<= AcY;
					AcZ			<= AcZ;
					GyX			<= GyX;
					GyY			<= GyY;
					GyZ			<= GyZ;
					
					pointer	<= pointer;
					pointer2	<= pointer2;
					pointer3	<= pointer3;
					
					if(busy_i2c) state <= wait_i2c_B;
					else state <= pointer3;
				end
				
				default: begin
					i <= 4'h0;
					
					AcX			<= 16'h0000;
					AcY			<= 16'h0000;
					AcZ			<= 16'h0000;
					GyX			<= 16'h0000;
					GyY			<= 16'h0000;
					GyZ			<= 16'h0000;
					
					state 	<= error;
					pointer 	<= reset;
					pointer2 <= reset;
					pointer3 <= reset;
				end
			endcase
		end
	 end
	 
	 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	 
	 always@(*) begin
		case(state)
			reset: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			set_FSNC: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_CONF;
				data		<= MPU_FSYNC_DIS;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			set_LPF: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_CONF;
				data		<= MPU_LPF_CONF_184;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			set_res_gyr: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_CONF_GYRO;
				data		<= MPU_GYRO_250;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			set_res_acc: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_CONF_ACC;
				data		<= MPU_ACCL_2;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			wake_up: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_PWR_MGM;
				data		<= MPU_WUP;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			idle: begin
				busy		<= 1'b0;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			write_accX: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= MPU_ACC_X_H;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b00;
				stop		<= 1'b00;
				ack_o		<= 1'b00;
				rw			<= 1'b00;
				out_byte	<= 8'h00;
			end
			
			read: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b1;
				start		<= 1'b0;
				if(i == 4'hD) begin
					stop		<= 1'b1;
					ack_o		<= 1'b1;
				end
				else begin
					stop		<= 1'b0;
					ack_o		<= 1'b0;
				end
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			read_w: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			check1: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			check2: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			check3: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			error: begin
				busy		<= 1'b0;
				error_i2c<= 1'b1;
				
				regDir 	<= 8'h00;
				data		<= 8'h00;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= 1'b0;
				ack_o		<= 1'b0;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			send_addresR: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b1;
				start		<= 1'b1;
				stop		<= 1'b0;
				ack_o		<= 1'b0;
				rw			<= 1'b1;
				out_byte	<= ADDR_R;
			end
			
			send_addresW: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b1;
				start		<= 1'b1;
				stop		<= 1'b0;
				ack_o		<= 1'b0;
				rw			<= 1'b1;
				out_byte	<= ADDR_W;
			end
			
			send_regAddr: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b1;
				start		<= 1'b0;
				stop		<= 1'b0;
				ack_o		<= 1'b0;
				rw			<= 1'b1;
				out_byte	<= regDir;
			end
			
			send_byte: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b1;
				start		<= 1'b0;
				stop		<= 1'b1;
				ack_o		<= 1'b0;
				rw			<= 1'b1;
				out_byte	<= data;
			end
			
			wait_i2c_A: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			wait_i2c_B: begin
				busy		<= 1'b1;
				error_i2c<= 1'b0;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
			
			default: begin
				busy		<= 1'b0;
				error_i2c<= 1'b1;
				
				regDir 	<= regDir_d;
				data		<= data_d;
				
				en_i2c	<= 1'b0;
				start		<= 1'b0;
				stop		<= stop_d;
				ack_o		<= ack_o_d;
				rw			<= 1'b0;
				out_byte	<= 8'h00;
			end
		endcase
	 end
	 
	 always@(negedge clk) begin
		regDir_d <= regDir;
		data_d 	<= data;
		stop_d		<= stop;
		ack_o_d		<= ack_o;
	 end
	 
endmodule
