import SwiftUI

struct HomePageView: View {
	var body: some View {
		
		VStack{
			
			MapView()
				.frame(height: 300)
				.ignoresSafeArea(edges: .top)
			
			CircleImage()
				.offset(y: -130)
				.padding(.bottom, -130)
			
			VStack(alignment: .leading){
				Text("Hello World")
					.font(.title)
					.foregroundColor(Color.green)
					.bold()
				HStack(){
					Text("My first program")
						.font(.subheadline)
						.foregroundColor(Color.cyan)
					Spacer()
					Text("Shiva Reddy")
						.font(.subheadline)
						.foregroundColor(Color.cyan)
				}
				
				Divider()
				Text("about this place")
					.font(.title2)
				
			} .padding()
		
			Spacer()
		}
	}
}


//#Preview {
//	HomePageView()
//}
