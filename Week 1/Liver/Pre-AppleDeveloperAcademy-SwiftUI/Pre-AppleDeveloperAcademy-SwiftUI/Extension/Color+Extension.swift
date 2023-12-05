//
//  Color+Extension.swift
//  Owori
//
//  Created by Kyungsoo Lee on 2023/07/06.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    static let gray100 = Color(hex: "#E5E5E5")
    static let gray200 = Color(hex: "#E9E9E9")
    static let gray300 = Color(hex: "#C6C6C6")
    static let gray400 = Color(hex: "#909090")
    static let gray500 = Color(hex: "#787878")
    static let gray600 = Color(hex: "#626262")
    static let gray700 = Color(hex: "#464646")
}
