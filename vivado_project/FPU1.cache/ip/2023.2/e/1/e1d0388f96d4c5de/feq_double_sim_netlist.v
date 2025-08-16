// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 17 03:57:50 2025
// Host        : LAPTOP-698P012S running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ feq_double_sim_netlist.v
// Design      : feq_double
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "feq_double,floating_point_v7_1_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_16 inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9552)
`pragma protect data_block
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
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
bqVpssTKMWopbRQaHlQl6Ef6MJTpHAMrLTBNwtjKscW4J8jMvInCXG8mq9TfISHLg2qnbQjxjwiG
mezXhN351lI2k3GQhI98nvQxwYmhdwh3rMeEzevm5F7SobDZqrUsEvD3B4uipsLNRtKFF+7hH2Y4
ScX2POQ4TYbHT8u8aso48590ZbrDrLC4iu6dSzolJ9eYR1GejI0Rpl6QNMuhHwDkLLF1QQ+bNumz
Q8BlsVH/rdG8lOGBEWyOVjWnppaIgpJYfiCVWHm63GgP7Lr8DOJ8DYDri8BnnbnCgf8oIy2wfbLV
31CAjwvNPsYtg7GJZu3iSW86T8R7yqlo4lNZxw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SiQ/KRse2esLd8T7zeAbbTbDjVHftLx6EFCgEsZquY3VF7JTE/QDq+5UqWvLl87Zw02QOxJq37Qy
dJEniwC3xw5Ztfmc+w0Vjj4gXPRx/6ItDopvVWtyBpbX50OalTnAUccqeZu6D7FI6pUstlyB/QtD
IGJxPckn3V7A+h+v+OKMMaDZM5ohV6jNCw2MBWcm1VoQZvs7cKzgjnhjaz0FW73FsEHP+s8pA6EP
j14ULuSnhja5oUP3RNaddyK9JCy1N3BNtFktw/DRjojafwUDJqOqhuuGCTF3MkG4OxYL7g2H3QFt
/ty90tJXP04tmaJYkMmwr3VhNd2XYiAi9AaL/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 44736)
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
