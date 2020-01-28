//
//  DetailView.swift
//  MyFavoritePlace
//
//  Created by Reda van Eeuwijk on 27/01/2020.
//  Copyright © 2020 Reda van Eeuwijk. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    var body: some View {
        VStack(alignment: .leading)  {
            HeaderView(title: "ABOUT YUCCA VALLEY")


            VStack(alignment: .leading, spacing: 30){
                VStack(alignment: .leading) {
                    Text("POPULATION")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("20,700")

                }

                Text("HISTORY")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("Norman J. Essig was a key player in the late 1950s in working toward establishing Yucca Valley as a place for entertainement celebrities to come and live in privacy. He personally acquiered hundreds of acres of land during this time and ownedand ran Glenn Realty.   He helped to put in the main roads that are running throughout the town off of Hwy 62. He was personl friends with Jimmy Van Heusen and gave him prime real estate in Yucca Valley to nuild his house which can still be seen atop the highest hill in centerer of the town. He is survived by his two daughters Jean Essig and Marie Hodge and seven grandchildren.")
                    .fontWeight(.medium)

            }.padding()
                .foregroundColor(Color.gray)
            Spacer()


        }.edgesIgnoringSafeArea(.all)

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct  HeaderView: View {
    var title: String
    var body: some View {
        Image("yucca2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(Text(title)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.white))
    }
}
