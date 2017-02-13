//: Playground - noun: a place where people can play

import Cocoa


// Simple function definition, labelled parameters by default
func f1(x: Int, y: Int) -> Int { return x + y }

f1(x:1 ,y:2)

//f1(1, 2) // this is an error

// Use _ to specify that labels are not needed
func f2(_ x: Int, _ y: Int) -> Int { return x + y }

f2(1,3)

// Mix of labelled and unlabelled
func f3(_ x: Int, y: Int) -> Int { return x + y }

f3(1, y:3)

// Different label and argument names
func f4(x x1: Int, y y1: Int) -> Int { return x1 + y1 }
f4(x: 1, y: 3)

// Default argument values
func f5(x: Int = 1, y: Int) -> Int { return x + y }
f5(x: 1, y: 2)
f5(y: 3)