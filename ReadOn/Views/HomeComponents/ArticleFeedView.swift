//
//  ArticleFeedView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct ArticleFeedView: View {
    var body: some View {
        Text("Trending on Medium")
            .font(.title3.bold())
            .padding(.horizontal)
        
        VStack(spacing: 24) {
            ForEach(articles) { article in
                ArticleRowView(article: article)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ArticleFeedView()
}
