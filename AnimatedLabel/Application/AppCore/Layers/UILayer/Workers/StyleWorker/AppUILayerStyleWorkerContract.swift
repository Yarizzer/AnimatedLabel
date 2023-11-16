//
//  AppUILayerStyleWorkerContract.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import UIKit

enum AppUILayerStyleWorkerFontType {
    case appTitle
    case sceneTitle
    case uiItemTitle
    case uiItemDescription
    case buttonTitle
}

protocol AppUILayerStyleWorkerable: AnyObject {
    //Colors
    var colorClear: UIColor { get }
    var colorWhite: UIColor { get }
    var colorBlack: UIColor { get }
    var colorGray: UIColor { get }
    var colorRed: UIColor { get }
    var colorGreen: UIColor { get }
    var colorBlue: UIColor { get }

    //Fonts
    func font(for type: AppUILayerStyleWorkerFontType, with style: UIFont.TextStyle) -> UIFont
    //Layers
    var layerBorderWidth: CGFloat { get }
    var layerLineWidth: CGFloat { get }
    //ImageNames
    var logoImageName: String { get }
}
