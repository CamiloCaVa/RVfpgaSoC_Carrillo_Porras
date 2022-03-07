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
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.cache/wt [current_project]
set_property parent.project_path E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_output_repo e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include
} [current_fileset]
read_verilog {
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh
  E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh
}
set_property file_type "Verilog Header" [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh]
set_property is_global_include true [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/assign.svh]
set_property is_global_include true [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/SweRVEh1CoreComplex/include/common_defines.vh]
set_property file_type "Verilog Header" [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh]
set_property is_global_include true [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/OtherSources/pulp-platform.org__common_cells_1.20.0/include/common_cells/registers.svh]
set_property file_type "Verilog Header" [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh]
set_property is_global_include true [get_files E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/Interconnect/AxiInterconnect/pulp-platform.org__axi_0.25.0/include/axi/typedef.svh]
read_mem E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/sw/boot_main.mem
read_verilog -library xil_defaultlib E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/imports/src/SweRVolfSoC/bidir.v
read_ip -quiet e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom  -dir E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1 -new_name BD_bidirec_1_2 -ip [get_ips BD_bidirec_1_2]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top BD_bidirec_1_2 -part xc7a100tcsg324-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix BD_bidirec_1_2_ BD_bidirec_1_2.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_1_2_stub.v
 lappend ipCachedFiles BD_bidirec_1_2_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_1_2_stub.vhdl
 lappend ipCachedFiles BD_bidirec_1_2_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_1_2_sim_netlist.v
 lappend ipCachedFiles BD_bidirec_1_2_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_bidirec_1_2_sim_netlist.vhdl
 lappend ipCachedFiles BD_bidirec_1_2_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp BD_bidirec_1_2.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips BD_bidirec_1_2]
}

rename_ref -prefix_all BD_bidirec_1_2_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef BD_bidirec_1_2.dcp
create_report "BD_bidirec_1_2_synth_1_synth_report_utilization_0" "report_utilization -file BD_bidirec_1_2_utilization_synth.rpt -pb BD_bidirec_1_2_utilization_synth.pb"

if { [catch {
  file copy -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2.dcp e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2.dcp e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2_stub.v e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2_stub.vhdl e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2_sim_netlist.v e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.runs/BD_bidirec_1_2_synth_1/BD_bidirec_1_2_sim_netlist.vhdl e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.ip_user_files/ip/BD_bidirec_1_2]} {
  catch { 
    file copy -force e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.v E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.ip_user_files/ip/BD_bidirec_1_2
  }
}

if {[file isdir E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.ip_user_files/ip/BD_bidirec_1_2]} {
  catch { 
    file copy -force e:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.srcs/sources_1/bd/BD/ip/BD_bidirec_1_2/BD_bidirec_1_2_stub.vhdl E:/RvfpgaSoC/Labs/LabSolution/Lab1/Lab1.ip_user_files/ip/BD_bidirec_1_2
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
