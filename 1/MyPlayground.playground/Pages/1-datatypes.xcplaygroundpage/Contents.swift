/*
Primite data types
*/

let dt_bool: Bool
//print(dt_bool) // this is wrong, there is no default initiation
dt_bool = false

let player = ("shiva", 27, 70)

player
player.0
player.1
player.2

let (curr_name, curr_level, curr_salary) = player
"Name: \(curr_name), age: \(curr_level), TOC: \(curr_salary)"

// MARK: -view settings
// TODO: so this is a todo

// Arrays
let letters = ["a", "b", "c"]

letters[letters.capacity - 1]
letters

// Dictionaries
let dict: [String : Int] = [:]


let x: Int = 10
let y: Float = 10
let z: Double = 10
print(x, y, z)
//x + y	// wont work bcs int and float
//y + z	// wont work bcs float and double


let s = "shiva"
s.count
s.uppercased()



/*
Checkpoint 1:
 we’re going to convert temperatures from Celsius to Fahrenheit.

 Your goal is to write a Swift playground that:

 Creates a constant holding any temperature in Celsius.
 Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 Prints the result for the user, showing both the Celsius and Fahrenheit values.
*/

let temp1_c: Double
temp1_c = 71

let temp1_f = (temp1_c * 9 ) / 5 + 32

temp1_c
temp1_f


