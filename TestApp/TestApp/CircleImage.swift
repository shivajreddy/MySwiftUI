import SwiftUI

struct CircleImage: View {
	var body: some View {
		Image("turtlerock")
			.clipShape(Circle())
			.overlay{
				Circle().stroke(.white, lineWidth: 10)
			}
			.shadow(radius: 7)
	}
}


//#Preview {
//	CircleImage()
//}
