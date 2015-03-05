#!/usr/bin/tclsh

#define procedure for square
proc square {input} {
    set square_answer [expr $input * $input]
    return $square_answer
}

#use square as a building block in further procedures
proc sum_of_squares {input1 input2} {
    set sum_answer [expr square $input1 + $input2]
    return $sum_answer
}
#using square
puts [square 2]
puts [square (6+2)]
#using sum_of_squares
puts [sum_of_squares 3 6]
