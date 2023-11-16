//
//  AppUILayerStyleWorker.swift
//  AnimatedLabel
//
//  Created by Yaroslav Abaturov on 16.11.2023.
//

import UIKit

class AppUILayerStyleWorker {
    //MARK: - Style
    private enum StyleColors {
        case clear
        case white
        case black
        case gray
        case red
        case green
        case blue
        
        var color: UIColor {
            switch self {
            case .clear:        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            case .white:        return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            case .black:        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            case .gray:         return #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)        // hex: 808080
            case .red:          return #colorLiteral(red: 1, green: 0.3137254902, blue: 0, alpha: 1)        // hex: FF5000
            case .green:        return #colorLiteral(red: 0, green: 0.6666666667, blue: 0.3137254902, alpha: 1)        // hex: 00AA50
            case .blue:         return #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)        // hex: 3DACF7
            }
        }
    }
}

extension AppUILayerStyleWorker: AppUILayerStyleWorkerable {
    //Colors
    var colorClear: UIColor { StyleColors.clear.color }
    var colorWhite: UIColor { StyleColors.white.color }
    var colorBlack: UIColor { StyleColors.black.color }
    var colorGray: UIColor { StyleColors.gray.color }
    var colorRed: UIColor { StyleColors.red.color }
    var colorGreen: UIColor { StyleColors.green.color }
    var colorBlue: UIColor { StyleColors.blue.color }
    //Fonts
    func font(for type: AppUILayerStyleWorkerFontType, with style: UIFont.TextStyle) -> UIFont {
        switch type {
        case .appTitle:             return UIFontMetrics(forTextStyle: style).scaledFont(for: Constants.appTitleFont)
        case .sceneTitle:           return UIFontMetrics(forTextStyle: style).scaledFont(for: Constants.sceneTitleFont)
        case .uiItemTitle:          return UIFontMetrics(forTextStyle: style).scaledFont(for: Constants.uiElementTitleFont)
        case .uiItemDescription:    return UIFontMetrics(forTextStyle: style).scaledFont(for: Constants.uiElementDescription)
        case .buttonTitle:          return UIFontMetrics(forTextStyle: style).scaledFont(for: Constants.buttonTitleFont)
        }
        
    }
    //Layers
    var layerBorderWidth: CGFloat { Constants.layerData.borderWidth }
    var layerLineWidth: CGFloat { Constants.layerData.lineWidth }
    //ImageNames
    var logoImageName: String { Constants.logoImageName }
}

extension AppUILayerStyleWorker {
    private struct Constants {
        static let appTitleFont: UIFont = UIFont(name: "AppleSDGothicNeo-Medium", size: 30.0) ?? UIFont.systemFont(ofSize: 30.0)
        static let sceneTitleFont: UIFont = UIFont(name: "Apple SD Gothic Neo Regular", size: 25.0) ?? UIFont.systemFont(ofSize: 25.0)
        static let uiElementTitleFont: UIFont = UIFont(name: "Apple SD Gothic Neo Regular", size: 17.0) ?? UIFont.systemFont(ofSize: 17.0)
        static let uiElementDescription: UIFont = UIFont(name: "Apple SD Gothic Neo Regular", size: 15.0) ?? UIFont.systemFont(ofSize: 15.0)
        static let buttonTitleFont: UIFont = UIFont(name: "Apple SD Gothic Neo Regular", size: 15.0) ?? UIFont.systemFont(ofSize: 15.0)
        
        static let layerData: (borderWidth: CGFloat, lineWidth: CGFloat) = (borderWidth: 1.0, lineWidth: 1.2)
        static let logoImageName = "regularLogo"
    }
}
