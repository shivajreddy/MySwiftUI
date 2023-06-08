import Cocoa

/*
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

// Enums
enum Days {
	case monday, sunday
}

let today = Days.monday

switch today{
case .monday:
	print("it is monday")
case .sunday:
	print("it is a holday")
}





