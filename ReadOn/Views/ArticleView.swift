//
//  ArticleView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct ArticleView: View {
    
//    let article: Article
    @Environment(\.dismiss) var dismiss
    
    @State private var lastScrollPosition: CGFloat = 0
    @State private var isScrollingDown: Bool = false
    
    var body: some View {
        ScrollView {
            
            GeometryReader { geo in
                Color.clear
                    .preference(key: ScrollOffsetPreferenceKey.self, value: geo.frame(in: .named("scroll")).minY)
            }
            .frame(height: 0)
            
            VStack(alignment: .leading, spacing: 16) {
                
                // Back Button
                HStack {
                    Button(action: {
                        // action for going back
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.primary)
                            .padding(8)
                            .background(Color(.systemGray6))
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                }
                .padding(.top)
                
                // Article Title
                Text("Lorem Ipsum Dolor Sit Amet")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                
                // Author Info
                HStack(spacing: 12) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("John Doe")
                            .fontWeight(.semibold)
                        Text("6 min read")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                
                // First Image
                Image("thumbnail_example") // Replace with your image asset name
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .clipped()
                    .cornerRadius(16)
                
                Text("""
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                """)
                
                Text("""
                Vivamus ultrices eleifend, ultrices nec, suscipit orci. Morbi risus cum venenatis, sollicitudin a, placerat a, vulputate quis. Pellentesque leo nisl, posuere at, malesuada elit.
                Vivamus ultrices eleifend, ultrices nec, suscipit orci. Morbi risus cum venenatis, sollicitudin a, placerat a, vulputate quis. Pellentesque leo nisl, posuere at, malesuada elit. Vivamus ultrices eleifend, ultrices nec, suscipit orci. Morbi risus cum venenatis, sollicitudin a, placerat a, vulputate quis. Pellentesque leo nisl, posuere at, malesuada elit.
                Vivamus ultrices eleifend, ultrices nec, suscipit orci. Morbi risus cum venenatis, sollicitudin a, placerat a, vulputate quis. Pellentesque leo nisl, posuere at, malesuada elit. Vivamus ultrices eleifend, ultrices nec, suscipit orci. Morbi risus cum venenatis, sollicitudin a, placerat a, vulputate quis. Pellentesque leo nisl, posuere at, malesuada elit.
                """)
                
                Text("""
                Suspendisse odio sem, in vulputate velit esse molestie consequat. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.
                """)
            }
            .padding()
            .padding(.bottom, 80) // space for bottom bar
            
        }
        .navigationBarBackButtonHidden(true)
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollOffsetPreferenceKey.self) { newValue in
            withAnimation(.easeInOut(duration: 0.3)) {
                isScrollingDown = newValue < lastScrollPosition
            }
            lastScrollPosition = newValue
        }
        if isScrollingDown {
            BottomActionBar(
                onClap: { print("👏 Clap") },
                onComment: { print("💬 Comment") },
                onSave: { print("🔖 Save") },
                onShare: { print("🔗 Share") }
            )
            .transition(.move(edge: .bottom).combined(with: .opacity))
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}


extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

//struct ArticleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArticleView()
//    }
//}

