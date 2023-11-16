//
//  AppDelegate.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    private var router: AppRoutable?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.router = AppRouter()
        
        router?.routeToInitialScene()
        
        return true
    }
}
