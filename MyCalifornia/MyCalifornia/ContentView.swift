//
//  ContentView.swift
//  MyCalifornia
//
//  Created by brakni amine on 27/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("yucca")
                VStack(alignment: .leading, spacing: 40) {
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("OUTDOOR")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text("ADVENTURES")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text("DESERT")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .opacity(0.5)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    VStack(alignment: .leading, spacing: -20) {
                        Text("YUCCA")
                            .font(.system(size: 60))
                            //.font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text("VALLEY")
                            .font(.system(size: 60))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    
                    HStack(spacing:10) {
                        Image("compass")
                        Text("CALIFORNIA")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .opacity(0.7)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("FIND OUT MORE")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
