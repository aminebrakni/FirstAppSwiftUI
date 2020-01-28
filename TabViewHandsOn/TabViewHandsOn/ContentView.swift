//
//  ContentView.swift
//  TabViewHandsOn
//
//  Created by brakni amine on 28/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView{
                ColorTextView(color: .blue, text: "Bleu")
                //Text("The First Tab")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("Bleu")
                    }
                ColorTextView(color: .pink, text: "Rose")
                //Text("Another Tab")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Rose")
                    }
                ColorTextView(color: .green, text: "Vert")
                //Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Vert")
                    }
            }
        }
        .edgesIgnoringSafeArea(.top)
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
