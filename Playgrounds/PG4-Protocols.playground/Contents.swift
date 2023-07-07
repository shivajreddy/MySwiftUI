// Protocols
// Jul-7 9:00_AM

protocol MyProtocol {
    var ppty1: Int {get set}
    var ppty2: Int {get}
    static var ppty3: Int {get set}
}

struct MyStruct: MyProtocol {
    var ppty1: Int
    var ppty2: Int
    static var ppty3: Int = -1
}


var s: MyStruct = MyStruct(ppty1: 88, ppty2: 99)
s.ppty1 = 888
s.ppty2 = 999
s.ppty2 = 99


class MyClass {
    var x: Int
    
    init(){
        self.x = 21
    }
}

var c = MyClass()
c.x

var computedVariable: String {
    get{ print("getter called"); return ""}
    set (newName) { }
}
