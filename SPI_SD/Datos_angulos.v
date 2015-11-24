`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:39:28 11/24/2015 
// Design Name: 
// Module Name:    Datos_angulos 
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
module datos_angulos(
	input [8:0] angulo,
	input clk,
	output reg [9:0] sen_o,
	output reg [9:0] cos_o
    );
	
	reg [9:0] sen [0:360]; 
	reg [9:0] cos [0:360];
initial begin
// los senos y cosenos de los angulos estan multiplicados por 100 para no usar decimales 
sen	[0]	=	10'b  0  ;
sen	[1]	=	10'b  1  ;
sen	[2]	=	10'b  11  ;
sen	[3]	=	10'b  101	;
sen	[4]	=	10'b  110	;
sen	[5]	=	10'b  1000	;
sen	[6]	=	10'b  1010	;
sen	[7]	=	10'b  1100	;
sen	[8]	=	10'b  1101	;
sen	[9]	=	10'b  1111	;
sen	[10]	=	10'b	10001	;
sen	[11]	=	10'b	10011	;
sen	[12]	=	10'b	10100	;
sen	[13]	=	10'b	10110	;
sen	[14]	=	10'b	11000	;
sen	[15]	=	10'b	11001	;
sen	[16]	=	10'b	11011	;
sen	[17]	=	10'b	11101	;
sen	[18]	=	10'b	11110	;
sen	[19]	=	10'b	100000	;
sen	[20]	=	10'b	100010	;
sen	[21]	=	10'b	100011	;
sen	[22]	=	10'b	100101	;
sen	[23]	=	10'b	100111	;
sen	[24]	=	10'b	101000	;
sen	[25]	=	10'b	101010	;
sen	[26]	=	10'b	101011	;
sen	[27]	=	10'b	101101	;
sen	[28]	=	10'b	101110	;
sen	[29]	=	10'b	110000	;
sen	[30]	=	10'b	110001	;
sen	[31]	=	10'b	110011	;
sen	[32]	=	10'b	110100	;
sen	[33]	=	10'b	110110	;
sen	[34]	=	10'b	110111	;
sen	[35]	=	10'b	111001	;
sen	[36]	=	10'b	111010	;
sen	[37]	=	10'b	111100	;
sen	[38]	=	10'b	111101	;
sen	[39]	=	10'b	111110	;
sen	[40]	=	10'b	1000000	;
sen	[41]	=	10'b	1000001	;
sen	[42]	=	10'b	1000010	;
sen	[43]	=	10'b	1000100	;
sen	[44]	=	10'b	1000101	;
sen	[45]	=	10'b	1000110	;
sen	[46]	=	10'b	1000111	;
sen	[47]	=	10'b	1001001	;
sen	[48]	=	10'b	1001010	;
sen	[49]	=	10'b	1001011	;
sen	[50]	=	10'b	1001100	;
sen	[51]	=	10'b	1001101	;
sen	[52]	=	10'b	1001110	;
sen	[53]	=	10'b	1001111	;
sen	[54]	=	10'b	1010000	;
sen	[55]	=	10'b	1010001	;
sen	[56]	=	10'b	1010010	;
sen	[57]	=	10'b	1010011	;
sen	[58]	=	10'b	1010100	;
sen	[59]	=	10'b	1010101	;
sen	[60]	=	10'b	1010110	;
sen	[61]	=	10'b	1010111	;
sen	[62]	=	10'b	1011000	;
sen	[63]	=	10'b	1011001	;
sen	[64]	=	10'b	1011001	;
sen	[65]	=	10'b	1011010	;
sen	[66]	=	10'b	1011011	;
sen	[67]	=	10'b	1011100	;
sen	[68]	=	10'b	1011100	;
sen	[69]	=	10'b	1011101	;
sen	[70]	=	10'b	1011101	;
sen	[71]	=	10'b	1011110	;
sen	[72]	=	10'b	1011111	;
sen	[73]	=	10'b	1011111	;
sen	[74]	=	10'b	1100000	;
sen	[75]	=	10'b	1100000	;
sen	[76]	=	10'b	1100001	;
sen	[77]	=	10'b	1100001	;
sen	[78]	=	10'b	1100001	;
sen	[79]	=	10'b	1100010	;
sen	[80]	=	10'b	1100010	;
sen	[81]	=	10'b	1100010	;
sen	[82]	=	10'b	1100011	;
sen	[83]	=	10'b	1100011	;
sen	[84]	=	10'b	1100011	;
sen	[85]	=	10'b	1100011	;
sen	[86]	=	10'b	1100011	;
sen	[87]	=	10'b	1100011	;
sen	[88]	=	10'b	1100011	;
sen	[89]	=	10'b	1100011	;
sen	[90]	=	10'b	1100100	;
sen	[91]	=	10'b	1100011	;
sen	[92]	=	10'b	1100011	;
sen	[93]	=	10'b	1100011	;
sen	[94]	=	10'b	1100011	;
sen	[95]	=	10'b	1100011	;
sen	[96]	=	10'b	1100011	;
sen	[97]	=	10'b	1100011	;
sen	[98]	=	10'b	1100011	;
sen	[99]	=	10'b	1100010	;
sen	[100]	=	10'b	1100010	;
sen	[101]	=	10'b	1100010	;
sen	[102]	=	10'b	1100001	;
sen	[103]	=	10'b	1100001	;
sen	[104]	=	10'b	1100001	;
sen	[105]	=	10'b	1100000	;
sen	[106]	=	10'b	1100000	;
sen	[107]	=	10'b	1011111	;
sen	[108]	=	10'b	1011111	;
sen	[109]	=	10'b	1011110	;
sen	[110]	=	10'b	1011101	;
sen	[111]	=	10'b	1011101	;
sen	[112]	=	10'b	1011100	;
sen	[113]	=	10'b	1011100	;
sen	[114]	=	10'b	1011011	;
sen	[115]	=	10'b	1011010	;
sen	[116]	=	10'b	1011001	;
sen	[117]	=	10'b	1011001	;
sen	[118]	=	10'b	1011000	;
sen	[119]	=	10'b	1010111	;
sen	[120]	=	10'b	1010110	;
sen	[121]	=	10'b	1010101	;
sen	[122]	=	10'b	1010100	;
sen	[123]	=	10'b	1010011	;
sen	[124]	=	10'b	1010010	;
sen	[125]	=	10'b	1010001	;
sen	[126]	=	10'b	1010000	;
sen	[127]	=	10'b	1001111	;
sen	[128]	=	10'b	1001110	;
sen	[129]	=	10'b	1001101	;
sen	[130]	=	10'b	1001100	;
sen	[131]	=	10'b	1001011	;
sen	[132]	=	10'b	1001010	;
sen	[133]	=	10'b	1001001	;
sen	[134]	=	10'b	1000111	;
sen	[135]	=	10'b	1000110	;
sen	[136]	=	10'b	1000101	;
sen	[137]	=	10'b	1000100	;
sen	[138]	=	10'b	1000010	;
sen	[139]	=	10'b	1000001	;
sen	[140]	=	10'b	1000000	;
sen	[141]	=	10'b	111110	;
sen	[142]	=	10'b	111101	;
sen	[143]	=	10'b	111100	;
sen	[144]	=	10'b	111010	;
sen	[145]	=	10'b	111001	;
sen	[146]	=	10'b	110111	;
sen	[147]	=	10'b	110110	;
sen	[148]	=	10'b	110100	;
sen	[149]	=	10'b	110011	;
sen	[150]	=	10'b	110010	;
sen	[151]	=	10'b	110000	;
sen	[152]	=	10'b	101110	;
sen	[153]	=	10'b	101101	;
sen	[154]	=	10'b	101011	;
sen	[155]	=	10'b	101010	;
sen	[156]	=	10'b	101000	;
sen	[157]	=	10'b	100111	;
sen	[158]	=	10'b	100101	;
sen	[159]	=	10'b	100011	;
sen	[160]	=	10'b	100010	;
sen	[161]	=	10'b	100000	;
sen	[162]	=	10'b	11110	;
sen	[163]	=	10'b	11101	;
sen	[164]	=	10'b	11011	;
sen	[165]	=	10'b	11001	;
sen	[166]	=	10'b	11000	;
sen	[167]	=	10'b	10110	;
sen	[168]	=	10'b	10100	;
sen	[169]	=	10'b	10011	;
sen	[170]	=	10'b	10001	;
sen	[171]	=	10'b	1111	;
sen	[172]	=	10'b	1101	;
sen	[173]	=	10'b	1100	;
sen	[174]	=	10'b	1010	;
sen	[175]	=	10'b	1000	;
sen	[176]	=	10'b	110	;
sen	[177]	=	10'b	101	;
sen	[178]	=	10'b	11	;
sen	[179]	=	10'b	1	;
sen	[180]	=	10'b	0	;
sen	[181]	=	10'b	1111111110	;
sen	[182]	=	10'b	1111111100	;
sen	[183]	=	10'b	1111111010	;
sen	[184]	=	10'b	1111111001	;
sen	[185]	=	10'b	1111110111	;
sen	[186]	=	10'b	1111110101	;
sen	[187]	=	10'b	1111110011	;
sen	[188]	=	10'b	1111110010	;
sen	[189]	=	10'b	1111110000	;
sen	[190]	=	10'b	1111101110	;
sen	[191]	=	10'b	1111101100	;
sen	[192]	=	10'b	1111101011	;
sen	[193]	=	10'b	1111101001	;
sen	[194]	=	10'b	1111100111	;
sen	[195]	=	10'b	1111100110	;
sen	[196]	=	10'b	1111100100	;
sen	[197]	=	10'b	1111100010	;
sen	[198]	=	10'b	1111100001	;
sen	[199]	=	10'b	1111011111	;
sen	[200]	=	10'b	1111011101	;
sen	[201]	=	10'b	1111011100	;
sen	[202]	=	10'b	1111011010	;
sen	[203]	=	10'b	1111011000	;
sen	[204]	=	10'b	1111010111	;
sen	[205]	=	10'b	1111010101	;
sen	[206]	=	10'b	1111010100	;
sen	[207]	=	10'b	1111010010	;
sen	[208]	=	10'b	1111010001	;
sen	[209]	=	10'b	1111001111	;
sen	[210]	=	10'b	1111001110	;
sen	[211]	=	10'b	1111001100	;
sen	[212]	=	10'b	1111001011	;
sen	[213]	=	10'b	1111001001	;
sen	[214]	=	10'b	1111001000	;
sen	[215]	=	10'b	1111000110	;
sen	[216]	=	10'b	1111000101	;
sen	[217]	=	10'b	1111000011	;
sen	[218]	=	10'b	1111000010	;
sen	[219]	=	10'b	1111000001	;
sen	[220]	=	10'b	1110111111	;
sen	[221]	=	10'b	1110111110	;
sen	[222]	=	10'b	1110111101	;
sen	[223]	=	10'b	1110111011	;
sen	[224]	=	10'b	1110111010	;
sen	[225]	=	10'b	1110111001	;
sen	[226]	=	10'b	1110111000	;
sen	[227]	=	10'b	1110110110	;
sen	[228]	=	10'b	1110110101	;
sen	[229]	=	10'b	1110110100	;
sen	[230]	=	10'b	1110110011	;
sen	[231]	=	10'b	1110110010	;
sen	[232]	=	10'b	1110110001	;
sen	[233]	=	10'b	1110110000	;
sen	[234]	=	10'b	1110101111	;
sen	[235]	=	10'b	1110101110	;
sen	[236]	=	10'b	1110101101	;
sen	[237]	=	10'b	1110101100	;
sen	[238]	=	10'b	1110101011	;
sen	[239]	=	10'b	1110101010	;
sen	[240]	=	10'b	1110101001	;
sen	[241]	=	10'b	1110101000	;
sen	[242]	=	10'b	1110100111	;
sen	[243]	=	10'b	1110100110	;
sen	[244]	=	10'b	1110100110	;
sen	[245]	=	10'b	1110100101	;
sen	[246]	=	10'b	1110100100	;
sen	[247]	=	10'b	1110100011	;
sen	[248]	=	10'b	1110100011	;
sen	[249]	=	10'b	1110100010	;
sen	[250]	=	10'b	1110100010	;
sen	[251]	=	10'b	1110100001	;
sen	[252]	=	10'b	1110100000	;
sen	[253]	=	10'b	1110100000	;
sen	[254]	=	10'b	1110011111	;
sen	[255]	=	10'b	1110011111	;
sen	[256]	=	10'b	1110011110	;
sen	[257]	=	10'b	1110011110	;
sen	[258]	=	10'b	1110011110	;
sen	[259]	=	10'b	1110011101	;
sen	[260]	=	10'b	1110011101	;
sen	[261]	=	10'b	1110011101	;
sen	[262]	=	10'b	1110011100	;
sen	[263]	=	10'b	1110011100	;
sen	[264]	=	10'b	1110011100	;
sen	[265]	=	10'b	1110011100	;
sen	[266]	=	10'b	1110011100	;
sen	[267]	=	10'b	1110011100	;
sen	[268]	=	10'b	1110011100	;
sen	[269]	=	10'b	1110011100	;
sen	[270]	=	10'b	1110011100	;
sen	[271]	=	10'b	1110011100	;
sen	[272]	=	10'b	1110011100	;
sen	[273]	=	10'b	1110011100	;
sen	[274]	=	10'b	1110011100	;
sen	[275]	=	10'b	1110011100	;
sen	[276]	=	10'b	1110011100	;
sen	[277]	=	10'b	1110011100	;
sen	[278]	=	10'b	1110011100	;
sen	[279]	=	10'b	1110011101	;
sen	[280]	=	10'b	1110011101	;
sen	[281]	=	10'b	1110011101	;
sen	[282]	=	10'b	1110011110	;
sen	[283]	=	10'b	1110011110	;
sen	[284]	=	10'b	1110011110	;
sen	[285]	=	10'b	1110011111	;
sen	[286]	=	10'b	1110011111	;
sen	[287]	=	10'b	1110100000	;
sen	[288]	=	10'b	1110100000	;
sen	[289]	=	10'b	1110100001	;
sen	[290]	=	10'b	1110100010	;
sen	[291]	=	10'b	1110100010	;
sen	[292]	=	10'b	1110100011	;
sen	[293]	=	10'b	1110100011	;
sen	[294]	=	10'b	1110100100	;
sen	[295]	=	10'b	1110100101	;
sen	[296]	=	10'b	1110100110	;
sen	[297]	=	10'b	1110100110	;
sen	[298]	=	10'b	1110100111	;
sen	[299]	=	10'b	1110101000	;
sen	[300]	=	10'b	1110101001	;
sen	[301]	=	10'b	1110101010	;
sen	[302]	=	10'b	1110101011	;
sen	[303]	=	10'b	1110101100	;
sen	[304]	=	10'b	1110101101	;
sen	[305]	=	10'b	1110101110	;
sen	[306]	=	10'b	1110101111	;
sen	[307]	=	10'b	1110110000	;
sen	[308]	=	10'b	1110110001	;
sen	[309]	=	10'b	1110110010	;
sen	[310]	=	10'b	1110110011	;
sen	[311]	=	10'b	1110110100	;
sen	[312]	=	10'b	1110110101	;
sen	[313]	=	10'b	1110110110	;
sen	[314]	=	10'b	1110111000	;
sen	[315]	=	10'b	1110111001	;
sen	[316]	=	10'b	1110111010	;
sen	[317]	=	10'b	1110111011	;
sen	[318]	=	10'b	1110111101	;
sen	[319]	=	10'b	1110111110	;
sen	[320]	=	10'b	1110111111	;
sen	[321]	=	10'b	1111000001	;
sen	[322]	=	10'b	1111000010	;
sen	[323]	=	10'b	1111000011	;
sen	[324]	=	10'b	1111000101	;
sen	[325]	=	10'b	1111000110	;
sen	[326]	=	10'b	1111001000	;
sen	[327]	=	10'b	1111001001	;
sen	[328]	=	10'b	1111001011	;
sen	[329]	=	10'b	1111001100	;
sen	[330]	=	10'b	1111001101	;
sen	[331]	=	10'b	1111001111	;
sen	[332]	=	10'b	1111010001	;
sen	[333]	=	10'b	1111010010	;
sen	[334]	=	10'b	1111010100	;
sen	[335]	=	10'b	1111010101	;
sen	[336]	=	10'b	1111010111	;
sen	[337]	=	10'b	1111011000	;
sen	[338]	=	10'b	1111011010	;
sen	[339]	=	10'b	1111011100	;
sen	[340]	=	10'b	1111011101	;
sen	[341]	=	10'b	1111011111	;
sen	[342]	=	10'b	1111100001	;
sen	[343]	=	10'b	1111100010	;
sen	[344]	=	10'b	1111100100	;
sen	[345]	=	10'b	1111100110	;
sen	[346]	=	10'b	1111100111	;
sen	[347]	=	10'b	1111101001	;
sen	[348]	=	10'b	1111101011	;
sen	[349]	=	10'b	1111101100	;
sen	[350]	=	10'b	1111101110	;
sen	[351]	=	10'b	1111110000	;
sen	[352]	=	10'b	1111110010	;
sen	[353]	=	10'b	1111110011	;
sen	[354]	=	10'b	1111110101	;
sen	[355]	=	10'b	1111110111	;
sen	[356]	=	10'b	1111111001	;
sen	[357]	=	10'b	1111111010	;
sen	[358]	=	10'b	1111111100	;
sen	[359]	=	10'b	1111111110	;
sen	[360]	=	10'b	0	;

cos	[0]	=	10'b	1100100	;
cos	[1]	=	10'b	1100011	;
cos	[2]	=	10'b	1100011	;
cos	[3]	=	10'b	1100011	;
cos	[4]	=	10'b	1100011	;
cos	[5]	=	10'b	1100011	;
cos	[6]	=	10'b	1100011	;
cos	[7]	=	10'b	1100011	;
cos	[8]	=	10'b	1100011	;
cos	[9]	=	10'b	1100010	;
cos	[10]	=	10'b	1100010	;
cos	[11]	=	10'b	1100010	;
cos	[12]	=	10'b	1100001	;
cos	[13]	=	10'b	1100001	;
cos	[14]	=	10'b	1100001	;
cos	[15]	=	10'b	1100000	;
cos	[16]	=	10'b	1100000	;
cos	[17]	=	10'b	1011111	;
cos	[18]	=	10'b	1011111	;
cos	[19]	=	10'b	1011110	;
cos	[20]	=	10'b	1011101	;
cos	[21]	=	10'b	1011101	;
cos	[22]	=	10'b	1011100	;
cos	[23]	=	10'b	1011100	;
cos	[24]	=	10'b	1011011	;
cos	[25]	=	10'b	1011010	;
cos	[26]	=	10'b	1011001	;
cos	[27]	=	10'b	1011001	;
cos	[28]	=	10'b	1011000	;
cos	[29]	=	10'b	1010111	;
cos	[30]	=	10'b	1010110	;
cos	[31]	=	10'b	1010101	;
cos	[32]	=	10'b	1010100	;
cos	[33]	=	10'b	1010011	;
cos	[34]	=	10'b	1010010	;
cos	[35]	=	10'b	1010001	;
cos	[36]	=	10'b	1010000	;
cos	[37]	=	10'b	1001111	;
cos	[38]	=	10'b	1001110	;
cos	[39]	=	10'b	1001101	;
cos	[40]	=	10'b	1001100	;
cos	[41]	=	10'b	1001011	;
cos	[42]	=	10'b	1001010	;
cos	[43]	=	10'b	1001001	;
cos	[44]	=	10'b	1000111	;
cos	[45]	=	10'b	1000110	;
cos	[46]	=	10'b	1000101	;
cos	[47]	=	10'b	1000100	;
cos	[48]	=	10'b	1000010	;
cos	[49]	=	10'b	1000001	;
cos	[50]	=	10'b	1000000	;
cos	[51]	=	10'b	111110	;
cos	[52]	=	10'b	111101	;
cos	[53]	=	10'b	111100	;
cos	[54]	=	10'b	111010	;
cos	[55]	=	10'b	111001	;
cos	[56]	=	10'b	110111	;
cos	[57]	=	10'b	110110	;
cos	[58]	=	10'b	110100	;
cos	[59]	=	10'b	110011	;
cos	[60]	=	10'b	110010	;
cos	[61]	=	10'b	110000	;
cos	[62]	=	10'b	101110	;
cos	[63]	=	10'b	101101	;
cos	[64]	=	10'b	101011	;
cos	[65]	=	10'b	101010	;
cos	[66]	=	10'b	101000	;
cos	[67]	=	10'b	100111	;
cos	[68]	=	10'b	100101	;
cos	[69]	=	10'b	100011	;
cos	[70]	=	10'b	100010	;
cos	[71]	=	10'b	100000	;
cos	[72]	=	10'b	11110	;
cos	[73]	=	10'b	11101	;
cos	[74]	=	10'b	11011	;
cos	[75]	=	10'b	11001	;
cos	[76]	=	10'b	11000	;
cos	[77]	=	10'b	10110	;
cos	[78]	=	10'b	10100	;
cos	[79]	=	10'b	10011	;
cos	[80]	=	10'b	10001	;
cos	[81]	=	10'b	1111	;
cos	[82]	=	10'b	1101	;
cos	[83]	=	10'b	1100	;
cos	[84]	=	10'b	1010	;
cos	[85]	=	10'b	1000	;
cos	[86]	=	10'b	110	;
cos	[87]	=	10'b	101	;
cos	[88]	=	10'b	11	;
cos	[89]	=	10'b	1	;
cos	[90]	=	10'b	0	;
cos	[91]	=	10'b	1111111110	;
cos	[92]	=	10'b	1111111100	;
cos	[93]	=	10'b	1111111010	;
cos	[94]	=	10'b	1111111001	;
cos	[95]	=	10'b	1111110111	;
cos	[96]	=	10'b	1111110101	;
cos	[97]	=	10'b	1111110011	;
cos	[98]	=	10'b	1111110010	;
cos	[99]	=	10'b	1111110000	;
cos	[100]	=	10'b	1111101110	;
cos	[101]	=	10'b	1111101100	;
cos	[102]	=	10'b	1111101011	;
cos	[103]	=	10'b	1111101001	;
cos	[104]	=	10'b	1111100111	;
cos	[105]	=	10'b	1111100110	;
cos	[106]	=	10'b	1111100100	;
cos	[107]	=	10'b	1111100010	;
cos	[108]	=	10'b	1111100001	;
cos	[109]	=	10'b	1111011111	;
cos	[110]	=	10'b	1111011101	;
cos	[111]	=	10'b	1111011100	;
cos	[112]	=	10'b	1111011010	;
cos	[113]	=	10'b	1111011000	;
cos	[114]	=	10'b	1111010111	;
cos	[115]	=	10'b	1111010101	;
cos	[116]	=	10'b	1111010100	;
cos	[117]	=	10'b	1111010010	;
cos	[118]	=	10'b	1111010001	;
cos	[119]	=	10'b	1111001111	;
cos	[120]	=	10'b	1111001110	;
cos	[121]	=	10'b	1111001100	;
cos	[122]	=	10'b	1111001011	;
cos	[123]	=	10'b	1111001001	;
cos	[124]	=	10'b	1111001000	;
cos	[125]	=	10'b	1111000110	;
cos	[126]	=	10'b	1111000101	;
cos	[127]	=	10'b	1111000011	;
cos	[128]	=	10'b	1111000010	;
cos	[129]	=	10'b	1111000001	;
cos	[130]	=	10'b	1110111111	;
cos	[131]	=	10'b	1110111110	;
cos	[132]	=	10'b	1110111101	;
cos	[133]	=	10'b	1110111011	;
cos	[134]	=	10'b	1110111010	;
cos	[135]	=	10'b	1110111001	;
cos	[136]	=	10'b	1110111000	;
cos	[137]	=	10'b	1110110110	;
cos	[138]	=	10'b	1110110101	;
cos	[139]	=	10'b	1110110100	;
cos	[140]	=	10'b	1110110011	;
cos	[141]	=	10'b	1110110010	;
cos	[142]	=	10'b	1110110001	;
cos	[143]	=	10'b	1110110000	;
cos	[144]	=	10'b	1110101111	;
cos	[145]	=	10'b	1110101110	;
cos	[146]	=	10'b	1110101101	;
cos	[147]	=	10'b	1110101100	;
cos	[148]	=	10'b	1110101011	;
cos	[149]	=	10'b	1110101010	;
cos	[150]	=	10'b	1110101001	;
cos	[151]	=	10'b	1110101000	;
cos	[152]	=	10'b	1110100111	;
cos	[153]	=	10'b	1110100110	;
cos	[154]	=	10'b	1110100110	;
cos	[155]	=	10'b	1110100101	;
cos	[156]	=	10'b	1110100100	;
cos	[157]	=	10'b	1110100011	;
cos	[158]	=	10'b	1110100011	;
cos	[159]	=	10'b	1110100010	;
cos	[160]	=	10'b	1110100010	;
cos	[161]	=	10'b	1110100001	;
cos	[162]	=	10'b	1110100000	;
cos	[163]	=	10'b	1110100000	;
cos	[164]	=	10'b	1110011111	;
cos	[165]	=	10'b	1110011111	;
cos	[166]	=	10'b	1110011110	;
cos	[167]	=	10'b	1110011110	;
cos	[168]	=	10'b	1110011110	;
cos	[169]	=	10'b	1110011101	;
cos	[170]	=	10'b	1110011101	;
cos	[171]	=	10'b	1110011101	;
cos	[172]	=	10'b	1110011100	;
cos	[173]	=	10'b	1110011100	;
cos	[174]	=	10'b	1110011100	;
cos	[175]	=	10'b	1110011100	;
cos	[176]	=	10'b	1110011100	;
cos	[177]	=	10'b	1110011100	;
cos	[178]	=	10'b	1110011100	;
cos	[179]	=	10'b	1110011100	;
cos	[180]	=	10'b	1110011100	;
cos	[181]	=	10'b	1110011100	;
cos	[182]	=	10'b	1110011100	;
cos	[183]	=	10'b	1110011100	;
cos	[184]	=	10'b	1110011100	;
cos	[185]	=	10'b	1110011100	;
cos	[186]	=	10'b	1110011100	;
cos	[187]	=	10'b	1110011100	;
cos	[188]	=	10'b	1110011100	;
cos	[189]	=	10'b	1110011101	;
cos	[190]	=	10'b	1110011101	;
cos	[191]	=	10'b	1110011101	;
cos	[192]	=	10'b	1110011110	;
cos	[193]	=	10'b	1110011110	;
cos	[194]	=	10'b	1110011110	;
cos	[195]	=	10'b	1110011111	;
cos	[196]	=	10'b	1110011111	;
cos	[197]	=	10'b	1110100000	;
cos	[198]	=	10'b	1110100000	;
cos	[199]	=	10'b	1110100001	;
cos	[200]	=	10'b	1110100010	;
cos	[201]	=	10'b	1110100010	;
cos	[202]	=	10'b	1110100011	;
cos	[203]	=	10'b	1110100011	;
cos	[204]	=	10'b	1110100100	;
cos	[205]	=	10'b	1110100101	;
cos	[206]	=	10'b	1110100110	;
cos	[207]	=	10'b	1110100110	;
cos	[208]	=	10'b	1110100111	;
cos	[209]	=	10'b	1110101000	;
cos	[210]	=	10'b	1110101001	;
cos	[211]	=	10'b	1110101010	;
cos	[212]	=	10'b	1110101011	;
cos	[213]	=	10'b	1110101100	;
cos	[214]	=	10'b	1110101101	;
cos	[215]	=	10'b	1110101110	;
cos	[216]	=	10'b	1110101111	;
cos	[217]	=	10'b	1110110000	;
cos	[218]	=	10'b	1110110001	;
cos	[219]	=	10'b	1110110010	;
cos	[220]	=	10'b	1110110011	;
cos	[221]	=	10'b	1110110100	;
cos	[222]	=	10'b	1110110101	;
cos	[223]	=	10'b	1110110110	;
cos	[224]	=	10'b	1110111000	;
cos	[225]	=	10'b	1110111001	;
cos	[226]	=	10'b	1110111010	;
cos	[227]	=	10'b	1110111011	;
cos	[228]	=	10'b	1110111101	;
cos	[229]	=	10'b	1110111110	;
cos	[230]	=	10'b	1110111111	;
cos	[231]	=	10'b	1111000001	;
cos	[232]	=	10'b	1111000010	;
cos	[233]	=	10'b	1111000011	;
cos	[234]	=	10'b	1111000101	;
cos	[235]	=	10'b	1111000110	;
cos	[236]	=	10'b	1111001000	;
cos	[237]	=	10'b	1111001001	;
cos	[238]	=	10'b	1111001011	;
cos	[239]	=	10'b	1111001100	;
cos	[240]	=	10'b	1111001101	;
cos	[241]	=	10'b	1111001111	;
cos	[242]	=	10'b	1111010001	;
cos	[243]	=	10'b	1111010010	;
cos	[244]	=	10'b	1111010100	;
cos	[245]	=	10'b	1111010101	;
cos	[246]	=	10'b	1111010111	;
cos	[247]	=	10'b	1111011000	;
cos	[248]	=	10'b	1111011010	;
cos	[249]	=	10'b	1111011100	;
cos	[250]	=	10'b	1111011101	;
cos	[251]	=	10'b	1111011111	;
cos	[252]	=	10'b	1111100001	;
cos	[253]	=	10'b	1111100010	;
cos	[254]	=	10'b	1111100100	;
cos	[255]	=	10'b	1111100110	;
cos	[256]	=	10'b	1111100111	;
cos	[257]	=	10'b	1111101001	;
cos	[258]	=	10'b	1111101011	;
cos	[259]	=	10'b	1111101100	;
cos	[260]	=	10'b	1111101110	;
cos	[261]	=	10'b	1111110000	;
cos	[262]	=	10'b	1111110010	;
cos	[263]	=	10'b	1111110011	;
cos	[264]	=	10'b	1111110101	;
cos	[265]	=	10'b	1111110111	;
cos	[266]	=	10'b	1111111001	;
cos	[267]	=	10'b	1111111010	;
cos	[268]	=	10'b	1111111100	;
cos	[269]	=	10'b	1111111110	;
cos	[270]	=	10'b	0	;
cos	[271]	=	10'b	1	;
cos	[272]	=	10'b	11	;
cos	[273]	=	10'b	101	;
cos	[274]	=	10'b	110	;
cos	[275]	=	10'b	1000	;
cos	[276]	=	10'b	1010	;
cos	[277]	=	10'b	1100	;
cos	[278]	=	10'b	1101	;
cos	[279]	=	10'b	1111	;
cos	[280]	=	10'b	10001	;
cos	[281]	=	10'b	10011	;
cos	[282]	=	10'b	10100	;
cos	[283]	=	10'b	10110	;
cos	[284]	=	10'b	11000	;
cos	[285]	=	10'b	11001	;
cos	[286]	=	10'b	11011	;
cos	[287]	=	10'b	11101	;
cos	[288]	=	10'b	11110	;
cos	[289]	=	10'b	100000	;
cos	[290]	=	10'b	100010	;
cos	[291]	=	10'b	100011	;
cos	[292]	=	10'b	100101	;
cos	[293]	=	10'b	100111	;
cos	[294]	=	10'b	101000	;
cos	[295]	=	10'b	101010	;
cos	[296]	=	10'b	101011	;
cos	[297]	=	10'b	101101	;
cos	[298]	=	10'b	101110	;
cos	[299]	=	10'b	110000	;
cos	[300]	=	10'b	110001	;
cos	[301]	=	10'b	110011	;
cos	[302]	=	10'b	110100	;
cos	[303]	=	10'b	110110	;
cos	[304]	=	10'b	110111	;
cos	[305]	=	10'b	111001	;
cos	[306]	=	10'b	111010	;
cos	[307]	=	10'b	111100	;
cos	[308]	=	10'b	111101	;
cos	[309]	=	10'b	111110	;
cos	[310]	=	10'b	1000000	;
cos	[311]	=	10'b	1000001	;
cos	[312]	=	10'b	1000010	;
cos	[313]	=	10'b	1000100	;
cos	[314]	=	10'b	1000101	;
cos	[315]	=	10'b	1000110	;
cos	[316]	=	10'b	1000111	;
cos	[317]	=	10'b	1001001	;
cos	[318]	=	10'b	1001010	;
cos	[319]	=	10'b	1001011	;
cos	[320]	=	10'b	1001100	;
cos	[321]	=	10'b	1001101	;
cos	[322]	=	10'b	1001110	;
cos	[323]	=	10'b	1001111	;
cos	[324]	=	10'b	1010000	;
cos	[325]	=	10'b	1010001	;
cos	[326]	=	10'b	1010010	;
cos	[327]	=	10'b	1010011	;
cos	[328]	=	10'b	1010100	;
cos	[329]	=	10'b	1010101	;
cos	[330]	=	10'b	1010110	;
cos	[331]	=	10'b	1010111	;
cos	[332]	=	10'b	1011000	;
cos	[333]	=	10'b	1011001	;
cos	[334]	=	10'b	1011001	;
cos	[335]	=	10'b	1011010	;
cos	[336]	=	10'b	1011011	;
cos	[337]	=	10'b	1011100	;
cos	[338]	=	10'b	1011100	;
cos	[339]	=	10'b	1011101	;
cos	[340]	=	10'b	1011101	;
cos	[341]	=	10'b	1011110	;
cos	[342]	=	10'b	1011111	;
cos	[343]	=	10'b	1011111	;
cos	[344]	=	10'b	1100000	;
cos	[345]	=	10'b	1100000	;
cos	[346]	=	10'b	1100001	;
cos	[347]	=	10'b	1100001	;
cos	[348]	=	10'b	1100001	;
cos	[349]	=	10'b	1100010	;
cos	[350]	=	10'b	1100010	;
cos	[351]	=	10'b	1100010	;
cos	[352]	=	10'b	1100011	;
cos	[353]	=	10'b	1100011	;
cos	[354]	=	10'b	1100011	;
cos	[355]	=	10'b	1100011	;
cos	[356]	=	10'b	1100011	;
cos	[357]	=	10'b	1100011	;
cos	[358]	=	10'b	1100011	;
cos	[359]	=	10'b	1100011	;
cos	[360]	=	10'b	1100100	;

end
	
	always @(posedge clk) begin
		 sen_o <= sen[angulo]; 
		 cos_o <= cos[angulo];
	end 

endmodule
