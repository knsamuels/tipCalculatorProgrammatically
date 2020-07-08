//
//  TipTextField.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

class TipTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    func setupViews() {
        updateFontTo(font: FontNames.latoRegular)
        addCornerRadius()
        addAccentBorder()
        backgroundColor = .backgroundColor
        textColor = .textColor
        layer.masksToBounds = true
        setupPlaceHolderText()
    }

    func setupPlaceHolderText() {
        self.attributedPlaceholder = NSAttributedString(string: "enter bill amount here", attributes: [NSAttributedString.Key.foregroundColor: UIColor.buttonPink, NSAttributedString.Key.font: UIFont(name: FontNames.latoRegular, size: 16)!])
    }

    func updateFontTo(font: String) {
        guard let size = self.font?.pointSize else {return}
        self.font = UIFont(name: font, size: size)
    }
}
