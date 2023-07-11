/// Must topics to cover in Initialization
/// Setting Initial Values for Stored Properties
/// Customizing Initialization
/// Default Initializers
/// Initializer Delegation for Value Types

/// Class Inheritance and Initialization
/// Failable Initializers
/// Required Initializers
/// Setting a Default Property Value with a Closure or Function



// Class Inheritance and Initialization
/// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization

// All class's stored ppties must have an initial value

/// Swift defines two kinds of initializers for class types to help ensure all stored properties receive an initial value. These are known as designated initializers and convenience initializers.

struct Human {
    var age: Int
}

class Person {
    var age: Int    // ERROR: all class-type ppty's must me initialized
    var name: String
    
    /// Delegated Initializer
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    /// Convenience Initializers
    convenience init(age: Int) {
        self.init(age: age, name: "rando")
    }
    
    convenience init() {
        self.init(age: -1, name: "rando -1" )
    }
    
    func details(){
        print("Person{age:\(age) name:\(name)}")
    }
}

var p1 = Person(age: 21, name: "boy")
p1.details()
var p2 = Person(age: 27)
p2.details()
var p3 = Person()
p3.details()

