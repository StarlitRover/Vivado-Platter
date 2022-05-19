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

# Rst_n
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U17} [get_ports rst_n]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_n]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN N17} [get_ports clk_im]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_im]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V5} [get_ports PC_Write]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V7} [get_ports IR_Write]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R10} [get_ports SWT[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U11} [get_ports SWT[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U16} [get_ports TURN]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U6} [get_ports g[16]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R5} [get_ports g[15]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U7} [get_ports g[14]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R6} [get_ports g[13]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R7} [get_ports g[12]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U8} [get_ports g[11]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T8} [get_ports g[10]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V9} [get_ports g[9]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T10} [get_ports g[8]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V11} [get_ports g[7]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T11} [get_ports g[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V12} [get_ports g[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R12} [get_ports g[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U13} [get_ports g[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R13} [get_ports g[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U14} [get_ports g[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T15} [get_ports g[0]]


