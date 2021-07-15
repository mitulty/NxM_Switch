package Switch;

import Utils::*;
import FIFO::*;
import FIFOF::*;
import GetPut :: *;
import Vector::*;


module mkSwitch(Switch_ifc#(t,n,m)) provisos(Eq#(t),Bits#(t,size_t));

    function  Int#(8) destCheck(t packet) provisos(Bits#(t,size_t),Eq#(t));
        Int#(8) x = unpack(pack(packet)[31:24]); // Here t is represents a general data type. Using t[31:24] directly will make it a Bit#(n) type.
                                            // Use of pack and unpack data type conversion vections will do the work.
        return x;
    endfunction: destCheck

    function int priority_scheduler(Bit#(n) priority_list);
        int x = 0;
        for(Integer i = 0 ; i < valueOf(n);i=i+1) begin
            if(priority_list[i] == 1'b1 )
                x = fromInteger(i);
        end
        return x;
    endfunction: priority_scheduler


    function Bit#(n) ring_counter(Bit#(n) priority_list);
        for(Integer i = 1 ; i < valueOf(n);i=i+1) 
            priority_list[i] = priority_list[i-1];
        priority_list[0] = priority_list[valueOf(n)-1];
        return priority_list;
    endfunction: ring_counter
    
    Vector#(m,Reg#(int)) select_if <- replicateM(mkReg(0));

    Vector#(m,Vector#(n,FIFOF#(t))) internal_fifofs;
    for(Integer i = 0 ; i < valueOf(m); i=i+1)
        internal_fifofs[i] <- replicateM(mkSizedFIFOF(1));

    Vector#(m,Reg#(Bit#(n))) priority_list;
    for(Integer i = 0 ; i < valueOf(m); i=i+1)
        priority_list[i] <- mkReg(1);

    Vector#(n,Put#(t)) iports;
    Vector#(m,Get#(t)) oports;    
    Vector#(n,FIFO#(t)) input_fifof;
    for(Integer j=0 ; j< valueOf(n) ; j=j+1)
        input_fifof[j] <- mkSizedFIFO(1);

    for(Integer j=0 ; j< valueOf(n) ; j=j+1)
        begin
            iports[j] =  interface Put#(t)
                                method Action put(t);
                                    input_fifof[j].enq(t);
                                endmethod: put
                         endinterface: Put;
        end
    
    for(Integer i=0 ;  i < valueOf(n) ; i=i+1) begin
        rule route;
            t packet_in = input_fifof[i].first(); // type t packet
            input_fifof[i].deq();
            let addr = destCheck(packet_in); 
           // $display("$0: Sending %0d {from %0d to %0d}",packet_in,i,addr);
            internal_fifofs[addr][i].enq(packet_in);
        endrule: route
    end

    // for(Integer i = 0; i<valueOf(m);i=i+1)begin
    //     for(Integer j = 0; j<valueOf(n);j=j+1)begin
    //         rule internal_fifo_content;
    //             $display("------------------INTERNAL_FIFO{%0d,%0d}----------------------------",i,j);
    //                 $display("Value at {%0d,%0d}= %0d",i,j,internal_fifofs[i][j].first());
    //             $display("----------------------------------------------");
    //         endrule: internal_fifo_content
    //     end
    // end
    
    // for(Integer i = 0; i<valueOf(n); i=i+1) begin
    //     rule input_fifo_content;
    //         $display("--------------------INPUT_FIFO{%0d}--------------------------",i);
    //             $display("Value at {%0d}= %0d",i,input_fifof[i].first());
    //         $display("----------------------------------------------");
    //     endrule: input_fifo_content
    // end
    for(Integer j = 0 ; j < valueOf(m); j=j+1) begin
        rule round_robin_select;
            if(internal_fifofs[j][select_if[j]].notEmpty()) begin

                let x = priority_list[j];
                select_if[j] <= priority_scheduler(x);
                priority_list[j] <= ring_counter(x);
            end
            else begin
                select_if[j] <= ((select_if[j] + 1) % fromInteger(valueOf(n)));
            end
        endrule: round_robin_select
    end

    for(Integer j = 0 ; j < valueOf(m); j=j+1) begin
            oports[j] =  interface Get#(t)
                                method ActionValue#(t) get();
                                    // This method will schedule the fifos for taking out the packets {LRU, Round-Robin}.
                                    let packet_out = internal_fifofs[j][select_if[j]].first(); // implicit condition
                                    internal_fifofs[j][select_if[j]].deq();
                                    return packet_out;
                                endmethod: get
                         endinterface: Get;
    end    
   
    interface input_ports = iports;
    interface output_ports = oports;

endmodule: mkSwitch

(* synthesize *)
module mkSwitchWrapper(Switch_ifc#(Bit#(Packet_Length_Max),N,M));
    let m <- mkSwitch;
    return m;
endmodule: mkSwitchWrapper
endpackage: Switch