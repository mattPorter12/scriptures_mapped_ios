    //
//  ContentView.swift
//  Scriptures Mapped
//
//  Created by Matthew Porter on 11/18/21.
//

import SwiftUI
import MapKit

struct ScripturesMappedView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 31.778510,
                                       longitude: 35.234804
                                        ),
        span: MKCoordinateSpan(latitudeDelta: 3, longitudeDelta: 3)
    )
    
    var body: some View {
        NavigationView{
            VolumesView()
                .navigationTitle("The Scriptures")
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScripturesMappedView()
    }
}
