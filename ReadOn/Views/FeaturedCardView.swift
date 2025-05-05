//
//  FeaturedCardView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct FeaturedCard: View {
    
    @EnvironmentObject var router : Router
    
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if let image = article.thumbnail {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 280, height: 160)
                    .clipped()
                    .cornerRadius(12)
            }
            Text(article.title)
                .font(.headline)
                .lineLimit(2)
            Text("\(article.authorName) • \(article.date) • \(article.readTime)")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .frame(width: 280)
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
        .onTapGesture {
            router.path.append(Destination.article)
        }
    }
}
