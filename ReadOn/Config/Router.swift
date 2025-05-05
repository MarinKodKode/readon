//
//  Router.swift
//  ReadOn
//
//  Created by Manuel Alejandro Hernandez Marin on 04/05/25.
//

import Foundation
import SwiftUI

public class Router: ObservableObject {
    
    private init() {}
    
    public static let shared = Router()

    private var navigationStack: [String] = []

    @Published var viewDestination : Destination?
    @Published var path = NavigationPath()

    public func removeLast() {
        if !path.isEmpty{
            self.path.removeLast()
        }
    }

    public func removeAll() {
        navigationStack.removeAll()
    }
    
    public func navigateTo(_ route: Destination) {
        self.path.append(route)
    }
}
