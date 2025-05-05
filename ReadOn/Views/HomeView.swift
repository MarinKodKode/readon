//
//  HomeView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let filters = ["For you", "Following", "Design", "Technology"]

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Home")
                            .font(.largeTitle.bold())
                            .padding(.horizontal)

                        CategoriesFilterView()
                        ForYouBarView()
                        ArticleFeedView()
                    }
                    .padding(.bottom, 100) // Give space for bottom bar
                }

                MainBottomActionBarView()
            }
            .edgesIgnoringSafeArea(.bottom) // Ensures bottom bar isn't clipped
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeView()
}

