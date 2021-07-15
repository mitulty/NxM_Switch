//
// Generated by Bluespec Compiler (build 7d25cde)
//
// On Thu Jul 15 04:59:05 IST 2021
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkTb(CLK,
	    RST_N);
  input  CLK;
  input  RST_N;

  // register finish_flag
  reg finish_flag;
  wire finish_flag$D_IN, finish_flag$EN;

  // register index_0
  reg [31 : 0] index_0;
  wire [31 : 0] index_0$D_IN;
  wire index_0$EN;

  // register index_1
  reg [31 : 0] index_1;
  wire [31 : 0] index_1$D_IN;
  wire index_1$EN;

  // register index_2
  reg [31 : 0] index_2;
  wire [31 : 0] index_2$D_IN;
  wire index_2$EN;

  // register no_of_packets_recv_at_0
  reg [31 : 0] no_of_packets_recv_at_0;
  wire [31 : 0] no_of_packets_recv_at_0$D_IN;
  wire no_of_packets_recv_at_0$EN;

  // register no_of_packets_recv_at_1
  reg [31 : 0] no_of_packets_recv_at_1;
  wire [31 : 0] no_of_packets_recv_at_1$D_IN;
  wire no_of_packets_recv_at_1$EN;

  // register no_of_packets_recv_at_2
  reg [31 : 0] no_of_packets_recv_at_2;
  wire [31 : 0] no_of_packets_recv_at_2$D_IN;
  wire no_of_packets_recv_at_2$EN;

  // register no_of_packets_recv_at_3
  reg [31 : 0] no_of_packets_recv_at_3;
  wire [31 : 0] no_of_packets_recv_at_3$D_IN;
  wire no_of_packets_recv_at_3$EN;

  // ports of submodule dut_SwitchNxM
  wire [63 : 0] dut_SwitchNxM$input_ports_0_put,
		dut_SwitchNxM$input_ports_1_put,
		dut_SwitchNxM$input_ports_2_put,
		dut_SwitchNxM$output_ports_0_get,
		dut_SwitchNxM$output_ports_1_get,
		dut_SwitchNxM$output_ports_2_get,
		dut_SwitchNxM$output_ports_3_get;
  wire dut_SwitchNxM$EN_input_ports_0_put,
       dut_SwitchNxM$EN_input_ports_1_put,
       dut_SwitchNxM$EN_input_ports_2_put,
       dut_SwitchNxM$EN_output_ports_0_get,
       dut_SwitchNxM$EN_output_ports_1_get,
       dut_SwitchNxM$EN_output_ports_2_get,
       dut_SwitchNxM$EN_output_ports_3_get,
       dut_SwitchNxM$RDY_input_ports_0_put,
       dut_SwitchNxM$RDY_input_ports_1_put,
       dut_SwitchNxM$RDY_input_ports_2_put,
       dut_SwitchNxM$RDY_output_ports_0_get,
       dut_SwitchNxM$RDY_output_ports_1_get,
       dut_SwitchNxM$RDY_output_ports_2_get,
       dut_SwitchNxM$RDY_output_ports_3_get;

  // rule scheduling signals
  wire CAN_FIRE_RL_recv_packets,
       CAN_FIRE_RL_recv_packets_1,
       CAN_FIRE_RL_recv_packets_2,
       CAN_FIRE_RL_recv_packets_3,
       CAN_FIRE_RL_send_packets,
       CAN_FIRE_RL_send_packets_1,
       CAN_FIRE_RL_send_packets_2,
       WILL_FIRE_RL_recv_packets,
       WILL_FIRE_RL_recv_packets_1,
       WILL_FIRE_RL_recv_packets_2,
       WILL_FIRE_RL_recv_packets_3,
       WILL_FIRE_RL_send_packets,
       WILL_FIRE_RL_send_packets_1,
       WILL_FIRE_RL_send_packets_2;

  // remaining internal signals
  reg [63 : 0] put__h4172, put__h7241, put__h949;

  // submodule dut_SwitchNxM
  mkSwitchWrapper dut_SwitchNxM(.CLK(CLK),
				.RST_N(RST_N),
				.input_ports_0_put(dut_SwitchNxM$input_ports_0_put),
				.input_ports_1_put(dut_SwitchNxM$input_ports_1_put),
				.input_ports_2_put(dut_SwitchNxM$input_ports_2_put),
				.EN_input_ports_0_put(dut_SwitchNxM$EN_input_ports_0_put),
				.EN_input_ports_1_put(dut_SwitchNxM$EN_input_ports_1_put),
				.EN_input_ports_2_put(dut_SwitchNxM$EN_input_ports_2_put),
				.EN_output_ports_0_get(dut_SwitchNxM$EN_output_ports_0_get),
				.EN_output_ports_1_get(dut_SwitchNxM$EN_output_ports_1_get),
				.EN_output_ports_2_get(dut_SwitchNxM$EN_output_ports_2_get),
				.EN_output_ports_3_get(dut_SwitchNxM$EN_output_ports_3_get),
				.RDY_input_ports_0_put(dut_SwitchNxM$RDY_input_ports_0_put),
				.RDY_input_ports_1_put(dut_SwitchNxM$RDY_input_ports_1_put),
				.RDY_input_ports_2_put(dut_SwitchNxM$RDY_input_ports_2_put),
				.output_ports_0_get(dut_SwitchNxM$output_ports_0_get),
				.RDY_output_ports_0_get(dut_SwitchNxM$RDY_output_ports_0_get),
				.output_ports_1_get(dut_SwitchNxM$output_ports_1_get),
				.RDY_output_ports_1_get(dut_SwitchNxM$RDY_output_ports_1_get),
				.output_ports_2_get(dut_SwitchNxM$output_ports_2_get),
				.RDY_output_ports_2_get(dut_SwitchNxM$RDY_output_ports_2_get),
				.output_ports_3_get(dut_SwitchNxM$output_ports_3_get),
				.RDY_output_ports_3_get(dut_SwitchNxM$RDY_output_ports_3_get));

  // rule RL_send_packets
  assign CAN_FIRE_RL_send_packets =
	     dut_SwitchNxM$RDY_input_ports_0_put &&
	     (index_0 ^ 32'h80000000) < 32'h80000064 ;
  assign WILL_FIRE_RL_send_packets = CAN_FIRE_RL_send_packets ;

  // rule RL_send_packets_1
  assign CAN_FIRE_RL_send_packets_1 =
	     dut_SwitchNxM$RDY_input_ports_1_put &&
	     (index_1 ^ 32'h80000000) < 32'h80000064 ;
  assign WILL_FIRE_RL_send_packets_1 = CAN_FIRE_RL_send_packets_1 ;

  // rule RL_send_packets_2
  assign CAN_FIRE_RL_send_packets_2 =
	     dut_SwitchNxM$RDY_input_ports_2_put &&
	     (index_2 ^ 32'h80000000) < 32'h80000064 ;
  assign WILL_FIRE_RL_send_packets_2 = CAN_FIRE_RL_send_packets_2 ;

  // rule RL_recv_packets
  assign CAN_FIRE_RL_recv_packets = dut_SwitchNxM$RDY_output_ports_0_get ;
  assign WILL_FIRE_RL_recv_packets = dut_SwitchNxM$RDY_output_ports_0_get ;

  // rule RL_recv_packets_1
  assign CAN_FIRE_RL_recv_packets_1 = dut_SwitchNxM$RDY_output_ports_1_get ;
  assign WILL_FIRE_RL_recv_packets_1 = dut_SwitchNxM$RDY_output_ports_1_get ;

  // rule RL_recv_packets_2
  assign CAN_FIRE_RL_recv_packets_2 = dut_SwitchNxM$RDY_output_ports_2_get ;
  assign WILL_FIRE_RL_recv_packets_2 = dut_SwitchNxM$RDY_output_ports_2_get ;

  // rule RL_recv_packets_3
  assign CAN_FIRE_RL_recv_packets_3 = dut_SwitchNxM$RDY_output_ports_3_get ;
  assign WILL_FIRE_RL_recv_packets_3 = dut_SwitchNxM$RDY_output_ports_3_get ;

  // register finish_flag
  assign finish_flag$D_IN = 1'b0 ;
  assign finish_flag$EN = 1'b0 ;

  // register index_0
  assign index_0$D_IN = index_0 + 32'd1 ;
  assign index_0$EN = CAN_FIRE_RL_send_packets ;

  // register index_1
  assign index_1$D_IN = index_1 + 32'd1 ;
  assign index_1$EN = CAN_FIRE_RL_send_packets_1 ;

  // register index_2
  assign index_2$D_IN = index_2 + 32'd1 ;
  assign index_2$EN = CAN_FIRE_RL_send_packets_2 ;

  // register no_of_packets_recv_at_0
  assign no_of_packets_recv_at_0$D_IN = no_of_packets_recv_at_0 + 32'd1 ;
  assign no_of_packets_recv_at_0$EN = dut_SwitchNxM$RDY_output_ports_0_get ;

  // register no_of_packets_recv_at_1
  assign no_of_packets_recv_at_1$D_IN = no_of_packets_recv_at_1 + 32'd1 ;
  assign no_of_packets_recv_at_1$EN = dut_SwitchNxM$RDY_output_ports_1_get ;

  // register no_of_packets_recv_at_2
  assign no_of_packets_recv_at_2$D_IN = no_of_packets_recv_at_2 + 32'd1 ;
  assign no_of_packets_recv_at_2$EN = dut_SwitchNxM$RDY_output_ports_2_get ;

  // register no_of_packets_recv_at_3
  assign no_of_packets_recv_at_3$D_IN = no_of_packets_recv_at_3 + 32'd1 ;
  assign no_of_packets_recv_at_3$EN = dut_SwitchNxM$RDY_output_ports_3_get ;

  // submodule dut_SwitchNxM
  assign dut_SwitchNxM$input_ports_0_put = put__h949 ;
  assign dut_SwitchNxM$input_ports_1_put = put__h4172 ;
  assign dut_SwitchNxM$input_ports_2_put = put__h7241 ;
  assign dut_SwitchNxM$EN_input_ports_0_put = CAN_FIRE_RL_send_packets ;
  assign dut_SwitchNxM$EN_input_ports_1_put = CAN_FIRE_RL_send_packets_1 ;
  assign dut_SwitchNxM$EN_input_ports_2_put = CAN_FIRE_RL_send_packets_2 ;
  assign dut_SwitchNxM$EN_output_ports_0_get =
	     dut_SwitchNxM$RDY_output_ports_0_get ;
  assign dut_SwitchNxM$EN_output_ports_1_get =
	     dut_SwitchNxM$RDY_output_ports_1_get ;
  assign dut_SwitchNxM$EN_output_ports_2_get =
	     dut_SwitchNxM$RDY_output_ports_2_get ;
  assign dut_SwitchNxM$EN_output_ports_3_get =
	     dut_SwitchNxM$RDY_output_ports_3_get ;

  // remaining internal signals
  always@(index_0)
  begin
    case (index_0)
      32'd0: put__h949 = 64'd8388608;
      32'd1: put__h949 = 64'd16777216;
      32'd2: put__h949 = 64'd8388609;
      32'd3: put__h949 = 64'd16777217;
      32'd4: put__h949 = 64'd8388610;
      32'd5: put__h949 = 64'd16777218;
      32'd6: put__h949 = 64'd8388611;
      32'd7: put__h949 = 64'd16777219;
      32'd8: put__h949 = 64'd8388612;
      32'd9: put__h949 = 64'd16777220;
      32'd10: put__h949 = 64'd8388613;
      32'd11: put__h949 = 64'd16777221;
      32'd12: put__h949 = 64'd8388614;
      32'd13: put__h949 = 64'd16777222;
      32'd14: put__h949 = 64'd8388615;
      32'd15: put__h949 = 64'd16777223;
      32'd16: put__h949 = 64'd8388616;
      32'd17: put__h949 = 64'd16777224;
      32'd18: put__h949 = 64'd8388617;
      32'd19: put__h949 = 64'd16777225;
      32'd20: put__h949 = 64'd8388618;
      32'd21: put__h949 = 64'd16777226;
      32'd22: put__h949 = 64'd8388619;
      32'd23: put__h949 = 64'd16777227;
      32'd24: put__h949 = 64'd8388620;
      32'd25: put__h949 = 64'd16777228;
      32'd26: put__h949 = 64'd8388621;
      32'd27: put__h949 = 64'd16777229;
      32'd28: put__h949 = 64'd8388622;
      32'd29: put__h949 = 64'd16777230;
      32'd30: put__h949 = 64'd8388623;
      32'd31: put__h949 = 64'd16777231;
      32'd32: put__h949 = 64'd8388624;
      32'd33: put__h949 = 64'd16777232;
      32'd34: put__h949 = 64'd8388625;
      32'd35: put__h949 = 64'd16777233;
      32'd36: put__h949 = 64'd8388626;
      32'd37: put__h949 = 64'd16777234;
      32'd38: put__h949 = 64'd8388627;
      32'd39: put__h949 = 64'd16777235;
      32'd40: put__h949 = 64'd8388628;
      32'd41: put__h949 = 64'd16777236;
      32'd42: put__h949 = 64'd8388629;
      32'd43: put__h949 = 64'd16777237;
      32'd44: put__h949 = 64'd8388630;
      32'd45: put__h949 = 64'd16777238;
      32'd46: put__h949 = 64'd8388631;
      32'd47: put__h949 = 64'd16777239;
      32'd48: put__h949 = 64'd8388632;
      32'd49: put__h949 = 64'd16777240;
      32'd50: put__h949 = 64'd8388633;
      32'd51: put__h949 = 64'd16777241;
      32'd52: put__h949 = 64'd8388634;
      32'd53: put__h949 = 64'd16777242;
      32'd54: put__h949 = 64'd8388635;
      32'd55: put__h949 = 64'd16777243;
      32'd56: put__h949 = 64'd8388636;
      32'd57: put__h949 = 64'd16777244;
      32'd58: put__h949 = 64'd8388637;
      32'd59: put__h949 = 64'd16777245;
      32'd60: put__h949 = 64'd8388638;
      32'd61: put__h949 = 64'd16777246;
      32'd62: put__h949 = 64'd8388639;
      32'd63: put__h949 = 64'd16777247;
      32'd64: put__h949 = 64'd8388640;
      32'd65: put__h949 = 64'd16777248;
      32'd66: put__h949 = 64'd8388641;
      32'd67: put__h949 = 64'd16777249;
      32'd68: put__h949 = 64'd8388642;
      32'd69: put__h949 = 64'd16777250;
      32'd70: put__h949 = 64'd8388643;
      32'd71: put__h949 = 64'd16777251;
      32'd72: put__h949 = 64'd8388644;
      32'd73: put__h949 = 64'd16777252;
      32'd74: put__h949 = 64'd8388645;
      32'd75: put__h949 = 64'd16777253;
      32'd76: put__h949 = 64'd8388646;
      32'd77: put__h949 = 64'd16777254;
      32'd78: put__h949 = 64'd8388647;
      32'd79: put__h949 = 64'd16777255;
      32'd80: put__h949 = 64'd8388648;
      32'd81: put__h949 = 64'd16777256;
      32'd82: put__h949 = 64'd8388649;
      32'd83: put__h949 = 64'd16777257;
      32'd84: put__h949 = 64'd8388650;
      32'd85: put__h949 = 64'd16777258;
      32'd86: put__h949 = 64'd8388651;
      32'd87: put__h949 = 64'd16777259;
      32'd88: put__h949 = 64'd8388652;
      32'd89: put__h949 = 64'd16777260;
      32'd90: put__h949 = 64'd8388653;
      32'd91: put__h949 = 64'd16777261;
      32'd92: put__h949 = 64'd8388654;
      32'd93: put__h949 = 64'd16777262;
      32'd94: put__h949 = 64'd8388655;
      32'd95: put__h949 = 64'd16777263;
      32'd96: put__h949 = 64'd8388656;
      32'd97: put__h949 = 64'd16777264;
      32'd98: put__h949 = 64'd8388657;
      32'd99: put__h949 = 64'd16777265;
      default: put__h949 = 64'hAAAAAAAAAAAAAAAA /* unspecified value */ ;
    endcase
  end
  always@(index_1)
  begin
    case (index_1)
      32'd0: put__h4172 = 64'd8388608;
      32'd1: put__h4172 = 64'd16777216;
      32'd2: put__h4172 = 64'd8388609;
      32'd3: put__h4172 = 64'd16777217;
      32'd4: put__h4172 = 64'd8388610;
      32'd5: put__h4172 = 64'd16777218;
      32'd6: put__h4172 = 64'd8388611;
      32'd7: put__h4172 = 64'd16777219;
      32'd8: put__h4172 = 64'd8388612;
      32'd9: put__h4172 = 64'd16777220;
      32'd10: put__h4172 = 64'd8388613;
      32'd11: put__h4172 = 64'd16777221;
      32'd12: put__h4172 = 64'd8388614;
      32'd13: put__h4172 = 64'd16777222;
      32'd14: put__h4172 = 64'd8388615;
      32'd15: put__h4172 = 64'd16777223;
      32'd16: put__h4172 = 64'd8388616;
      32'd17: put__h4172 = 64'd16777224;
      32'd18: put__h4172 = 64'd8388617;
      32'd19: put__h4172 = 64'd16777225;
      32'd20: put__h4172 = 64'd8388618;
      32'd21: put__h4172 = 64'd16777226;
      32'd22: put__h4172 = 64'd8388619;
      32'd23: put__h4172 = 64'd16777227;
      32'd24: put__h4172 = 64'd8388620;
      32'd25: put__h4172 = 64'd16777228;
      32'd26: put__h4172 = 64'd8388621;
      32'd27: put__h4172 = 64'd16777229;
      32'd28: put__h4172 = 64'd8388622;
      32'd29: put__h4172 = 64'd16777230;
      32'd30: put__h4172 = 64'd8388623;
      32'd31: put__h4172 = 64'd16777231;
      32'd32: put__h4172 = 64'd8388624;
      32'd33: put__h4172 = 64'd16777232;
      32'd34: put__h4172 = 64'd8388625;
      32'd35: put__h4172 = 64'd16777233;
      32'd36: put__h4172 = 64'd8388626;
      32'd37: put__h4172 = 64'd16777234;
      32'd38: put__h4172 = 64'd8388627;
      32'd39: put__h4172 = 64'd16777235;
      32'd40: put__h4172 = 64'd8388628;
      32'd41: put__h4172 = 64'd16777236;
      32'd42: put__h4172 = 64'd8388629;
      32'd43: put__h4172 = 64'd16777237;
      32'd44: put__h4172 = 64'd8388630;
      32'd45: put__h4172 = 64'd16777238;
      32'd46: put__h4172 = 64'd8388631;
      32'd47: put__h4172 = 64'd16777239;
      32'd48: put__h4172 = 64'd8388632;
      32'd49: put__h4172 = 64'd16777240;
      32'd50: put__h4172 = 64'd8388633;
      32'd51: put__h4172 = 64'd16777241;
      32'd52: put__h4172 = 64'd8388634;
      32'd53: put__h4172 = 64'd16777242;
      32'd54: put__h4172 = 64'd8388635;
      32'd55: put__h4172 = 64'd16777243;
      32'd56: put__h4172 = 64'd8388636;
      32'd57: put__h4172 = 64'd16777244;
      32'd58: put__h4172 = 64'd8388637;
      32'd59: put__h4172 = 64'd16777245;
      32'd60: put__h4172 = 64'd8388638;
      32'd61: put__h4172 = 64'd16777246;
      32'd62: put__h4172 = 64'd8388639;
      32'd63: put__h4172 = 64'd16777247;
      32'd64: put__h4172 = 64'd8388640;
      32'd65: put__h4172 = 64'd16777248;
      32'd66: put__h4172 = 64'd8388641;
      32'd67: put__h4172 = 64'd16777249;
      32'd68: put__h4172 = 64'd8388642;
      32'd69: put__h4172 = 64'd16777250;
      32'd70: put__h4172 = 64'd8388643;
      32'd71: put__h4172 = 64'd16777251;
      32'd72: put__h4172 = 64'd8388644;
      32'd73: put__h4172 = 64'd16777252;
      32'd74: put__h4172 = 64'd8388645;
      32'd75: put__h4172 = 64'd16777253;
      32'd76: put__h4172 = 64'd8388646;
      32'd77: put__h4172 = 64'd16777254;
      32'd78: put__h4172 = 64'd8388647;
      32'd79: put__h4172 = 64'd16777255;
      32'd80: put__h4172 = 64'd8388648;
      32'd81: put__h4172 = 64'd16777256;
      32'd82: put__h4172 = 64'd8388649;
      32'd83: put__h4172 = 64'd16777257;
      32'd84: put__h4172 = 64'd8388650;
      32'd85: put__h4172 = 64'd16777258;
      32'd86: put__h4172 = 64'd8388651;
      32'd87: put__h4172 = 64'd16777259;
      32'd88: put__h4172 = 64'd8388652;
      32'd89: put__h4172 = 64'd16777260;
      32'd90: put__h4172 = 64'd8388653;
      32'd91: put__h4172 = 64'd16777261;
      32'd92: put__h4172 = 64'd8388654;
      32'd93: put__h4172 = 64'd16777262;
      32'd94: put__h4172 = 64'd8388655;
      32'd95: put__h4172 = 64'd16777263;
      32'd96: put__h4172 = 64'd8388656;
      32'd97: put__h4172 = 64'd16777264;
      32'd98: put__h4172 = 64'd8388657;
      32'd99: put__h4172 = 64'd16777265;
      default: put__h4172 = 64'hAAAAAAAAAAAAAAAA /* unspecified value */ ;
    endcase
  end
  always@(index_2)
  begin
    case (index_2)
      32'd0: put__h7241 = 64'd8388608;
      32'd1: put__h7241 = 64'd16777216;
      32'd2: put__h7241 = 64'd8388609;
      32'd3: put__h7241 = 64'd16777217;
      32'd4: put__h7241 = 64'd8388610;
      32'd5: put__h7241 = 64'd16777218;
      32'd6: put__h7241 = 64'd8388611;
      32'd7: put__h7241 = 64'd16777219;
      32'd8: put__h7241 = 64'd8388612;
      32'd9: put__h7241 = 64'd16777220;
      32'd10: put__h7241 = 64'd8388613;
      32'd11: put__h7241 = 64'd16777221;
      32'd12: put__h7241 = 64'd8388614;
      32'd13: put__h7241 = 64'd16777222;
      32'd14: put__h7241 = 64'd8388615;
      32'd15: put__h7241 = 64'd16777223;
      32'd16: put__h7241 = 64'd8388616;
      32'd17: put__h7241 = 64'd16777224;
      32'd18: put__h7241 = 64'd8388617;
      32'd19: put__h7241 = 64'd16777225;
      32'd20: put__h7241 = 64'd8388618;
      32'd21: put__h7241 = 64'd16777226;
      32'd22: put__h7241 = 64'd8388619;
      32'd23: put__h7241 = 64'd16777227;
      32'd24: put__h7241 = 64'd8388620;
      32'd25: put__h7241 = 64'd16777228;
      32'd26: put__h7241 = 64'd8388621;
      32'd27: put__h7241 = 64'd16777229;
      32'd28: put__h7241 = 64'd8388622;
      32'd29: put__h7241 = 64'd16777230;
      32'd30: put__h7241 = 64'd8388623;
      32'd31: put__h7241 = 64'd16777231;
      32'd32: put__h7241 = 64'd8388624;
      32'd33: put__h7241 = 64'd16777232;
      32'd34: put__h7241 = 64'd8388625;
      32'd35: put__h7241 = 64'd16777233;
      32'd36: put__h7241 = 64'd8388626;
      32'd37: put__h7241 = 64'd16777234;
      32'd38: put__h7241 = 64'd8388627;
      32'd39: put__h7241 = 64'd16777235;
      32'd40: put__h7241 = 64'd8388628;
      32'd41: put__h7241 = 64'd16777236;
      32'd42: put__h7241 = 64'd8388629;
      32'd43: put__h7241 = 64'd16777237;
      32'd44: put__h7241 = 64'd8388630;
      32'd45: put__h7241 = 64'd16777238;
      32'd46: put__h7241 = 64'd8388631;
      32'd47: put__h7241 = 64'd16777239;
      32'd48: put__h7241 = 64'd8388632;
      32'd49: put__h7241 = 64'd16777240;
      32'd50: put__h7241 = 64'd8388633;
      32'd51: put__h7241 = 64'd16777241;
      32'd52: put__h7241 = 64'd8388634;
      32'd53: put__h7241 = 64'd16777242;
      32'd54: put__h7241 = 64'd8388635;
      32'd55: put__h7241 = 64'd16777243;
      32'd56: put__h7241 = 64'd8388636;
      32'd57: put__h7241 = 64'd16777244;
      32'd58: put__h7241 = 64'd8388637;
      32'd59: put__h7241 = 64'd16777245;
      32'd60: put__h7241 = 64'd8388638;
      32'd61: put__h7241 = 64'd16777246;
      32'd62: put__h7241 = 64'd8388639;
      32'd63: put__h7241 = 64'd16777247;
      32'd64: put__h7241 = 64'd8388640;
      32'd65: put__h7241 = 64'd16777248;
      32'd66: put__h7241 = 64'd8388641;
      32'd67: put__h7241 = 64'd16777249;
      32'd68: put__h7241 = 64'd8388642;
      32'd69: put__h7241 = 64'd16777250;
      32'd70: put__h7241 = 64'd8388643;
      32'd71: put__h7241 = 64'd16777251;
      32'd72: put__h7241 = 64'd8388644;
      32'd73: put__h7241 = 64'd16777252;
      32'd74: put__h7241 = 64'd8388645;
      32'd75: put__h7241 = 64'd16777253;
      32'd76: put__h7241 = 64'd8388646;
      32'd77: put__h7241 = 64'd16777254;
      32'd78: put__h7241 = 64'd8388647;
      32'd79: put__h7241 = 64'd16777255;
      32'd80: put__h7241 = 64'd8388648;
      32'd81: put__h7241 = 64'd16777256;
      32'd82: put__h7241 = 64'd8388649;
      32'd83: put__h7241 = 64'd16777257;
      32'd84: put__h7241 = 64'd8388650;
      32'd85: put__h7241 = 64'd16777258;
      32'd86: put__h7241 = 64'd8388651;
      32'd87: put__h7241 = 64'd16777259;
      32'd88: put__h7241 = 64'd8388652;
      32'd89: put__h7241 = 64'd16777260;
      32'd90: put__h7241 = 64'd8388653;
      32'd91: put__h7241 = 64'd16777261;
      32'd92: put__h7241 = 64'd8388654;
      32'd93: put__h7241 = 64'd16777262;
      32'd94: put__h7241 = 64'd8388655;
      32'd95: put__h7241 = 64'd16777263;
      32'd96: put__h7241 = 64'd8388656;
      32'd97: put__h7241 = 64'd16777264;
      32'd98: put__h7241 = 64'd8388657;
      32'd99: put__h7241 = 64'd16777265;
      default: put__h7241 = 64'hAAAAAAAAAAAAAAAA /* unspecified value */ ;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        finish_flag <= `BSV_ASSIGNMENT_DELAY 1'd0;
	index_0 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	index_1 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	index_2 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	no_of_packets_recv_at_0 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	no_of_packets_recv_at_1 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	no_of_packets_recv_at_2 <= `BSV_ASSIGNMENT_DELAY 32'd0;
	no_of_packets_recv_at_3 <= `BSV_ASSIGNMENT_DELAY 32'd0;
      end
    else
      begin
        if (finish_flag$EN)
	  finish_flag <= `BSV_ASSIGNMENT_DELAY finish_flag$D_IN;
	if (index_0$EN) index_0 <= `BSV_ASSIGNMENT_DELAY index_0$D_IN;
	if (index_1$EN) index_1 <= `BSV_ASSIGNMENT_DELAY index_1$D_IN;
	if (index_2$EN) index_2 <= `BSV_ASSIGNMENT_DELAY index_2$D_IN;
	if (no_of_packets_recv_at_0$EN)
	  no_of_packets_recv_at_0 <= `BSV_ASSIGNMENT_DELAY
	      no_of_packets_recv_at_0$D_IN;
	if (no_of_packets_recv_at_1$EN)
	  no_of_packets_recv_at_1 <= `BSV_ASSIGNMENT_DELAY
	      no_of_packets_recv_at_1$D_IN;
	if (no_of_packets_recv_at_2$EN)
	  no_of_packets_recv_at_2 <= `BSV_ASSIGNMENT_DELAY
	      no_of_packets_recv_at_2$D_IN;
	if (no_of_packets_recv_at_3$EN)
	  no_of_packets_recv_at_3 <= `BSV_ASSIGNMENT_DELAY
	      no_of_packets_recv_at_3$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    finish_flag = 1'h0;
    index_0 = 32'hAAAAAAAA;
    index_1 = 32'hAAAAAAAA;
    index_2 = 32'hAAAAAAAA;
    no_of_packets_recv_at_0 = 32'hAAAAAAAA;
    no_of_packets_recv_at_1 = 32'hAAAAAAAA;
    no_of_packets_recv_at_2 = 32'hAAAAAAAA;
    no_of_packets_recv_at_3 = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_send_packets)
	$display("$1 -> For input port = %0d: index[%0d] = %0d , packet sent= %0d, to address = %0d",
		 $signed(32'd0),
		 $signed(32'd0),
		 $signed(index_0),
		 put__h949,
		 $signed(put__h949[31:24]));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_send_packets_1)
	$display("$1 -> For input port = %0d: index[%0d] = %0d , packet sent= %0d, to address = %0d",
		 $signed(32'd1),
		 $signed(32'd1),
		 $signed(index_1),
		 put__h4172,
		 $signed(put__h4172[31:24]));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_send_packets_2)
	$display("$1 -> For input port = %0d: index[%0d] = %0d , packet sent= %0d, to address = %0d",
		 $signed(32'd2),
		 $signed(32'd2),
		 $signed(index_2),
		 put__h7241,
		 $signed(put__h7241[31:24]));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_0_get &&
	  dut_SwitchNxM$output_ports_0_get[31:24] == 8'd0)
	$display("$2 -> For output port = %0d Packet %0d reached the CORRECT DESTINATION {to %0d at %0d}",
		 $signed(32'd0),
		 dut_SwitchNxM$output_ports_0_get,
		 $signed(dut_SwitchNxM$output_ports_0_get[31:24]),
		 $signed(32'd0));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_0_get &&
	  dut_SwitchNxM$output_ports_0_get[31:24] != 8'd0)
	$display("$2 -> For output port = %0d Packet %0d reached the WRONG DESTINATION {to %0d at %0d}",
		 $signed(32'd0),
		 dut_SwitchNxM$output_ports_0_get,
		 $signed(dut_SwitchNxM$output_ports_0_get[31:24]),
		 $signed(32'd0));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_0_get)
	$display("$2 -> For output port = %0d : No of packets received = %0d",
		 $signed(32'd0),
		 $signed(no_of_packets_recv_at_0 + 32'd1));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_1_get &&
	  dut_SwitchNxM$output_ports_1_get[31:24] == 8'd1)
	$display("$2 -> For output port = %0d Packet %0d reached the CORRECT DESTINATION {to %0d at %0d}",
		 $signed(32'd1),
		 dut_SwitchNxM$output_ports_1_get,
		 $signed(dut_SwitchNxM$output_ports_1_get[31:24]),
		 $signed(32'd1));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_1_get &&
	  dut_SwitchNxM$output_ports_1_get[31:24] != 8'd1)
	$display("$2 -> For output port = %0d Packet %0d reached the WRONG DESTINATION {to %0d at %0d}",
		 $signed(32'd1),
		 dut_SwitchNxM$output_ports_1_get,
		 $signed(dut_SwitchNxM$output_ports_1_get[31:24]),
		 $signed(32'd1));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_1_get)
	$display("$2 -> For output port = %0d : No of packets received = %0d",
		 $signed(32'd1),
		 $signed(no_of_packets_recv_at_1 + 32'd1));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_2_get &&
	  dut_SwitchNxM$output_ports_2_get[31:24] == 8'd2)
	$display("$2 -> For output port = %0d Packet %0d reached the CORRECT DESTINATION {to %0d at %0d}",
		 $signed(32'd2),
		 dut_SwitchNxM$output_ports_2_get,
		 $signed(dut_SwitchNxM$output_ports_2_get[31:24]),
		 $signed(32'd2));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_2_get &&
	  dut_SwitchNxM$output_ports_2_get[31:24] != 8'd2)
	$display("$2 -> For output port = %0d Packet %0d reached the WRONG DESTINATION {to %0d at %0d}",
		 $signed(32'd2),
		 dut_SwitchNxM$output_ports_2_get,
		 $signed(dut_SwitchNxM$output_ports_2_get[31:24]),
		 $signed(32'd2));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_2_get)
	$display("$2 -> For output port = %0d : No of packets received = %0d",
		 $signed(32'd2),
		 $signed(no_of_packets_recv_at_2 + 32'd1));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_3_get &&
	  dut_SwitchNxM$output_ports_3_get[31:24] == 8'd3)
	$display("$2 -> For output port = %0d Packet %0d reached the CORRECT DESTINATION {to %0d at %0d}",
		 $signed(32'd3),
		 dut_SwitchNxM$output_ports_3_get,
		 $signed(dut_SwitchNxM$output_ports_3_get[31:24]),
		 $signed(32'd3));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_3_get &&
	  dut_SwitchNxM$output_ports_3_get[31:24] != 8'd3)
	$display("$2 -> For output port = %0d Packet %0d reached the WRONG DESTINATION {to %0d at %0d}",
		 $signed(32'd3),
		 dut_SwitchNxM$output_ports_3_get,
		 $signed(dut_SwitchNxM$output_ports_3_get[31:24]),
		 $signed(32'd3));
    if (RST_N != `BSV_RESET_VALUE)
      if (dut_SwitchNxM$RDY_output_ports_3_get)
	$display("$2 -> For output port = %0d : No of packets received = %0d",
		 $signed(32'd3),
		 $signed(no_of_packets_recv_at_3 + 32'd1));
  end
  // synopsys translate_on
endmodule  // mkTb

