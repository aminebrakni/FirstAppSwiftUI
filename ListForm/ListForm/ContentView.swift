//
//  ContentView.swift
//  ListForm
//
//  Created by brakni amine on 24/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct Album: Identifiable{
    var id = UUID()
    var titleName: String
    var artistName: String
    var imageName: String
    
}
struct ContentView: View {
    var albums: [Album] = [
        Album(titleName: "WestSide", artistName: "Booba", imageName: "music.note.list"),
        Album(titleName: "8miles", artistName: "Eminem", imageName: "music.house.fill"),
        Album(titleName: "All eyes on me", artistName: "2pac", imageName: "music.house.fill")
    ]
    var body: some View {
        
//        NavigationView {
//            List {
//                Text("Dylan !")
//                Text("Amine !")
//                Text("Malika !")
//                Text("Gautier !")
//            }
//        }.navigationBarTitle("Simplon")
        NavigationView {
            List(albums) {
                album in AlbumView(album: album)
            }.navigationBarTitle("Playlist")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AlbumView: View {
    var album: Album
    
    var body: some View{
        HStack(spacing: 20) {
            
            Image(systemName: album.imageName)
            
            VStack(alignment: .leading) {
                Text(album.titleName).font(.title)
                Text(album.artistName).font(.headline).foregroundColor(.purple)
            }
        }
    }
}
