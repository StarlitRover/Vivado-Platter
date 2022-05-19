set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V5} [get_ports D[7]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T4} [get_ports D[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V6} [get_ports D[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T5} [get_ports D[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T6} [get_ports D[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V7} [get_ports D[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R8} [get_ports D[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U9} [get_ports D[0]]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CLK]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V10} [get_ports CLK]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R10} [get_ports CLR]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U11} [get_ports OE_]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U6} [get_ports Q[7]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R5} [get_ports Q[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U7} [get_ports Q[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R6} [get_ports Q[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R7} [get_ports Q[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U8} [get_ports Q[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T11} [get_ports Q[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V12} [get_ports Q[0]]