// 1. Stored Properties

struct FixedLengthRange {
    var firstValue: Int // stored variable pppty
    let length: Int     // stored constant ppty
}

var flr1 = FixedLengthRange(firstValue: 1, length: 2)   // flr1 is a variable structure instance
flr1.firstValue // can be changed, bcs its a stored variable ppty
flr1.length     // CAN'T be changed, bcs its a stored constant ppty

/// When an instance of a value type is marked as a constant, so are all of its properties.
/// structure is a value-type, enum is a value-type
let flr2 = FixedLengthRange(firstValue: 1, length: 2)   /// flr2 is a constant sturcture instance;  all ppties of flr2 will behave as constant's.

/// classes are reference-types
class Person {
    var ppty1: Int
    let ppty2: Int
    init(ppty1: Int, ppty2: Int) {
        self.ppty1 = ppty1
        self.ppty2 = ppty2
    }
}

/// instance of referance-type is marked as variable
var p = Person(ppty1: 10, ppty2: 20)
p.ppty1 = 111
//p.ppty2 = 222 /// Error: becaues ppty2 is a costant ppty

/// instance of referance-type is marked as constant
let p1 = Person(ppty1: 10, ppty2: 20)
p1.ppty1 = 111      /// can change even though p1 is a 'constant class instance' and since ppty1 is a variable


/// **Lazy Stored Properties**
/// A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
/// You must always declare a lazy property as a variable (with the var keyword), because its initial value might not be retrieved until after instance initialization completes.
/// Constant properties must always have a value before initialization completes, and therefore can’t be declared as lazy.

class DataImporter {
    var fileName: String {
//        print("ppty is created")
        return "data.txt"
    }
}

class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    init(){
//        print("DataManager instance created")
    }
}

let manager = DataManager()     /// When manager instance is created, the 'importer' ppty is not created. it is created only when its first used
manager.data.append("some data")
manager.data.append("some more data")
manager.importer.fileName /// until this line, the lazy ppty was not created. infact even when you do `manager.importer` its not created, only when `manager.importer.something`


// 2. Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set (newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(
    origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 4, height: 4)
)

let initialSquareCenter = square.center
print(initialSquareCenter)

square.center = Point(x: 7.0, y: 7.0)
print(square.center)
print(initialSquareCenter)



// Shorthand Getter, Shorthand Setter Declaration


// Read-only computed properties


// 3. Property Observers


// 4. Property Wrappers


// 5. Global and local variables


// 6. Type Properties

