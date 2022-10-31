###############################################################################
# Created by write_sdc
# Mon Jul 25 08:35:05 2022
###############################################################################
current_design lib_sample
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name CLK -period 10.0000 [get_ports {CLK}]
set_clock_transition 0.1000 [get_clocks {CLK}]
set_clock_uncertainty 0.1000 CLK
set_propagated_clock [get_clocks {CLK}]

# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {BYPASS[0]}]
# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {BYPASS[1]}]
# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {BYPASS[2]}]
# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {EN_G}]
# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {RST_B}]
# set_input_delay 2.0000 -clock [get_clocks {CLK}] -add_delay [get_ports {SELECT_3}]

set_input_transition 5.0000 [get_ports {BYPASS EN_G RST_B SELECT_3}]

###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0200 [get_ports {CLK_OUT_DIV CLK_OUT_G CNTR_OUT1 CNTR_OUT2 CNTR_OUT3}]
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
