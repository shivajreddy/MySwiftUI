import SwiftUI


var myText = Text("test \n\(variableFromAnotherFile)")


struct MyView: View {
    var body = myText
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
