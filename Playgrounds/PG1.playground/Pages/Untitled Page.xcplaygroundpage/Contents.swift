/*
 Enumerations
 Structs
 class
 some View
*/


struct Resolution {
    var width = 0
    var height = 0
    
    func details(){
        print("Details:: width:\(width) height:\(height)")
    }
    
    mutating func updateResolution(_ newWidth: Int, _ newHeight: Int) {
        width = newWidth
        height = newHeight
    }
}

class VideoMode {
    var resolution: Resolution
    
    init(_ w: Int,_ h: Int){
        resolution = Resolution()
        resolution.width = w
        resolution.height = h
    }
}

var hd: Resolution = Resolution(width: 1920, height: 1080)
//print("hd = \(hd)")
//hd.details()

hd.updateResolution(333, 222)
//hd.details()


