#HCS-A01板卡上的实际开关,xdc文件里，#后面是注释
#配置输入端口A、B、C、D、E到输入设备上，譬如开关上
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V5} [get_ports A[3]]
#配置A端口到引脚V5上；HCS-A01板卡上，V5接的是20位开关的最左边一个开关
#板卡上每个设备接的是什么引脚，请看HCS-A01的说明书pdf

#上面两句可以合成一句，用-dict连接，譬如下面B、C、D、E端口的配置
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T4} [get_ports A[2]]
#意思是将端口B配置到FPGA引脚T4上，并约束其电平为1.8V；HCS-A01板卡上，T4接的是20位开关的左边第二个开关；下面类似
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V6} [get_ports A[1]]
#V6对应左边第三个开关
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T5} [get_ports A[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V7} [get_ports B[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R8} [get_ports B[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U9} [get_ports B[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T9} [get_ports B[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R10} [get_ports C0]


#配置输出端口F到输出设备上，譬如显示灯上
#set_property IOSTANDARD LVCMOS18 [get_ports F] #约束F输出端口的管脚为1.8V电平
#set_property PACKAGE_PIN U6 [get_ports F]    #配置F端口到引脚U6上；HCS-A01板卡上，U6接的是20位LED灯的最左边显示灯
#上面两句也等价于下面一句：
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U6} [get_ports F[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R5} [get_ports F[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U7} [get_ports F[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R6} [get_ports F[0]]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U8} [get_ports C4]

#板级验证时，拨动最左边的5个开关，只要有三个是为1，则最左边的LED灯就会亮。