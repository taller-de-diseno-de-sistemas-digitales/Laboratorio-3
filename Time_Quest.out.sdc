## Generated SDC file "Time_Quest.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Mon Sep 16 10:35:52 2019"

##
## DEVICE  "5CSEMA5F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {reset} -period 1.000 -waveform { 0.000 0.500 } [get_ports {reset}]
create_clock -name {clk} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.160  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.160  
set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {reset}]  0.160  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {reset}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 0.160  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 0.160  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {reset}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {reset}]  0.160  
set_clock_uncertainty -rise_from [get_clocks {reset}] -rise_to [get_clocks {clk}]  0.160  
set_clock_uncertainty -rise_from [get_clocks {reset}] -fall_to [get_clocks {clk}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {reset}] -rise_to [get_clocks {clk}]  0.160  
set_clock_uncertainty -fall_from [get_clocks {reset}] -fall_to [get_clocks {clk}]  0.160  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {a[0]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {a[0]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {a[1]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {a[1]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {a[2]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {a[2]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {b[0]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {b[0]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {b[1]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {b[1]}]
set_input_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {b[2]}]
set_input_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {b[2]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {y[0]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {y[0]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {y[1]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {y[1]}]
set_output_delay -add_delay -max -clock [get_clocks {clk}]  3.000 [get_ports {y[2]}]
set_output_delay -add_delay -min -clock [get_clocks {clk}]  2.000 [get_ports {y[2]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

