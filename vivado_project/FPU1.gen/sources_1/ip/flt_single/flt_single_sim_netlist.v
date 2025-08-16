// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 17 03:58:28 2025
// Host        : LAPTOP-698P012S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Lenovo/Desktop/JYD/FPU/vivado_project/FPU1.gen/sources_1/ip/flt_single/flt_single_sim_netlist.v
// Design      : flt_single
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "flt_single,floating_point_v7_1_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module flt_single
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_result_tdata;

  wire \<const0> ;
  wire aclk;
  wire [0:0]\^m_axis_result_tdata ;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [31:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_inst_m_axis_result_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_a_tready_UNCONNECTED;
  wire NLW_inst_s_axis_b_tready_UNCONNECTED;
  wire NLW_inst_s_axis_c_tready_UNCONNECTED;
  wire NLW_inst_s_axis_operation_tready_UNCONNECTED;
  wire [7:1]NLW_inst_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[7] = \<const0> ;
  assign m_axis_result_tdata[6] = \<const0> ;
  assign m_axis_result_tdata[5] = \<const0> ;
  assign m_axis_result_tdata[4] = \<const0> ;
  assign m_axis_result_tdata[3] = \<const0> ;
  assign m_axis_result_tdata[2] = \<const0> ;
  assign m_axis_result_tdata[1] = \<const0> ;
  assign m_axis_result_tdata[0] = \^m_axis_result_tdata [0];
  GND GND
       (.G(\<const0> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "1" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_S = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "1" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_A = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_S = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ADD = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_SUB = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_PART = "xc7k325tffg900-2" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "8" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "1" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  flt_single_floating_point_v7_1_16 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata({NLW_inst_m_axis_result_tdata_UNCONNECTED[7:1],\^m_axis_result_tdata }),
        .m_axis_result_tlast(NLW_inst_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_inst_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_inst_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_inst_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_inst_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_inst_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a0YWQ7+qsFDynIsgcaYJkmtheivPku6q/+FypvgqXkgXBx0RuvqZZRq5rvXNEDRXm1sBIvl6EKtX
zgqa51pfIp8xsj8jy46tM5m+Btdt6lOZWvfjMqq503/tDA6hbzSjV1dkqDxCZS9uxKK3i4r7vPpr
xX1N8f0waVvjmcIQ7Zo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
scqc8sVMTO4pbIZBt3gsMiYyRI8ZWlF7RywK1QAH/0NTQc6nZ0o+twlu/CZQVoozOWeiEhMUdZI4
G2xjnGJmqPYT1xFfzQvsTTOl5+2ne/qxNeNDzhgwrQZnnJNne8JI1MCvIzTBMQakU1FpCceLLqG+
IgxnzKKl16y3unNDmAS5akz9oo0actgr+YO48UcuE6AsqTlDDZ3FW4WgPQ7LaG7mW2NcAR/KPElX
DUOi/DfA/TonslJnmcv1JElPiZF8zOWNvkGIeFNxDeFvdAyy6rytuXw+ri84/2tkRhWSjds6/QhL
2LeX1Lcd6oj81tLmi2v5+THgWopxBbJalVNqDQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AqwfA7ik0ji/mShjAedDfDvCeuhiSpssQzsavcdDQ37353US9ccpoSSrVj7+p+0Mv/j8+tstVWox
OOEdMFbcnb/qK/nFOzy3cPwDbDuDDWNYxSFhPkfGdBmfJwww1WdR+9611+nnwx2/mPf9L0gbPJqh
XbVA71Prhh3bT/kF4YU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s6MtecbjWyJ+ywrGZoZMfaV68+RlUdl8UYAXu1WIEQ+9+UmK9qOvTkneMhH/it8CkonVcCXAu9cj
e5S2CmGeqRearBYFRi90348sH5o/LVDeZAF/5f1HMce9t98TOi/mUTdViIMvDvl4QJQdoiD81oW2
YeeK3+dedH8kMoCTLeVrehmH9zPHWMqujJXFadZrlOJCtbIonPK9rua/KgFkJmAb+kC8ftVQ9FBE
30EubxSYFn5GEj3wWHDBp0iREZGvz1WrFjEAK7TYte/p/rst4sQINR5c9EeGn7rgwbBv+/rEcFqe
DoLW+SH+5lMA2VkB0kwOqM5SIevFkvHoO+cm1A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qHd7kVIHk2nW9z9o/ssblNTJydsEB6f2005zhrORKZiQegVozM9cLf6p3yieW+B6d3Dyf4K1YRxu
MSFs4jpSBoafixS35ZqmA9Z2560AM0zgFwXqQz3vMCmya0rGbXsKKU5t30DuaPsTxklot/msACKc
Ii44SkfF+mYulNQmW/3C9zOoATzZTfbaxmtGQGVfZ797un9T3St10GxmUeqVOVrCJX3cmL+TBo9l
ju9RS7snxXkNNUToffWIG+7E0fj4Nx5afVrIrlU5n5mPOMBhnQPykvDtny1ymBuXarojlg2GaOiO
Gijk1Ur2Ww70GIyNMYvbQvbky7tWIZMVzWnpgg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hqyDXVm3kqgdksTikbfaLwNXwXnAhxOpnaUeh+IePhsgJV10POwwv4Lq3PJZZoQH6bpYh3j5iNmi
oP0l9RDtCadTrbZcMQYh7gIeoA/npLkTWtPHsc1y3Lqvg8RZ+i96v4o06/FOzUTxbyCMpQDkNuog
/ObdODL9tMDJt8OZD/ryJsi9ALPt2x5mM/t6lRktMLPVPXQqJJoae29IIemIgiW5uCLSvClxVaLi
0QiMrqfzhZ0EEnYcmlpIB5EUUpdT4C4xELT2hjK3i29b2pqGQBpWpA6vrpYJ0lUqJKKswVEua548
otL87oa1DlvL759OyYtZKVB2PyMT/lB5Ei3/sA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ql5DTqcC2/atxTDvngVlI/kk1cWQZE4MTn0f4TfSFiLzUeIQTlpc7pHY/37C7Lj4pVKnKvd8/1m4
16zV8spfwK3FiJsCd1V+ie8oYpPFoyHq1pN0ZLou3rSx1sSK432xFyW3Gti36CsNf+c8RnQOBj+k
2OIv6MbXB7KJ/qEsPGuFX++EKUi2uqzXVP24V0aTeU/1HBlHJj5kp4Hrye/OBUs97oEjHThLWkTg
qyaJrsC7wK2S25cmatIRDIUK0IyhgQebfRaI58ECvlkvAERto+wSc+IiEbMlozUc9BpPfiYQ860R
y9syXBD+DKN3rdFDodIZPz8oTeflYQ3l8R1nAw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
OU5U7E7GS/wAU7ZK7cKYwDtxZTz8udv2eFw6TTekZVDwsGD7ASDXQci/aj54U03P/Ndu22oiVrh9
p5XiZR5K2dq1+Ig7cWKzcqmS749IfnoHmxiVHqxe8yTCaA/kchcNHqV6cYsKSeXMlUy0BaZCCWOm
BHDymV4tHHSh3flJiTEVNKKLo13TDyH20Jp+H1Lobna7b+7ta38HTzJgdvrlndLCblJF4YTipaqe
Rwpcq3qnyba/yvIvMgntpO3n62VLICl3bhIn56J5vNJ9NeKQvNNiZuV0Wwu9e2PcTndU6cK0YQeo
2rhSY/QIUIruKJlhgV4KokcsWFxgGB6FpJPcmVyAEKbt86PyP27fpa/xEAiFA6/RTqna5n2UoEqw
3CXRpl1ofL3mA2BSxkvUgy7snPi69GGmES38kXDyBXRK3TE1ioEAn01VOtAECkWnixYbQQN+ZsxJ
2j/cl1magUN+WAyPYmJdT/Yn+DcSXOOuP8eFtHbn79L0dw/eMOIneEOz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPqEJBzP7kJ5qh0HJOsC9hM+wpN2Rd2KgJURTsXW8rmmlg9OanRy0B4b72Xhl9R3cAw2LTY7sOLq
PQ2RVaYRSmQJ2Vx/uz5CXcD8FFhYkRQ8II7zfyESwjXm6KQvPSLQjysDW8sWe5wHJr3sT8CJ0sBW
tnypWvmSXEFb0jw5TuTcBS3MoAObO3LhLWIkQLFIjxkQdNgyE/btnR4rItz0/5fhQCmfRfH8WYKj
Dgpb2WKMoiEzVvjyUKYhy9xPP31CTo36/rFzV5BBPnUmYErXSS7t8KSDHzKsUzWrI9O51SRdHhbs
uwKaSeAHxqPOjOQYV2S+PsfO1x2Uk4vkA/LhRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9376)
`pragma protect data_block
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
o369KR9x7mno/iTwSAsMjgvMEvTa0roNC+Yzyw==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a0YWQ7+qsFDynIsgcaYJkmtheivPku6q/+FypvgqXkgXBx0RuvqZZRq5rvXNEDRXm1sBIvl6EKtX
zgqa51pfIp8xsj8jy46tM5m+Btdt6lOZWvfjMqq503/tDA6hbzSjV1dkqDxCZS9uxKK3i4r7vPpr
xX1N8f0waVvjmcIQ7Zo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
scqc8sVMTO4pbIZBt3gsMiYyRI8ZWlF7RywK1QAH/0NTQc6nZ0o+twlu/CZQVoozOWeiEhMUdZI4
G2xjnGJmqPYT1xFfzQvsTTOl5+2ne/qxNeNDzhgwrQZnnJNne8JI1MCvIzTBMQakU1FpCceLLqG+
IgxnzKKl16y3unNDmAS5akz9oo0actgr+YO48UcuE6AsqTlDDZ3FW4WgPQ7LaG7mW2NcAR/KPElX
DUOi/DfA/TonslJnmcv1JElPiZF8zOWNvkGIeFNxDeFvdAyy6rytuXw+ri84/2tkRhWSjds6/QhL
2LeX1Lcd6oj81tLmi2v5+THgWopxBbJalVNqDQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AqwfA7ik0ji/mShjAedDfDvCeuhiSpssQzsavcdDQ37353US9ccpoSSrVj7+p+0Mv/j8+tstVWox
OOEdMFbcnb/qK/nFOzy3cPwDbDuDDWNYxSFhPkfGdBmfJwww1WdR+9611+nnwx2/mPf9L0gbPJqh
XbVA71Prhh3bT/kF4YU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
s6MtecbjWyJ+ywrGZoZMfaV68+RlUdl8UYAXu1WIEQ+9+UmK9qOvTkneMhH/it8CkonVcCXAu9cj
e5S2CmGeqRearBYFRi90348sH5o/LVDeZAF/5f1HMce9t98TOi/mUTdViIMvDvl4QJQdoiD81oW2
YeeK3+dedH8kMoCTLeVrehmH9zPHWMqujJXFadZrlOJCtbIonPK9rua/KgFkJmAb+kC8ftVQ9FBE
30EubxSYFn5GEj3wWHDBp0iREZGvz1WrFjEAK7TYte/p/rst4sQINR5c9EeGn7rgwbBv+/rEcFqe
DoLW+SH+5lMA2VkB0kwOqM5SIevFkvHoO+cm1A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qHd7kVIHk2nW9z9o/ssblNTJydsEB6f2005zhrORKZiQegVozM9cLf6p3yieW+B6d3Dyf4K1YRxu
MSFs4jpSBoafixS35ZqmA9Z2560AM0zgFwXqQz3vMCmya0rGbXsKKU5t30DuaPsTxklot/msACKc
Ii44SkfF+mYulNQmW/3C9zOoATzZTfbaxmtGQGVfZ797un9T3St10GxmUeqVOVrCJX3cmL+TBo9l
ju9RS7snxXkNNUToffWIG+7E0fj4Nx5afVrIrlU5n5mPOMBhnQPykvDtny1ymBuXarojlg2GaOiO
Gijk1Ur2Ww70GIyNMYvbQvbky7tWIZMVzWnpgg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hqyDXVm3kqgdksTikbfaLwNXwXnAhxOpnaUeh+IePhsgJV10POwwv4Lq3PJZZoQH6bpYh3j5iNmi
oP0l9RDtCadTrbZcMQYh7gIeoA/npLkTWtPHsc1y3Lqvg8RZ+i96v4o06/FOzUTxbyCMpQDkNuog
/ObdODL9tMDJt8OZD/ryJsi9ALPt2x5mM/t6lRktMLPVPXQqJJoae29IIemIgiW5uCLSvClxVaLi
0QiMrqfzhZ0EEnYcmlpIB5EUUpdT4C4xELT2hjK3i29b2pqGQBpWpA6vrpYJ0lUqJKKswVEua548
otL87oa1DlvL759OyYtZKVB2PyMT/lB5Ei3/sA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ql5DTqcC2/atxTDvngVlI/kk1cWQZE4MTn0f4TfSFiLzUeIQTlpc7pHY/37C7Lj4pVKnKvd8/1m4
16zV8spfwK3FiJsCd1V+ie8oYpPFoyHq1pN0ZLou3rSx1sSK432xFyW3Gti36CsNf+c8RnQOBj+k
2OIv6MbXB7KJ/qEsPGuFX++EKUi2uqzXVP24V0aTeU/1HBlHJj5kp4Hrye/OBUs97oEjHThLWkTg
qyaJrsC7wK2S25cmatIRDIUK0IyhgQebfRaI58ECvlkvAERto+wSc+IiEbMlozUc9BpPfiYQ860R
y9syXBD+DKN3rdFDodIZPz8oTeflYQ3l8R1nAw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
OU5U7E7GS/wAU7ZK7cKYwDtxZTz8udv2eFw6TTekZVDwsGD7ASDXQci/aj54U03P/Ndu22oiVrh9
p5XiZR5K2dq1+Ig7cWKzcqmS749IfnoHmxiVHqxe8yTCaA/kchcNHqV6cYsKSeXMlUy0BaZCCWOm
BHDymV4tHHSh3flJiTEVNKKLo13TDyH20Jp+H1Lobna7b+7ta38HTzJgdvrlndLCblJF4YTipaqe
Rwpcq3qnyba/yvIvMgntpO3n62VLICl3bhIn56J5vNJ9NeKQvNNiZuV0Wwu9e2PcTndU6cK0YQeo
2rhSY/QIUIruKJlhgV4KokcsWFxgGB6FpJPcmVyAEKbt86PyP27fpa/xEAiFA6/RTqna5n2UoEqw
3CXRpl1ofL3mA2BSxkvUgy7snPi69GGmES38kXDyBXRK3TE1ioEAn01VOtAECkWnixYbQQN+ZsxJ
2j/cl1magUN+WAyPYmJdT/Yn+DcSXOOuP8eFtHbn79L0dw/eMOIneEOz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPqEJBzP7kJ5qh0HJOsC9hM+wpN2Rd2KgJURTsXW8rmmlg9OanRy0B4b72Xhl9R3cAw2LTY7sOLq
PQ2RVaYRSmQJ2Vx/uz5CXcD8FFhYkRQ8II7zfyESwjXm6KQvPSLQjysDW8sWe5wHJr3sT8CJ0sBW
tnypWvmSXEFb0jw5TuTcBS3MoAObO3LhLWIkQLFIjxkQdNgyE/btnR4rItz0/5fhQCmfRfH8WYKj
Dgpb2WKMoiEzVvjyUKYhy9xPP31CTo36/rFzV5BBPnUmYErXSS7t8KSDHzKsUzWrI9O51SRdHhbs
uwKaSeAHxqPOjOQYV2S+PsfO1x2Uk4vkA/LhRA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m8j4RUnltuerdWPeJlulDWDoDa/PG/PTKX6dSP18ncmz5GLMk06VrI/127waA6Z9MfG1IkXJAKkb
SrBgHkp50ad8BCCXSoEZOvUm9VgQ3uyYNMD6ILZ8NXAk/+YbjwgwrJ2eJW+bN4b4B+viWqRi/a1K
CNDlJODyW0dp5DpN+VWpV7e4prf4wEeZOnhTX+//qeCzIhyp8RzRYZ2jL0kegYcye4lu4Cxm+/ft
TqiY85nsg0Q+oxknUG0brHOQhNvwvXAt0mD7UuvVaYRmbQtov99C3S6gx8uAV6twyUBALVyNVRVQ
r1mq9flrr66BxhRaLtxzNBoAsAlWERVQeEyFXQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lvvSnv0/WXrzVe/0fiJz631C1ALwET6BJirJloy11AiqT+2FaWRU2NiIL9AkpMy+K0P9oLsMDuHi
nYjFZuhwH+jFsRKcA7dAFOw5wtDI/eK10ujWyuIDqYQmYI8K7CztKLFsnObeM0jG3U0IoI6yzsE/
ru4jEU0II3+c9aiIgA7OO8Etr3dcAnDmTcmkb4yQjNe2NUBFaFzxow6OmdtTtc6ne/lHEEkjJ0Px
sfjvhaWu5gD0Kn9sO7OgohHuOga6Ys9EWEBjokkTULZFjDdMNd7LQ5Tgy06RBMdQ11yGWIVM9XFN
CvPtfbx5Hy2lvsgklfkEnDJJ+Q9Eq+T5330EoA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 45648)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
