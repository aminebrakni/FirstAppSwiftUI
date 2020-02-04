//
//  CategoryRow.swift
//  FavoriteView
//
//  Created by brakni amine on 30/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI

struct BoxViewModel: Codable, Identifiable{
    
    var id = UUID()
    var box: Box
    
    init(box: Box) {
        self.box = box
    }
}
struct CategoryRow: View {
    
    var choixSegmented: String
    
    var choixSegmentedInteret: [BoxViewModel] {
        return BoxData.boxes.map { (box) -> BoxViewModel in
            return BoxViewModel(box: box)
        }
    }
    
    /*var filterCategory: [BoxViewModel] {
     let filteredBoxes = BoxData.boxes.filter { box in
     return box.category == .banquet
     }
     }*/
    
//
//    var choixSegmentedLieux = [
//        BoxViewModel(title: "food", imageName: "lakemcdonald"),
//        BoxViewModel(title: "stade", imageName: "stmarylake"),
//        BoxViewModel(title: "etc", imageName: "rainbowlake"),
//        BoxViewModel(title: "New", imageName: "icybay"),
//        BoxViewModel(title: "test", imageName: "silversalmoncreek"),
//        BoxViewModel(title: "lieu", imageName: "hiddenlake")
//    ]
//
    
    var body: some View {
        VStack{
            if choixSegmented == "Interets" {
                List(Category.allCases, id: \.rawValue) { category  in
                    
                    VStack(alignment: .leading) {
                        Text(category.rawValue)
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        Section {
                            // BEGIN SLIDER HORIZONTAL
                            ScrollView(.horizontal, content: {
                                HStack(spacing: 10) {

                                    ForEach(BoxData.boxes.map { BoxViewModel(box: $0) }.filter { $0.box.category == category
                                    } , id: \.id) {
                                        boxViewModel in
                                        BoxView(boxViewModel: boxViewModel)
                                    }
                                }//.padding(10)

                            }).frame(height: 190)
                            // END SLIDER HORIZONTAL
                        }
                    }.padding(5)
                }
            }else{
                List(City.allCases, id: \.rawValue) { city  in
                    
                    VStack(alignment: .leading) {
                        Text(city.rawValue)
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundColor(Color.black)
                        Section {
                            // BEGIN SLIDER HORIZONTAL
                            ScrollView(.horizontal, content: {
                                HStack(spacing: 10) {

                                    ForEach(BoxData.boxes.map { BoxViewModel(box: $0) }.filter { $0.box.city == city
                                    } , id: \.id) {
                                        boxViewModel in
                                        BoxView(boxViewModel: boxViewModel)
                                    }
                                }//.padding(10)

                            }).frame(height: 190)
                            // END SLIDER HORIZONTAL
                        }
                    }.padding(5)
                }
            }
        }
    }
}

struct BoxView: View {
    
    @State private var isPresented = false
    let boxViewModel: BoxViewModel
    
    var body: some View {
        
        Button(action: {
            self.isPresented.toggle()
        }, label: {
            VStack(alignment: .leading){
                Image(boxViewModel.box.images[0]).resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(boxViewModel.box.name)
            }
        }).sheet(isPresented: $isPresented) { () -> Text in
            Text("\(self.boxViewModel.box.name)")
        }.buttonStyle(PlainButtonStyle())
        
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(choixSegmented: "Interets")
    }
}
