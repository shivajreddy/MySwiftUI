import SwiftUI


/// THEME
var theme1: [String] = ["🐯", "🐶", "🐭", "🐒", "🦞", "🪼", "🐥", "🪲", "🦚", "🐖", "🦜", "🐠", "🦄", "🐨", "🐼", "🦁"]
var theme2: [String] = ["🫒", "🌶️", "🥑", "🍉", "🍐", "🍎", "🫐", "🍒", "🍑", "🍍", "🥥", "🧀", "🍠", "🍖", "🍔", "🥩"]

/// Card that shows image on front, default back of that card
struct MyCard: View {
    @State var count = 0
    @State var isUp = false
    var content: String = "🚀"
    //    @State var size: CardSize = CardSize(width: 50, height: 50)
    
    var width: CGFloat { 60 }
    var height: CGFloat { 100 }
    
    func handleClick() {
        // Flip the card        isUp = !isUp
        print("Count = \(count). Card isUp: \(isUp)")
        count += 1
    }
    
    var body: some View {
        ZStack{
            Rectangle().fill( isUp ? Color.white : Color.red)
            Text(isUp ? content : "")
        }
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue, lineWidth: 8))
        .frame(maxWidth: width, maxHeight: height)
        .cornerRadius(20)
        .onTapGesture { handleClick() }
    }
}

struct GameFormView: View {
    
    func updateGrid(){
        print("Choosen grid size: \(gridSize + 5)")
    }
    
    /// min-grid size = 5 (index = 0), max-grid size = 10(index=5)
    @State private var gridSize: Int = 0
    var body: some View {
        VStack(){
            VStack {
                HStack{
                    Text("Grid:")
                    Picker("", selection: $gridSize) {
                        ForEach(5..<11){num in Text("\(num)") }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Button("Update Grid") { updateGrid() }
                }
            }
            .frame(maxHeight: 150)
            .padding(.horizontal)
            .alignmentGuide(.top) { _ in CGFloat(200)}
        }
    }
}

struct GameView: View {
    
    var body: some View {
        VStack{
            GameFormView()
            HStack{
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
                MyCard()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .preferredColorScheme(.dark)
        GameView()
    }
}
