//
//  ContentView.swift
//  temperature2
//
//  Created by brakni amine on 24/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  @State var pourcentage: Double = 0.6

  var body: some View {


    VStack (spacing : 20) {

        Text("\( Int( pourcentage*100 )) % ")
            .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 10))

        Button(action: {

                self.pourcentage += 0.01
            }) {
                Text("Incrémenter")
            }
            .padding(20)

        Slider(value: $pourcentage, in : 0...1)

        .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
