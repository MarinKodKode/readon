//
//  MainBottomActionBarView.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct MainBottomActionBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
            Spacer()
            Image(systemName: "magnifyingglass")
            Spacer()
            Image(systemName: "bookmark")
            Spacer()
            Image(systemName: "person")
            Spacer()
        }
        .padding(.vertical, 14)
        .background(Color.white.shadow(radius: 5)) // White bar with shadow
    }
}

#Preview {
    MainBottomActionBarView()
}
