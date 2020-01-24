//
//  ContentView.swift
//  Pourcentage
//
//  Created by brakni amine on 24/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pourcentage: Double = 0.5
    var body: some View {
        VStack {
            Text("Hello, World! \(Int(pourcentage*100))%")
                .padding(20)
            Button(action: {
                self.pourcentage += 0.01
            }) {
                Text("Incrémenter")
            }
            .padding(30)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.blue, lineWidth: 4)
            )
            Slider(value: $pourcentage, in:0...1)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
