//
//  ColorTextView.swift
//  TabViewHandsOn
//
//  Created by brakni amine on 28/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ColorTextView: View {
    var color: Color
    var text: String
    
    var body: some View {
        ZStack{
            color
            Text(text)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ColorTextView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextView(color: Color.yellow, text: "Rouge")
    }
}
