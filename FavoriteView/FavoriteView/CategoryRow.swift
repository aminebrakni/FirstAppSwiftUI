//
//  CategoryRow.swift
//  FavoriteView
//
//  Created by brakni amine on 29/01/2020.
//  Copyright © 2020 brakni amine. All rights reserved.
//

import SwiftUI


struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        Text(self.categoryName)
            .font(.headline)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(3))
        )
    }
}
