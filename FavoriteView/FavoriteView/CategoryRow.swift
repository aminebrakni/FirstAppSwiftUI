//
//  CategoryRow.swift
//  FavoriteView
//
//  Created by brakni amine on 30/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    
    var Choix: String
    
    var ChoixInteret = [
        Box(title: "Good", imageURL: "hiddenlake"),
        Box(title: "Tech", imageURL: "icybay"),
        Box(title: "Code", imageURL: "lakemcdonald"),
        Box(title: "Photo", imageURL: "rainbowlake"),
        Box(title: "Swift UI", imageURL: "silversalmoncreek"),
        Box(title: "Code", imageURL: "stmarylake"),
    ]
    
    var ChoixLieux = [
        Box(title: "food", imageURL: "lakemcdonald"),
        Box(title: "stade", imageURL: "stmarylake"),
        Box(title: "etc", imageURL: "rainbowlake"),
        Box(title: "New", imageURL: "icybay"),
        Box(title: "test", imageURL: "silversalmoncreek"),
        Box(title: "lieu", imageURL: "hiddenlake"),
    ]
    var body: some View {
        
        VStack(alignment: .leading) {
       
            if Choix == "Interets"{
            Text("Sports").fontWeight(.medium).padding(10).font(.system(size: 25))
            }else{
            Text("Paris").fontWeight(.medium).padding(10).font(.system(size: 25))
            }
            
            // BEGIN SLIDER HORIZONTAL
            ScrollView(.horizontal, content: {
                HStack(spacing: 10) {
                    if Choix == "Interets" {

                        ForEach(ChoixInteret, id: \.id) {
                            box in BoxView(box: box)
                        }
                    }else{

                        ForEach(ChoixLieux, id: \.id) {
                            box in BoxView(box: box)
                        }
                    }
                }.padding(10)
                
            }).frame(height: 190)
            // END SLIDER HORIZONTAL
        }.padding(.top, -10)
        
    }
}

struct BoxView: View {
    
    let box: Box
    
    var body: some View {
        
        VStack(alignment: .leading){
            Image(box.imageURL).resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(box.title)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(Choix: "Interets")
    }
}
