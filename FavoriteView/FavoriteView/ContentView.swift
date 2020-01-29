//
//  ContentView.swift
//  FavoriteView
//
//  Created by brakni amine on 29/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct Box: Identifiable{
    var id = UUID()
    var title, imageURL: String
    
}
struct ContentView: View {
    @State private var favorite = "Intérêts"
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Picker(selection: $favorite, label: Text("")) {
                    Text("Intérêts").tag("Intérêts")
                    Text("Lieux").tag("Lieux")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 60.0)
                .padding(.top, 30.0)
                
                Text("Sports").fontWeight(.medium).padding(10).font(.system(size: 25))
                
                VStack {
                    ScrollView(.horizontal, content: {
                        HStack(spacing: 10) {
                            // multiple status view here
                            VStack(alignment: .leading){
                                Image("hiddenlake").resizable()
                                .frame(width: 155, height: 155)
                                .cornerRadius(5)
                                Text("TEXTE")
                            }
                            VStack(alignment: .leading){
                                Image("icybay").resizable()
                                .frame(width: 155, height: 155)
                                .cornerRadius(5)
                                Text("TEXTE")
                            }
                            VStack(alignment: .leading){
                                Image("lakemcdonald").resizable()
                                .frame(width: 155, height: 155)
                                .cornerRadius(5)
                                Text("TEXTE")
                            }
                            
                        }.padding(10)
                    }).frame(height: 190)
                }.padding(.top, -10)
                Spacer()
            }
            .navigationBarTitle(Text("Favoris"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
