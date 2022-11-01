#! /usr/bin/tclsh

source config.tcl

exec mkdir -p $output_dir
exec mkdir -p $tcl_dir

proc multi_launch {} {
    source config.tcl
    set transitions [exec python3 $script_path ${verilog_file} ${netlist_file} ${clocks} ${core_lib} ${libs} ${tcl_dir} ${output_dir}]
    puts $transitions
    set file [glob ${tcl_dir}/*.tcl ]
    

    foreach trans $transitions {
        set template_tcl [open $file r]
        set exec_tcl [open $file.$trans w]

        while {[gets $template_tcl line] >= 0} {
            set newline [string map [list "temp" $trans] $line]
            puts $exec_tcl $newline
        }
        
        close $template_tcl 
        close $exec_tcl

        exec $sta_path $file.$trans
        puts "liberty ready: $trans" 
        file delete $file.$trans
         
    }

    
}

multi_launch

exec rm -rf $tcl_dir


exit
