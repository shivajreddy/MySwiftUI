// Classes are referance types
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    // static properties
    static var x: Int = 10
    static var defautlResolution = Resolution(width: 1920, height: 1080)
    
    // instance properties
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
    // static methods
    static func details()->Void{
        print("x: \(x)")
        print("default resolution: \(defautlResolution)")
    }
}

let tenEighty = VideoMode()
print(tenEighty.frameRate)
let copy = tenEighty
copy.frameRate = 60.0
print(tenEighty.frameRate)
print(copy.frameRate)
VideoMode.details()

var x: Int?
x = 10

if let result = x{
    print("yes", result)
} else {
    print("no")
}


