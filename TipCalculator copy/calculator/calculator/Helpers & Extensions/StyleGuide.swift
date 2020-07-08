//
//  StyleGuide.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

struct FontNames {
    static let latoBold = "Lato-Bold"
    static let latoRegular = "Lato-Regular"
    static let latoLight = "Lato-Light"
}

extension UIColor {
    static let backgroundColor = UIColor(named: "backgroundColor")!
    static let borderColor = UIColor(named: "borderColor")!
    static let buttonPink = UIColor(named: "buttonPink")!
    static let textColor = UIColor(named: "textColor")!
    static let titlePink = UIColor(named: "titlePink")!
}

extension UIView {
    
    func addCornerRadius(radius: CGFloat = 9) {
        self.layer.cornerRadius = radius
    }
    
    func addAccentBorder(width:CGFloat = 3, color: UIColor = .borderColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}


