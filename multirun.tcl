#! /usr/bin/tclsh

source config.tcl

exec mkdir -p $output_dir
exec mkdir -p $tcl_dir

proc multi_launch {} {
    source config.tcl
    set transitions [exec python3 tcl-builder/main.py ${verilog_file} ${netlist_file} ${clocks} ${core_lib} ${libs} ${tcl_dir} ${output_dir}]
    puts $transitions
    set file [glob ${tcl_dir}/*.tcl ]
    

    foreach trans $transitions {
        set fd [open $file r]
        set newfd [open $file.temp w]

        while {[gets $fd line] >= 0} {
            set newline [string map [list "temp" $trans] $line]
            puts $newfd $newline
        }
        
        close $newfd
        close $fd 

        exec /home/avcolgate/OpenSTA/app/sta $file.temp
        puts "liberty ready: $trans" 
        file delete $file.temp
         
    }

    exec rm -rf $tcl_dir

}

multi_launch



exit
