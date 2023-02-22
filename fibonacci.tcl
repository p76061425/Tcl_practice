# 計算費氏數列的前 n 項
# 指令參考: tclsh fibonacci.tcl 15

set n [lindex $argv 0]
set a 0
set b 1

for {set i 0} {$i < $n} {incr i} {
    puts $a
    set temp $b
    set b [expr {$a + $b}]
    set a $temp
}
