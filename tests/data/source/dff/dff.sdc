# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Thu Nov 24 13:44:01 MSK 2022

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design dff

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
