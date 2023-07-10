import SwiftUI

/// Card that shows image on front, default back of that card
struct MyCard: View {
    @State var count = 0
    @State var isUp = false
    //    @State var size: CardSize = CardSize(width: 50, height: 50)
    
    var width: CGFloat { 50 }
    var height: CGFloat { 50 }
    
    var body: some View {
        ZStack{
            Rectangle().fill(Color.cyan)
            Text("🚀")
        }
        .frame(maxWidth: width, maxHeight: height)
        .cornerRadius(12)
        .onTapGesture {
            print("Count = \(count)")
            count += 1
        }
    }
}

func updateGrid(){
    
}

struct GameView: View {
    
    @State private var gridSize: Int = 0
    
    var body: some View {
        VStack(){
            Form{
                VStack {
                    Picker("choose grid size:", selection: $gridSize) {
                        ForEach(5..<11){num in Text("\(num)") }
                    }
                    .pickerStyle(MenuPickerStyle())
                    Button("Update Grid") {
                        print("Choosen grid size: \(gridSize + 5)")
                    }
                }
            }
            .frame(maxHeight: 150)
            .padding(.horizontal)
            .alignmentGuide(.top) { _ in CGFloat(200)}
            MyCard()
            MyCard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
