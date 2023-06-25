import SwiftUI
import MapKit

struct MapView: View {
	/* Create a private state variable that holds the region info for the map*/
	@State private var region = MKCoordinateRegion(
		center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_860),
		span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
	)
	
	
	var body: some View {
		Map(coordinateRegion: $region)
	}
}




#Preview {
	MapView()
}

