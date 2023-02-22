# merge sort
proc merge_sort {lst} {
    set len [llength $lst]
    if {$len <= 1} {
        return $lst
    }
    set mid [expr {$len / 2}]
    set left [lrange $lst 0 [expr {$mid - 1}]]
    set right [lrange $lst $mid end]
    set left [merge_sort $left]
    set right [merge_sort $right]
    return [merge $left $right]
}

# merge two list
proc merge {lst1 lst2} {
    set res {}
    while {[llength $lst1] > 0 && [llength $lst2] > 0} {
        if {[lindex $lst1 0] <= [lindex $lst2 0]} {
            lappend res [lindex $lst1 0]
            set lst1 [lrange $lst1 1 end]
        } else {
            lappend res [lindex $lst2 0]
            set lst2 [lrange $lst2 1 end]
        }
    }
    lappend res {*}$lst1 {*}$lst2
    return $res
}


set lst {5 3 8 6 4 2 9 1 7}
set sorted [merge_sort $lst]
puts $sorted
