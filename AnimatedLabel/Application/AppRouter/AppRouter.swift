//
//  AppRouter.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import UIKit

protocol AppRoutable: AnyObject {
    func routeToInitialScene()
}

class AppRouter {
    init() {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .systemBackground
    }
    
    private let window: UIWindow
}

extension AppRouter: AppRoutable {
    func routeToInitialScene() {
//        window.rootViewController = InitialSceneRouter.assembly()
//        window.makeKeyAndVisible()
    }
}
