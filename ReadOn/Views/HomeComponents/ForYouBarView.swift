//
//  ForYouBarView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct ForYouBarView: View {
    var body: some View {
        Text("For you")
            .font(.title3.bold())
            .padding(.horizontal)
            .padding(.top)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(featuredArticles) { article in
                    FeaturedCard(article: article)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ForYouBarView()
}
