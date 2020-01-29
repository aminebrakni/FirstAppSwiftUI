//
//  ContentView.swift
//  TestInstagramView
//
//  Created by brakni amine on 29/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                VStack {
                    HStack{
                        Image("jurassic")
                        .resizable()
                        .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        VStack(alignment: .leading) {
                            Text("Micka wallas")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                            Text("Paris Kanto Lampo Water fall")
                                .font(.callout)
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                    }.padding()
                }
                Image("yucca").resizable().aspectRatio(contentMode: .fit)
            }
                
            .navigationBarTitle(Text("Instagram"), displayMode: .inline)
            .navigationBarItems(
                leading: Image(systemName: "camera"),
                trailing: Image(systemName: "paperplane")
            )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
