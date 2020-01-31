//
//  ContentView.swift
//  FavoriteView
//
//  Created by brakni amine on 29/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

enum CategoryType: String {
    case interets = "Intérêts"
    case lieux = "Lieux"
}

struct Box: Identifiable{
    var id = UUID()
    var title, imageURL: String
    
}
struct ContentView: View {
    @State var favorite: CategoryType = .interets
    
    var body: some View {
        
        NavigationView{
            VStack {
                PickerView(favorite: $favorite)
                
                if favorite == .interets {
                    CategoryRow(Choix: "Interets")
                }else{
                    CategoryRow(Choix: "Lieux")
                }
                Spacer()
            }
            .navigationBarTitle(Text("Favoris"), displayMode: .inline)
        }
    }
}

struct PickerView: View {
    
    @Binding var favorite: CategoryType
    
    var body: some View {
        // BEGIN PICKER
        Picker(selection: $favorite, label: Text("")) {
            Text("Intérêts").tag(CategoryType.interets)
            Text("Lieux").tag(CategoryType.lieux)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(.horizontal, 60.0)
        .padding(.top, 30.0)
        .padding(.bottom, 10.0)
        // END PICKER
    }
}
struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
