import SwiftUI


var myText = Text("test \n\(variableFromAnotherFile)")

/// This is **big** testing

struct MyFirstView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 10)
//            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyFirstView()
    }
}
