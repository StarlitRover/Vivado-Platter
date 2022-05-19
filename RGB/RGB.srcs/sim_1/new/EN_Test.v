`timescale 1ns/100ps                             //仿真时间单位/时间精度，时间单位要大于或者等于时间精度

module EN_Test();

reg EN,clk;
wire EN_pulse;

//初始化过程块
    initial 
    begin 
        EN=0;
        clk=0;
    end

    always
    begin
        #5;clk = ~clk;
    end
    always
    begin
        #100;EN=~EN;
        #1050;EN=~EN;
        #707;EN=~EN;
        #897;EN=~EN;
        #10;EN=~EN;
        #1068;EN=~EN;
        #100;EN=~EN;
        #100000000;EN=~EN;
    end
    //module调用例化格式
    Eliminate_Shaking ES(.key(EN),.clk(clk),.key_pulse(EN_pulse));
endmodule