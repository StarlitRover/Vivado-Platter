# 数码管段选
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN F14} [get_ports DP[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN N14} [get_ports DP[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN J13} [get_ports DP[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G13} [get_ports DP[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN F13} [get_ports DP[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN G14} [get_ports DP[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN M13} [get_ports DP[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN H14} [get_ports DP[7]]

# 数码管位选
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN P14} [get_ports AN[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN K13} [get_ports AN[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN J14} [get_ports AN[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN M17} [get_ports AN[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN C11} [get_ports AN[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN D10} [get_ports AN[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN C10} [get_ports AN[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN C9 } [get_ports AN[7]]

# 晶振
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN E3} [get_ports clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk]

# LED
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U6} [get_ports FR[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R5} [get_ports FR[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U7} [get_ports FR[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R6} [get_ports FR[0]]

# Rst_n
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U17} [get_ports rst_n]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_n]

# clk_RR,clk_F,clk_WB
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN N17} [get_ports clk_RR]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_RR]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN P17} [get_ports clk_F]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_F]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R17} [get_ports clk_WB]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_WB]

# R_Addr_A,R_Addr_B
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V5} [get_ports R_Addr_A[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T4} [get_ports R_Addr_A[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V6} [get_ports R_Addr_A[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T5} [get_ports R_Addr_A[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T6} [get_ports R_Addr_A[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V7} [get_ports R_Addr_B[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R8} [get_ports R_Addr_B[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U9} [get_ports R_Addr_B[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T9} [get_ports R_Addr_B[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V10} [get_ports R_Addr_B[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R10} [get_ports W_Addr[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U11} [get_ports W_Addr[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R11} [get_ports W_Addr[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U12} [get_ports W_Addr[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T13} [get_ports W_Addr[0]]

# Reg_W
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V14} [get_ports Reg_W]

# op
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T14} [get_ports ALU_OP[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V15} [get_ports ALU_OP[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R15} [get_ports ALU_OP[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U16} [get_ports ALU_OP[0]]