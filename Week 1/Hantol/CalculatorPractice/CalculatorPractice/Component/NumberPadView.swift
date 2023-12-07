//
//  NumberPadView.swift
//  CalculatorPractice
//
//  Created by 김민준 on 12/4/23.
//

import SwiftUI

struct NumberPadView: View {
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 16) {
            
            // MARK: - 7, 8, 9
            HStack {
                PadButton(.numbers, "7")
                PadButton(.numbers, "8")
                PadButton(.numbers, "9")
            }
            
            // MARK: - 4, 5, 6
            HStack {
                PadButton(.numbers, "4")
                PadButton(.numbers, "5")
                PadButton(.numbers, "6")
            }
            
            // MARK: - 1, 2, 3
            HStack {
                PadButton(.numbers, "1")
                PadButton(.numbers, "2")
                PadButton(.numbers, "3")
            }
            
            // MARK: - 0, .
            HStack {
                PadButton(.long, "0")
                PadButton(.numbers, ".")
            }
        }
    }
}

#Preview {
    NumberPadView()
}
