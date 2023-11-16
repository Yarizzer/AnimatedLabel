//
//  AppUILayer.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

class AppUILayer {
    init() {
        self.styleW = AppUILayerStyleWorker()
        self.deviceW = AppUILayerDeviceWorker()
    }
    
    private let styleW: AppUILayerStyleWorkerable
    private let deviceW: AppUILayerDeviceWorkerable
}

extension AppUILayer: AppUILayerType {
    //MARK: - Workers
    var style: AppUILayerStyleWorkerable { styleW }
    var device: AppUILayerDeviceWorkerable { deviceW }
}
