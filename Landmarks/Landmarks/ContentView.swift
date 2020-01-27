//
//  ContentView.swift
//  Landmarks
//
//  Created by brakni amine on 27/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Welcome To my hood !")
                    .font(.title)
                HStack {
                    Text("Jurassic park")
                        .font(.subheadline)
                    Spacer()
                    Text("Arizona")
                }
            }.padding(.horizontal, 40.0)
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
