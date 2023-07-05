// Enumerations
enum CompassPoint {
    case north
    case south
    case east
    case WEST
    case West
}

var cp = CompassPoint.east
print("cp:\(cp) Type of cp:\(type(of: cp))")
cp = .WEST
print("cp:\(cp) Type of cp:\(type(of: cp))")
cp = .West
print("cp:\(cp) Type of cp:\(type(of: cp))")


enum Directions: CaseIterable {
    case north, south, east, west
}

var dir: Directions = .east
print("dir = \(dir). Type of dir = \(type(of: dir)) ")

for d in Directions.allCases{   // .allCases is added when an enum has CaseIterable protocol
    print("d: \(d)")
}


enum Barcode {
    case upc(Int, Int, Int, Int)    // associated value of type (Int, Int, Int, Int)
    case qrCode(String) // associated value of type (String)
}

var bc1: Barcode = .upc(8, 85909, 51226, 3)
var bc2: Barcode = .qrCode("slakdfjalskjdf")

switch bc1{
case .upc(let var1, _, _, _):
    print("this is upc, with var1:\(var1)")
case .qrCode:
    print("this is qrcode enum")
}


/*
 Enumerations
 Structs
 class
 some View
*/


/*
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution: Resolution
    
    init(_ w: Int,_ h: Int){
        resolution = Resolution()
        resolution.width = w
        resolution.height = h
    }
}
var vid = VideoMode(10, 20)
print("vid-> width: \(vid.resolution.width) height:\(vid.resolution.height) ")
// */

