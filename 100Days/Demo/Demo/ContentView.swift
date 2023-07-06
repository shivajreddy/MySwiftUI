import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Hello, world!")
        }
        .padding()
    }
}

struct MyView: View{
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(.red))
                .frame(width: 200, height: 200)
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        MyView()
    }
}
