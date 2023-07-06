/*
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
// */

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

/* Traditional approach using global funcion

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
 
var reversedNames = names.sorted(by: backward(_:_:))

names.sorted()
reversedNames
*/

// using closure
var reversedNames = names.sorted(by:{
    (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversedNames

// using closure with infering types
var reversedNames2 = names.sorted(by: {s1, s2 in return s1 > s2})


let nums = [0, 10, -2, 0, 21, 1.2, 0, 1.1, 0]

// sort all 0 to front of array, maintain order of non-0
nums.sorted(by: {(num: Double, _) -> Bool in return num == 0})
//nums.sorted(by: {x, y in return x > y})
//nums.sorted(by: { (x: Double, y: Double) in return x > y })

nums.sorted(by: {$0 > $1})
nums.sorted(by: >)
