//
//  OperatorView.swift
//  CalculatorPractice
//
//  Created by 김민준 on 12/4/23.
//

import SwiftUI

struct OperatorView: View {
    
    var body: some View {
        
        // MARK: - ÷, ×, -, +, =
        VStack(spacing: 16) {
            PadButton(.operators, "÷")
            PadButton(.operators, "×")
            PadButton(.operators, "-")
            PadButton(.operators, "+")
            PadButton(.operators, "=")
        }
    }
}

#Preview {
    OperatorView()
}
