//
//  CircleImage.swift
//  Landmarks
//
//  Created by brakni amine on 27/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("jurassic")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.red, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
