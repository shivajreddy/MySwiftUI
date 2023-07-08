/// Learning Strings and characters.
/// Start index points to the first character
/// Last index points to the **after** the last charcter

var greeting = "Guten Tag!"

greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

var index = greeting.index(greeting.startIndex, offsetBy: greeting.count - 1)
greeting[index]

for idx in 0..<greeting.count{
    let letter: Character = greeting[greeting.index(greeting.startIndex, offsetBy: idx)]
    letter
}


var startIndex = greeting.index(greeting.endIndex, offsetBy: -5)
var endIndex = greeting.index(greeting.endIndex, offsetBy: -1)
greeting.removeSubrange(startIndex...endIndex)


/// Dictionary syntax
/// var/let <dictionaryName> = [ <key1> : <val1>, <key2> : <val2>, ..., <keyN> : <valN> ]

var dict = Dictionary<String,Int>()
dict["shiva"] = 2
dict["reddy"] = 22

if var val = dict["reddy"]{
    dict["reddy"] = val + 1
} else {
    dict["reddy"] = 1
}

dict["boo"] = dict["boo"] ?? 0

16 % 10
