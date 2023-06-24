import Cocoa

/* Strings, sets
var greeting = "Hello, playground"


var flag: Bool = true

//print(flag)
//flag.toggle()
//print(flag)
//print(!flag)
//print(flag)


var names: Array<String> = Array()
var names2: [String] = []
names.append("shiva")
names2.append("reddy")
//print(names)
//print(names2)


var set_1: Set<Int> = Set()
var result = set_1.insert(21)

set_1.insert(21)
set_1.insert(22)
print(set_1)

// */



/* Enums, Switch-case
enum Days {
	case monday, sunday
}

let today = Days.monday

switch today{
case .monday:
	print("it is monday")
case .sunday:
	print("it is a holday")
default:
	print("this is default")
}
 
let veg = "red pepper"

switch veg{
case "a":
	print("")
case "b":
	print("b")
case "c":
	print("c")
case let z where z.hasSuffix("pepper"):
	print("Is it a spicy \(z)?")
default:
	print("default")
}

var x: Int = 10
var y: Int

switch x{
case 20:
	print(20)
case 10:
	print("line1")
	print("line2")
default:
	print("default")
}
// */

/* Arrays
for x in 1...5{			// including right bound
	print("x = \(x)")
}

for y in 1..<5{			// exclude right bound
	print("y = \(y)")
}
 
var count: Int = 0
for _ in 1...10{
	count += 1
	if count == 3{
		// continue		// just skip this iteration
		break			// exit the loop
	}
	print("count=\(count)")
}
// */
  


/* Functions

func add_with_kwargs(x: Int,y: Int) -> Int{
	return x + y
}
print(add_with_kwargs(x: 10, y: 20))


func add_with_out_kwargs(_ x: Int,_ y: Int) -> Int{
	x + y	// no need return keyword if single line
}
print(add_with_out_kwargs(11, 22))

// */


/* Tuples
// Fixed size, mixed types.

var http404Error = (404, "Not Found")

// decomposing values from tuples
let (status_code, status_message) = http404Error
print(status_code, status_message)
print(http404Error.0, http404Error.1)	// same as above

// tuple with names elements
var named_elements = (x: 10, y: "shiva")
print(named_elements.x, named_elements.y)


"""
Tuples are useful as return values due to these ppties in swift
"""
 
// */



/* Dictionaries
// declaration
let dict3 = [String:Int]()
let dict2: [String: Int]

var dict = ["key1" : 10, "key2" : 20]
dict["key3"] = 30	// adding key-value to dict

for (k, v) in dict{
	print(k, v)
}

dict.removeValue(forKey: "key1")	// removes key-value pair
dict.removeAll()
dict.isEmpty

let interestingNumbers = [
	"Prime": [2, 3, 5, 7, 11, 13],
	"Fibonacci": [1, 1, 2, 3, 5, 8],
	"Square": [1, 4, 9, 16, 25],
]
for (k, arr) in interestingNumbers{
	print(k)
	for num in arr{
		print("\(num)")
	}
}
// */



/* repeat-while, while
var m = 2
repeat{		// similar to do-while in python, repeat executes first
	print("m : \(m)")
	m *= 2
} while m < 100

var x = 2
while x < 100{
	print("x=\(x)")
	x *= 4
}
 
// */



/*  Functions
func greet(person: String,_ day: String){
	"Hello \(person), today is \(day)"
}

// 1st arg must give name, 2nd arg must not give name
greet(person: "shiva", "sunday")

// exporting a tuple of values from a fucntion
func calculateStatistics(scores: [Int]) ->
(resultMin: Int, resultmMax: Int, resultSum: Int) {
	var min = scores[0]
	var max = scores[0]
	var sum = 0

	for score in scores {
		if score > max {
			max = score
		} else if score < min {
			min = score
		}
		sum += score
	}
	return (min, max, sum)	// names of tuple comes from return type def
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.2) // Prints "120"
print(statistics.resultSum) // Prints "120"


// return fucntion as a value
func method1() -> ((Int)->Int){
	
	func add10(num: Int) -> Int{
		return num + 10
	}
	return add10
}

func method2() -> (()-> ((Int)->Int)){
	return method1
}
let m1 = method2()
let a10 = m1()
let result = a10(20)
print(result)
 
// */



//* TODO: Closures

// */



//* Objects and Classes


class Shape: CustomStringConvertible{
	// properties
	var name: String
	var color: String
	var size: Int
	
	
	// initializer
	init(name: String, color: String, size: Int = 20){
		self.name = name
		self.color = color
		self.size = size
		// print("shape object created ✅")
	}
	
	
	// methods
	func details()->Void{
		print("Name:\(self.name)")
	}
	
	// String representaion
	var description: String {
		return ("{\(self.name):\(self.color):\(self.size)}")
	}
}

let circle = Shape(name: "circle", color: "blue", size: 99)
circle.color = "red"
print(circle)


// */



