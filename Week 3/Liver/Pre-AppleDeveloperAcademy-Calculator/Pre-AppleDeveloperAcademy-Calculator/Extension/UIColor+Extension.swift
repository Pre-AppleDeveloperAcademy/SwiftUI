//
//  UIColor+Extension.swift
//  Pre-AppleDeveloperAcademy-Calculator
//
//  Created by Kyungsoo Lee on 12/30/23.
//

import SwiftUI

extension UIColor {
    static func colorFromString(_ string: String) -> UIColor {
        switch string {
        case "lightGray":
            return .lightGray
        case "systemOrange":
            return .systemOrange
        case "darkGray":
            return .darkGray
        case "white":
            return .white
        default:
            return .clear
        }
    }
}
