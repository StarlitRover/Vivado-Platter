# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Data/Vivado/RIU/RIU.cache/wt [current_project]
set_property parent.project_path D:/Data/Vivado/RIU/RIU.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/Data/Vivado/RIU/RIU.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/Data/Vivado/RIU/RIU.srcs/sources_1/ip.coe
add_files D:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/test10.coe
add_files d:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/real_test.coe
read_verilog -library xil_defaultlib {
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/ALU.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/ALU_TOP.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/CU.v
  D:/Data/Vivado/RGB/RGB.srcs/sources_1/new/Eliminate_Shaking.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/FD_TOP.v
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/FlagU.v
  D:/Data/Vivado/Fetch_Decode/Fetch_Decode.srcs/sources_1/new/ID1.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/ID2.v
  D:/Data/Vivado/Fetch_Decode/Fetch_Decode.srcs/sources_1/new/IR.v
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/NumberDisplay.v
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/NumberDisplayOne.v
  D:/Data/Vivado/Fetch_Decode/Fetch_Decode.srcs/sources_1/new/PC.v
  D:/Data/Vivado/Register_File/Register_File.srcs/sources_1/new/RF.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/RF_top.v
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/RegisterF.v
  D:/Data/Vivado/ALU/ALU.srcs/sources_1/new/divider.v
  D:/Data/Vivado/RIU/RIU.srcs/sources_1/new/RIU_TOP.v
}
read_ip -quiet D:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/IM/IM.xci
set_property used_in_implementation false [get_files -all d:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/IM/IM_ooc.xdc]

read_ip -quiet D:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/DM/DM.xci
set_property used_in_implementation false [get_files -all d:/Data/Vivado/RIU/RIU.srcs/sources_1/ip/DM/DM_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/Data/Vivado/RIU/RIU.srcs/constrs_1/new/RIU.xdc
set_property used_in_implementation false [get_files D:/Data/Vivado/RIU/RIU.srcs/constrs_1/new/RIU.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top RIU_TOP -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef RIU_TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file RIU_TOP_utilization_synth.rpt -pb RIU_TOP_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
