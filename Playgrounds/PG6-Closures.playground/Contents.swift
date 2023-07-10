let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let result = numbers.map(){
    var number = $0
    var result = ""
    repeat {
        result = digitNames[number % 10]! + result
        number /= 10
    } while number > 0
    return result
}
result

var x = { () -> [Int] in
    return [1, 2, 3]
}
print(type(of: x))

