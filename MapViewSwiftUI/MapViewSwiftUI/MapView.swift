//
//  MapView.swift
//  MapViewSwiftUI
//
//  Created by brakni amine on 28/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI
import Mapkit

struct MapView: UIViewRepresentable {
    
    var latitude Double
    var longitude: Double
    var span: MKCoordinateSpan
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: latitude, longitude: longitude)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
