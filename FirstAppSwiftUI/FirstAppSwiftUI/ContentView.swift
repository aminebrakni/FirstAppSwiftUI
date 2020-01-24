//
//  ContentView.swift
//  FirstAppSwiftUI
//
//  Created by brakni amine on 23/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let myName = "okok"
    var body: some View {
        
        VStack(spacing: 15) {
            Image("food")
                .resizable()
                .clipShape(Circle())
                .frame(width: 250, height: 250)
                .shadow(radius: 10)
            
            Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Sexe")) {
                Text("Homme").tag(1)
                Text("Femme").tag(2)
            }
            
            Text("Hello! \(myName)")
                .bold()
                .foregroundColor(Color.white)
                .padding(30)
                .background(Color.blue
                .animation(.easeInOut))
            
            
            Text("Hello! \(myName)")
                .bold()
                .foregroundColor(Color.white)
                .padding(30)
                .background(Color.purple)
            
            Text("Hello! \(myName)")
                .bold()
                .foregroundColor(Color.white)
                .padding(30)
                .background(Color.red)
            
            
        }
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
