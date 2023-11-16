//
//  AppUILayerDeviceWorkerContract.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import Foundation

enum FeedbackType {
    case success, failure
}

protocol AppUILayerDeviceWorkerable: AnyObject {
    var screenSize: CGRect { get }
    var topPaddingValue: CGFloat { get }
    var bottomPaddingValue: CGFloat { get }
    
    func generateFeedback(with type: FeedbackType)
    func vibrate()
}
