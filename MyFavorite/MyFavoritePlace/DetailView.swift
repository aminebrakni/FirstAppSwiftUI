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
        
        VStack(alignment: .leading, spacing: 20){
            //.edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading){
                Image("yucca2").resizable().aspectRatio(contentMode: .fit)
            }
            VStack(alignment: .leading){
                Text("POPULATION")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                Text("20,700")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                
            }.padding(.horizontal, 10)
            VStack(alignment: .leading){
                Text("HISTORY")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
            }.padding(.horizontal, 10)
            VStack(alignment: .leading){
                Text("Norman J. Essig was a key player in the late 1950s in working toward establishing Yucca Valley as a place for entertainment celebrities to come and live in privacy. He personally acquired hundreds of acres of land during this time and owned and ran Glenn Realty. He helped to put in the main roads that are running throughout the town off of Hwy 62. He was personal friends with the late Jimmy Van Heusen and gave him prime real estate in Yucca Valley to build his house which can still be seen atop the highest hill in the center of the town. He is survived by his two daughters Jean Essig and Marie Hodge and seven grandchildren.")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
            }.padding(.horizontal, 10)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
