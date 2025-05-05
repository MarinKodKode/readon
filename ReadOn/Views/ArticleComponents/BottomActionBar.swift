//
//  BottomActionBar.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

struct BottomActionBar: View {
    var onClap: () -> Void
    var onComment: () -> Void
    var onSave: () -> Void
    var onShare: () -> Void

    var body: some View {
        HStack {
            Spacer()

            Button(action: onClap) {
                Image(systemName: "hands.clap")
                    .font(.title2)
            }

            Spacer()

            Button(action: onComment) {
                Image(systemName: "bubble.right")
                    .font(.title2)
            }

            Spacer()

            Button(action: onSave) {
                Image(systemName: "bookmark")
                    .font(.title2)
            }

            Spacer()

            Button(action: onShare) {
                Image(systemName: "square.and.arrow.up")
                    .font(.title2)
            }

            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 2)
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}
