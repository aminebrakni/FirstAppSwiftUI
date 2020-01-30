//
//  AlbumDetailView.swift
//  ListForm
//
//  Created by brakni amine on 27/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct AlbumDetailView: View {
    var album: Album
    var body: some View {
        
        VStack(spacing: 20) {
            Image("album")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200)
            Text(album.titleName)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(album.artistName)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.orange)
            
        }.padding()
            .navigationBarTitle("Album", displayMode: .inline)
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(album: Album(titleName: "All eye on me", artistName: "2pac", imageName: ""))
    }
}
