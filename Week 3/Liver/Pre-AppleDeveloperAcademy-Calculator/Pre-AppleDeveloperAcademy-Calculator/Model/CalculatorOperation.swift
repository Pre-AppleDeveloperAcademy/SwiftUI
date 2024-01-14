//
//  CalculatorOperation.swift
//  Pre-AppleDeveloperAcademy-Calculator
//
//  Created by Kyungsoo Lee on 12/30/23.
//

import Foundation

enum CalculatorOperation {
    case divide
    case multiply
    case subtract
    case add
    
    var title: String {
        switch self {
        case .divide:
            return "÷"
        case .multiply:
            return "x"
        case .subtract:
            return "-"
        case .add:
            return "+"
        }
    }
}
