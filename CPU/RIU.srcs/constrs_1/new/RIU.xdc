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
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN E3} [get_ports clk_dis]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_dis]

# Rst_n
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U17} [get_ports rst_n_pulse]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_n_pulse]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN N17} [get_ports clk_pulse]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_pulse]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R15} [get_ports SWT[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U16} [get_ports SWT[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U6} [get_ports FR[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R5} [get_ports FR[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U7} [get_ports FR[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R6} [get_ports FR[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T15} [get_ports ST[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V16} [get_ports ST[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T16} [get_ports ST[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V17} [get_ports ST[0]]


