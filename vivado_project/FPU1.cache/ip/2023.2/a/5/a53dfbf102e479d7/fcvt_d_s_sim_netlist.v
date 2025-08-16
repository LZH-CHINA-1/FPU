// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sat Aug 16 20:30:06 2025
// Host        : LAPTOP-PT2H2IRH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fcvt_d_s_sim_netlist.v
// Design      : fcvt_d_s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fcvt_d_s,floating_point_v7_1_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_16,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata,
    m_axis_result_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [63:0]m_axis_result_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 2, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [1:0]m_axis_result_tuser;

  wire \<const0> ;
  wire aclk;
  wire [63:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_inst_m_axis_result_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_a_tready_UNCONNECTED;
  wire NLW_inst_s_axis_b_tready_UNCONNECTED;
  wire NLW_inst_s_axis_c_tready_UNCONNECTED;
  wire NLW_inst_s_axis_operation_tready_UNCONNECTED;
  wire [1:0]NLW_inst_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tuser[1] = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
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
  (* C_COMPARE_OPERATION = "8" *) 
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
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "1" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "1" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
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
  (* C_RESULT_FRACTION_WIDTH = "53" *) 
  (* C_RESULT_TDATA_WIDTH = "64" *) 
  (* C_RESULT_TUSER_WIDTH = "2" *) 
  (* C_RESULT_WIDTH = "64" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_16 inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_inst_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_inst_m_axis_result_tuser_UNCONNECTED[1:0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_inst_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_inst_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9024)
`pragma protect data_block
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
DmwsdP3gG0mVGF+ag8wLFF2R
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
VrA5SESrctz3lO/GQ+0tfU/v7s+8wKgcNYzeeGBag4/fLJTDxneIuwONj976361NvCBojnBYAwsn
5aZ/nA0JW1IhSP6k3R6z9IdjE/9gHa3T0s21Uqt7hC+p6L5udAimkwWoeAU+pAkQD1qpoyGrVy8U
JlZXhQXcRrwgQpSmAmj5jcNLkAItQ4r2pLCpXyO01GyHJmZh99HxCVSpM9v/NqCpHyPK44USHjMA
4LbkU90bLB8FE/ok/2cEmOIUEvCut7JxbJ2tMFKz/LZGgXc7VHV4dQpuyKyXj7uC1t9fb7tz8ogE
QzoDn04nttme/iUNWKlTUh3Zp2gbkak/1/jQjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JOPxI97C41vCH951Chib8MMlnu5tDaTcvZs4Jjm9itAPVjbx4JIfob9ZWq2u0eFBBnFSFp0mLO2Q
yEC9rHgTw6vHI8PzVmA6X4O855k9GA5wXAVRJWJt7klSmx+j1BZ7DaAjSkU7qhSdkfVbSh0T855f
4qQRn7f2/0WN7WL9gleC1qXSPkmYwhnnae2BRKaFPinWw6ik7uZ09xzTIyXLRZ6dqWgjDIo6di2m
/nCKzpFap1wl0Ar/TYx9/QZ8clToEXGa+IW9z77ygeNe7GZa0iFqpbmXj8zIKpR4ZNQ4aJBG/MD9
wNNpaw19f9hRzCRVWqAI8CDifY04op6rLwCQjA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 46736)
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
