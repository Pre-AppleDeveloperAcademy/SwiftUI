//
//  CalculatorButton.swift
//  Pre-AppleDeveloperAcademy-Calculator
//
//  Created by Kyungsoo Lee on 12/30/23.
//

import Foundation

enum CalculatorButton {
    case allClear
    case plusMinus
    case percentage
    case divide
    case multiply
    case subtract
    case add
    case equals
    case number(Int)
    case decimal
    
    init(calcButton: CalculatorButton) {
        switch calcButton {
        case .allClear, .plusMinus, .percentage, .divide, .multiply, .add, .equals, .decimal, .subtract:
            self = calcButton
            // calcButton이 .number라면 int라는 상수를 선언한다.
        case .number(let int):
            // 만약 위에서 선언한 상수 int가 한 자리 수이면 CalculatorButton을 calcButton의 값으로 초기화한다. (enum이 값 타입이기 때문에)
            if int.description.count == 1 {
                self = calcButton
            } else {
                fatalError("CalculatorButton.number Int was not 1 digit during init")
            }
        }
    }
}

extension CalculatorButton {
    var title: String {
        switch self {
        case .allClear:
            return "AC"
        case .plusMinus:
            return "+/-"
        case .percentage:
            return "%"
        case .divide:
            return "÷"
        case .multiply:
            return "x"
        case .subtract:
            return "-"
        case .add:
            return "+"
        case .equals:
            return "="
        case .number(let int):
            return int.description
        case .decimal:
            return "."
        }
    }
    
    // Model에는 UIKit, SwiftUI 등 View와 관련된 라이브러리를 포함시키면 안되기 때문에 enum Color를 따로 선언.
    enum Color: String {
        case lightGray
        case systemOrange
        case darkGray
        case white
    }
    
    // 선택되지 않았을 때 default 색상
    var color: Color {
        switch self {
        case .allClear, .plusMinus, .percentage:
            return .lightGray
            
        case .divide, .multiply, .subtract, .add, .equals:
            return .systemOrange
            
        case .number, .decimal:
            return .darkGray
        }
    }
    
    // 선택되었을 때 색상
    var selectedColor: Color? {
        switch self {
        case .allClear, .plusMinus, .percentage, .equals, .number, .decimal:
            return nil
            
        case .divide, .multiply, .subtract, .add:
            return .white
        }
    }
}
