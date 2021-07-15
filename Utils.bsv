package Utils;

import Vector::*;
import GetPut :: *;
typedef 3 N;
typedef 4 M;
typedef 100 No_Of_Packets_Per_Input_Port;
typedef 64 Packet_Length_Max;

interface Switch_ifc#(type t,numeric type n, numeric type m);// An interface of a switch with two subinterfaces.
    interface Vector#(n,Put#(t)) input_ports; // Input Interface which is a vector of Put#(t) interface.
    interface Vector#(m,Get#(t)) output_ports;// Output Interface which is a vector of Get#(t) interface.        
endinterface: Switch_ifc



endpackage: Utils