//
//  ArticleRowView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct ArticleRowView: View {
    
    
    @EnvironmentObject var router : Router
    
    let article: Article
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 6) {
                
                Text(article.title)
                    .font(.headline)
                
                Text(article.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                
                Text(article.readTime)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                HStack {
                    Image(article.authorImage)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .clipShape(Circle())
                    Text(article.authorName)
                        .font(.subheadline.bold())
                    Text("• \(article.timeAgo)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            if let image = article.thumbnail {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .onTapGesture {
            router.path.append(Destination.article)
        }
    }
}
