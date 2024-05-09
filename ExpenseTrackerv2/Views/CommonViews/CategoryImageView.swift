//
//  CategoryImageView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Taris Jackson on 5/1/24.
//

import SwiftUI

struct CategoryImageView: View {
    
    // define some variables
    let category: Category
    
    var body: some View {
        Image(systemName: category.systemNameIcon)
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 20)
            .foregroundColor(category.color)
            .background(category.color.opacity(0.1))
        .cornerRadius(18)
    }
}

struct CategoryImageView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImageView(category: .donation)
    }
}
