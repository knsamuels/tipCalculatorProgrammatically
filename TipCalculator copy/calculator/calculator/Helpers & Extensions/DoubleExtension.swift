//
//  DoubleExtension.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import Foundation

extension Double  {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

