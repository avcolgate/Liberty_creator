#! /usr/bin/tclsh

source config.tcl

exec rm -rf $output_dir

exec mkdir -p $output_dir
exec mkdir -p $tcl_dir

proc multi_launch {} {
    source config.tcl

    # list of string
    set transitions [split [exec python3 $trans_script_path ${liberty_path}] ,]
    puts $transitions
    # сделать проверка на непустую строку!!!

    set out [exec python3 $tcl_script_path ${verilog_file} ${netlist_file} ${liberty_path} ${clocks} ${tcl_dir} ${output_dir} ${transitions}]
    # puts $out


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
