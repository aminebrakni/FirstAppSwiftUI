//
//  ContentView.swift
//  MyFirstNavigation
//
//  Created by brakni amine on 27/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: Text("okok")) {
                Text("enter course")
            }
//            NavigationLink(destination: detailsView()) {
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
//                    Text("cliquez ici")
//                        .font(.title)
//
//                }
//                .padding()
//                .background(Color.blue)
//                .foregroundColor(Color.white)
//                .cornerRadius(10)
//                .shadow(color: Color.red ,radius: 10)
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
