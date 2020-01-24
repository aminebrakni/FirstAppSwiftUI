//
//  ContentView.swift
//  Dumble
//
//  Created by brakni amine on 24/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//
import SwiftUI

struct ContentView: View {

    let arrayConf = [("link.circle.fill", Color.orange, "Ron Weasly"),
                     ("pencil.circle.fill", Color.blue, "Hermione Granger"),
                     ("bolt.circle.fill", Color.red, "Harry Potter"),
                     ("heart.circle.fill", Color.yellow, "Ginny Weasly"),
                     ("mappin.circle.fill", Color.orange, "Rubeus Hagrid"),
                     ("asterisk.circle.fill", Color.black, "Severus Snape")]

    var body: some View {

        VStack(alignment: .leading){
            ForEach(arrayConf, id: \.self.0) { hero in
                Heroview(hero: hero.2, systemName: hero.0, color: hero.1)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Heroview: View{
    var hero: String
    var systemName: String
    var color: Color

    var body: some View{
        HStack{
            Image(systemName: systemName)
                .foregroundColor(color)
                .frame(width: 60)
            Text(hero)
        }.font(.largeTitle)

    }
}

// Solution 2


//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//
//
//        VStack (alignment: .leading) {
//
//            Heroview(hero: "Ron weasley", systemName: "link.circle", color: .red)
//            Heroview(hero: "hermione granger",systemName: "pencil.circle",  color: .yellow)
//            Heroview(hero: "harry potter", systemName: "bolt.circle",  color: .purple)
//            Heroview(hero: "ginny weasley", systemName: "heart.circle", color: .blue)
//            Heroview(hero: "rubeus hagrid", systemName: "mappin.circle", color: .red)
//            Heroview(hero: "Severus Snape",systemName: "asterisk.circle.fill", color: .green)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//struct Heroview: View{
//    var hero: String
//    var systemName: String
//    var color: Color
//    var body: some View{
//        HStack{
//            Image(systemName: systemName)
//                .foregroundColor(color)
//                .frame(width: 60)
//            Text(hero)
//        }.font(.largeTitle)
//
//    }
//}




// Solution 3
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//
//        VStack (alignment: .leading) {
//            HStack {
//                Image(systemName: "link.circle")
//                    .foregroundColor(.orange)
//                    .frame(width: 60)
//                Text(" Ron weasley")
//            }.font(.largeTitle)
//            HStack {
//                Image(systemName: "pencil.circle")
//                    .foregroundColor(.blue)
//                    .frame(width: 60)
//                Text(" hermione granger")
//            }.font(.largeTitle)
//            HStack {
//                Image(systemName: "bolt.circle")
//                    .foregroundColor(.yellow)
//                    .frame(width: 60)
//                Text(" harry potter ")
//            }.font(.largeTitle)
//            HStack {
//                Image(systemName: "heart.circle")
//                    .foregroundColor(.red)
//                    .frame(width: 60)
//                Text(" ginny weasley")
//            }.font(.largeTitle)
//            HStack {
//                Image(systemName: "mappin.circle.fill")
//                    .foregroundColor(.purple)
//                    .frame(width: 60)
//                Text(" rubeus hagrid")
//            }.font(.largeTitle)
//            HStack {
//                Image(systemName: "asterisk.circle.fill")
//                    .foregroundColor(.black)
//                    .frame(width: 60)
//                Text(" Severus Snape ")
//            }.font(.largeTitle)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
