#! /usr/bin/tclsh

source config.tcl

exec rm -rf $output_dir
exec rm -rf $tcl_dir
exec mkdir -p $output_dir
exec mkdir -p $tcl_dir

proc multi_launch {} {
    source config.tcl

    # check if files are missing
    #TODO: add ${merge_lib_path}
    set file_list [list ${verilog_file} ${netlist_file} ${lef_path} ${liberty_path} ${sta_path} ${make_tcl_path} ${get_trans_path} ${get_leakage_path} ${get_size_path} ]
    foreach existing_file $file_list {
        if {[file exists ${existing_file}] eq 0} {
            puts "fatal: no such file $existing_file"
            exit
        }
    }

    # list of string
    set transitions [split [exec python3 $get_trans_path ${liberty_path}] ,]
    if {$transitions eq ""} {
        puts "fatal: no transitions found in liberty!"
        exit
    }

    set out [exec python3 $make_tcl_path ${verilog_file} ${netlist_file} ${liberty_path} ${clocks} ${tcl_dir} ${output_dir} ${transitions}]
    set template_path [glob ${tcl_dir}/*.tcl ]


    if {${clocks} eq {} } {
        set clock_transitions {"NaN"}
    } else {
        set clock_transitions $transitions
    }
    
    foreach clk_trans $clock_transitions {
        foreach pin_trans $transitions {

            set exec_path ${tcl_dir}/make_lib_clk_${clk_trans}_pin_${pin_trans}.tcl

            set template_tcl [open $template_path r]
            set exec_tcl [open $exec_path w]

            while {[gets $template_tcl line] >= 0} {
                set newline [string map [list "%clk%" $clk_trans "%pin%" $pin_trans] $line]
                puts $exec_tcl $newline
            }

            close $template_tcl 
            close $exec_tcl

            exec $sta_path $exec_path
            puts "liberty ready: clk_${clk_trans}_pin_${pin_trans}" 

            file delete $exec_path
        }
    }

    set design_size [exec python3 $get_size_path ${lef_path}]
    puts "size = $design_size" 

    set design_leakage [exec python3 $get_leakage_path output/${design_name}_power.txt]
    puts "leakage = $design_leakage"

    # exec python3 $merge_lib_path ${output_dir}
    # puts "full liberty ready!"

}

multi_launch

exec rm -rf $tcl_dir


exit
