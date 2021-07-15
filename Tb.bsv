package Tb;

import Utils::*;
import Switch::*;
import Vector::*;
import GetPut :: *;


(* synthesize *)
module mkTb(Empty);
   // Switch_ifc#(Bit#(Packet_Length_Max),N,M) dut_SwitchNxM  <- mkSwitch;
    Switch_ifc#(Bit#(Packet_Length_Max),N,M) dut_SwitchNxM  <- mkSwitchWrapper;

    // This function just send the packet to only two output ports { 0 and 1 } for all the input ports.  
    function Bit#(Packet_Length_Max) packet_form( Integer i);   
        if(i % 2 == 0)    
            return (fromInteger(8388608+ i/2));
        else
            return (fromInteger(16777216+ i/2));
    endfunction: packet_form
    
    function  Int#(8) destCheck(t) provisos(Bits#(t,size_t),Eq#(t));
        Int#(8) x = unpack(pack(t)[31:24]); // Here t is represents a general data type. Using t[31:24] directly will make it a Bit#(n) type.
        // Use of pack and unpack data type conversion vections will do the work.
        return x;
        endfunction: destCheck
    
    Reg#(Bool) finish_flag <- mkReg(False);
    Vector#(M,Reg#(int)) no_of_packets_recv_at <- replicateM(mkReg(0));
    
    Vector#(N,Vector#(No_Of_Packets_Per_Input_Port,Bit#(Packet_Length_Max))) packets_in;
    for(Integer i = 0 ; i < valueOf(N); i= i+1) 
        packets_in[i] = genWith(packet_form);

    Vector#(N, Reg#(int)) index <- replicateM(mkReg(0));

    for(Integer i = 0; i < valueOf(N); i=i+1) begin
        rule send_packets if(index[i] < fromInteger(valueOf(No_Of_Packets_Per_Input_Port)));
            let addr = destCheck(packets_in[i][index[i]]);
            //$display("$1: Sending %0d {packet number: %0d} from input port %0d,sending to output port %0d",packets_in[i][index[i]],index[i],i,addr);
            dut_SwitchNxM.input_ports[i].put(packets_in[i][index[i]]);
            index[i] <= index[i] + 1;
            $display("$1 -> For input port = %0d: index[%0d] = %0d , packet sent= %0d, to address = %0d",i,i,index[i],packets_in[i][index[i]],addr);
            //no_of_packets_sent_to[addr] <= no_of_packets_sent_to[addr] + 1; // This will cause conflicts as they work on addr and not on i. Hence for 
                                                                              // for each rule there may be multiple pairs writing to same output port.           
        endrule: send_packets
    end

    for(Integer i = 0; i< valueOf(M); i=i+1) begin
        rule recv_packets;
            Bit#(Packet_Length_Max) packets_out <- dut_SwitchNxM.output_ports[i].get();
            let addr = destCheck(packets_out);
            no_of_packets_recv_at[i] <= no_of_packets_recv_at [i] + 1; 
            if(addr == fromInteger(i))
                $display("$2 -> For output port = %0d Packet %0d reached the CORRECT DESTINATION {to %0d at %0d}",i,packets_out,addr,i);
            else
                $display("$2 -> For output port = %0d Packet %0d reached the WRONG DESTINATION {to %0d at %0d}",i,packets_out,addr,i);
            $display("$2 -> For output port = %0d : No of packets received = %0d",i,no_of_packets_recv_at[i]+1);            
        endrule: recv_packets
    end
    
endmodule: mkTb
endpackage: Tb