//
//  Article.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import SwiftUI

struct Article: Identifiable {
    let id = UUID()
    let title: String
    let authorName: String
    let date: String
    let readTime: String
    let thumbnail: String?
    let timeAgo : String
    let description : String
    let authorImage : String
}
