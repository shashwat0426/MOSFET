// Verilog netlist created by S-Edit 16.30
// Written on Mon Jan 24 11:49:14 2022

// Design:                CMOS
// Cell:                  Cell30
// View type:             connectivity
// View name:             view0
// View interface:        view0
// Design path:           D:\Microelectronics\CMOS
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <no>



module NMOS(
	D,
	G,
	S
);
inout D;
input G;
inout S;
parameter L=2.5e-007;
parameter M=1;
parameter W=2.5e-006;
parameter Model="NMOS";
parameter AD=2.25e-012;
parameter AS=2.25e-012;
parameter PD=6.8e-006;
parameter PS=6.8e-006;
parameter NRD=0;
parameter NRS=0;
parameter RDC=0;
parameter RSC=0;
parameter RSH=0;
endmodule // NMOS


module PMOS(
	D,
	G,
	S
);
inout D;
input G;
inout S;
parameter L=2.5e-007;
parameter M=1;
parameter W=2.5e-006;
parameter Model="PMOS";
parameter AD=2.25e-012;
parameter AS=2.25e-012;
parameter PD=6.8e-006;
parameter PS=6.8e-006;
parameter NRD=0;
parameter NRS=0;
parameter RDC=0;
parameter RSC=0;
parameter RSH=0;
endmodule // PMOS


module PrintVoltage(
	Vprint
);
inout Vprint;
parameter Enabled="Enabled";
endmodule // PrintVoltage


module VoltageSource_DC(
	Neg,
	Pos
);
inout Neg;
inout Pos;
parameter V=5;
endmodule // VoltageSource_DC


module VoltageSource_Pulse(
	Neg,
	Pos
);
inout Neg;
inout Pos;
parameter ROUND=0;
parameter Period=2e-007;
parameter VLow=0;
parameter Delay=0;
parameter VHigh=5;
parameter FallTime=5e-009;
parameter RiseTime=5e-009;
parameter PulseWidth=9.5e-008;
endmodule // VoltageSource_Pulse


module Cell30(
	Gnd,
	In,
	Out,
	Vdd
);
inout Gnd;
input In;
output Out;
inout Vdd;

NMOS NMOS_1(
	.D(Out),
	.G(In),
	.S(Gnd)
);
PMOS PMOS_1(
	.D(Out),
	.G(In),
	.S(Vdd)
);
PrintVoltage PV1(
	.Vprint(In)
);
PrintVoltage PV2(
	.Vprint(Out)
);
VoltageSource_DC #(.V(3)) V1(
	.Neg(Gnd),
	.Pos(Vdd)
);
VoltageSource_Pulse #(.VHigh(3)) V2(
	.Neg(Gnd),
	.Pos(In)
);
endmodule // Cell30

