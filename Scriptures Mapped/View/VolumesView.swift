//
//  VolumesView.swift
//  Scriptures Mapped
//
//  Created by Matthew Porter on 11/29/21.
//

import SwiftUI

struct VolumesView: View {
    var body: some View {
        List {
            let volumes = GeoDatabase.shared.volumes()
            
            ForEach(volumes.indices) { index in
                NavigationLink(volumes[index], destination:  {
                    BooksForVolumeView(volumeId: index + 1, volumeName: volumes[index])
                })
                    .isDetailLink(false)
            }
        }
        .listStyle(.plain)
    }
}

struct VolumesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VolumesView()
            VolumesView()
        }
    }
}
