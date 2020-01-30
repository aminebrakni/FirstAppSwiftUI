//
//  ContentView.swift
//  ImagePickerView
//
//  Created by brakni amine on 29/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    withAnimation {
                        self.showImagePicker.toggle()
                    }
                }) {
                    Text("Show image picker")
                }
                image?.resizable().frame(width: 100, height: 100)
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePickerView(image: self.$image)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

