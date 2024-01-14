//
//  ButtonCell.swift
//  Pre-AppleDeveloperAcademy-Calculator
//
//  Created by Kyungsoo Lee on 12/30/23.
//

import SwiftUI

struct ButtonCell: View {
    let title: String
    
    var body: some View {
        Button {
            print(title)
        } label: {
            Text(title)
                .font(.system(size: 32))
                .foregroundStyle(.white)
                .frame(width: title == "0" ? 152 : 64, height: 40, alignment: title == "0" ? .leading : .center)
                .padding()
                .background {
                    buttonBackground()
                }
        }
    }
    
    @ViewBuilder
    private func buttonBackground() -> some View {
        let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "."]
        let operators: [String] = [ "÷", "x", "-", "+", "="]
//        let extraFunctions: [String] = ["AC", "+/-", "%"]
        
        
        if numbers.contains(title) {
            Circle().foregroundStyle(Color.gray)
        } else if operators.contains(title) {
            Circle().foregroundStyle(Color.orange)
        } else if title == "0" {
            RoundedRectangle(cornerRadius: 40).foregroundStyle(Color.gray)
        }
        else {
            Circle().foregroundStyle(Color.green)
        }
    }
    
    
    
}

#Preview {
    ButtonCell(title: "0")
}
