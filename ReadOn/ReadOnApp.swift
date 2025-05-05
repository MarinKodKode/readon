//
//  ReadOnApp.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import SwiftUI

@main
struct ReadOnApp: App {
    
    let router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(router)
            }
        }
    }
}
