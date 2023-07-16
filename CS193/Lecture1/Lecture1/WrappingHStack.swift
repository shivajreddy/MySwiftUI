import SwiftUI




struct WrappingHStack: View {
    var row = HStack{
        MyCard()
        MyCard()
        MyCard()
        MyCard()
    }
    var body: some View {
        VStack{
            row
            row
            row
            row
            row
        }
    }
}

struct WrappingHStackPreview: PreviewProvider {
    static var previews: some View {
        WrappingHStack()
        WrappingHStack().preferredColorScheme(.dark)
    }
}

