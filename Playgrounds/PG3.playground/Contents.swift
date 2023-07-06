/*
 
 Closures are three types:
 
 1. Global functions: these are also closures, in other words, these are
 closures that have a name and don't capture any value.
 
 2. Nested functions: these closures have a name, and can capture values from
 their enclosing function
 
 3. Closure expressions: these are unnamed closures, written in light weight
 syntax, can capture values form their surrounding context.
 
*/


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


func add(_ x: Int, _ y: Int) -> Int{
    return x + y
}

func subtract (_ x: Int, _ y: Int) -> (r1: Int, r2: Int?) {
    return (x-y, y-x)
}


let result = subtract(20, 30)
//print(Int(result.r2))


var x = 10
var y = 20

"x: \(x) \ny: \(y)"

func swapNumbers(_ x: inout Int, _ y: inout Int){
    let temp = x
    x = y
    y = temp
}

swapNumbers(&x, &y)

var additionFunction: (Int, Int) -> Int = add

additionFunction(10, 20)


