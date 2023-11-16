//
//  AppCore.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

final class AppCore {
    static let shared = AppCore()
    
    private init() {
        self.uiL = AppUILayer()
    }
    
    //MARK: - Layers
    private let uiL: AppUILayerType
}

extension AppCore: AppCoreUILayerable {
    var uiLayer: AppUILayerType { uiL }
}
