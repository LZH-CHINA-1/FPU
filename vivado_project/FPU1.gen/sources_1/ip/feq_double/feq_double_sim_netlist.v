// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 17 03:57:51 2025
// Host        : LAPTOP-698P012S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Lenovo/Desktop/JYD/FPU/vivado_project/FPU1.gen/sources_1/ip/feq_double/feq_double_sim_netlist.v
// Design      : feq_double
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feq_double,floating_point_v7_1_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module feq_double
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) input s_axis_b_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]s_axis_b_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [7:0]m_axis_result_tdata;

  wire \<const0> ;
  wire aclk;
  wire [0:0]\^m_axis_result_tdata ;
  wire m_axis_result_tvalid;
  wire [63:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [63:0]s_axis_b_tdata;
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
  (* C_A_FRACTION_WIDTH = "53" *) 
  (* C_A_TDATA_WIDTH = "64" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "64" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "53" *) 
  (* C_B_TDATA_WIDTH = "64" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "64" *) 
  (* C_COMPARE_OPERATION = "2" *) 
  (* C_C_FRACTION_WIDTH = "53" *) 
  (* C_C_TDATA_WIDTH = "64" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "64" *) 
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
  feq_double_floating_point_v7_1_16 inst
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
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9536)
`pragma protect data_block
+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
uRdTnPaiqqEScF+tbgGR7Kw=
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
dkucJ4jh6q/1u4GTe3btCUJIBteKnKZ1/pg7TTwPT8ysr+o71RaXJSoVgGEbWdpiuF6o7Wn2yFB2
ju1U0M5FBiw51PVa9fYWjjjMrjEpoHyiSKFjKwcxzpXXoIxh4i32rNB2AiMnfdsoH3lxk/VsZetq
82VcDgygTD6B+yKhWC3GGLr0b3i/3RWoxF0ju0s9omQ23vaTx1OcHx9tB4KjF8rBrlWyA5YuCTNs
XNK/sJDgiwMdjliefs7lzQHhtkUx1yOdrRxGplo/mW2qUD+7pYbhUHQPpo5VLI7YhDFMV1lgj+Qb
TXOrXT4AYfaTAuuZtQPNrkz8sH/j9VEbcky7hw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pW/1hBlZCjircVX4h8hVwgjGmiK1rSCfUB0wRuCEb91CkcxoKfUOyvy1lAzZxQb2Q/oJLGrDchNy
fFyhZbffX1suLEc730K+DBXwnqolqyWp3tDCFsHKF9lQlaYXO70kpkARs9Qqrdl2Bn+nymTJINhW
lM0zudSLdGX2Mp5pRJ4WZO2DadJHQy6Et+jIX1L65zVAL9LZzS2td3iYknIIAyiYEaRq3+CNf+w2
EfhCqnPwmYmkLhVaxD8phnAJONcankD8P52cSUDahgcAMWA/yj0axx3VaQoatxQwNrMyset2GEKb
rxlrH46KywbQM9WPf2yhUP31z57k0eUJHqFfJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43872)
`pragma protect data_block
+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
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
