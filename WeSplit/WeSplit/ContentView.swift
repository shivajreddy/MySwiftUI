import SwiftUI


struct ContentView: View {
    var body: some View {
		HStack{
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundColor(.accentColor)
			Text("Hello World!")
		}
		.foregroundColor(.accentColor)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
