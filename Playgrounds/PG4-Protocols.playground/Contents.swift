// Protocols
// Jul-6 2:51pm

protocol FirstProtocol {
    // protocol definition goes here
    var mustBeSettable: Int {get set}
}

protocol SecondProtocol {
}


class SuperClass{
    var x: Int = 0
    var name: String = ""
}

/*
class SubClass: SuperClass, FirstProtocol, SecondProtocol{
    var mustBeSettable: Int = 20
}
*/

struct MyStruct: FirstProtocol, SecondProtocol {
    var mustBeSettable: Int = 20
}

