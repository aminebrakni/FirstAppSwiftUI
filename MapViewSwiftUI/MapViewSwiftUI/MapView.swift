//
//  MapView.swift
//  MapViewSwiftUI
//
//  Created by brakni amine on 28/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var latitude: Double
    var longitude: Double
    var span: Double
    
    typealias UIViewType = MKMapView
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let region = MKCoordinateRegion(center: coordinate, span: coordinateSpan)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(latitude: 45.333333, longitude: 5.446543, span: 2.0)
    }
}
