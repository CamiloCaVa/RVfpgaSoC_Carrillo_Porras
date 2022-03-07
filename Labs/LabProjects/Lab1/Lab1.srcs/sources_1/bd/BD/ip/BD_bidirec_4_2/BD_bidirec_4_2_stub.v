// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Mar  6 20:18:51 2022
// Host        : HUGE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/USUARIO/Usuario/Documents/LibrosU/LibrosU/2021-2/Arquitectura/RVfpgaSoC/Labs/LabProjects/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_4_2/BD_bidirec_4_2_stub.v
// Design      : BD_bidirec_4_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bidirec,Vivado 2019.2" *)
module BD_bidirec_4_2(oe, inp, outp, bidir)
/* synthesis syn_black_box black_box_pad_pin="oe,inp,outp,bidir" */;
  input oe;
  input inp;
  output outp;
  output bidir;
endmodule