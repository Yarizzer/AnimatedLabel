//
//  AppUILayerType.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

protocol AppUILayerType: AnyObject {
    //MARK: - Workers
    var device: AppUILayerDeviceWorkerable { get }
    var style: AppUILayerStyleWorkerable { get }
}

