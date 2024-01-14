//
//  NumberPad.swift
//  Pre-AppleDeveloperAcademy-Calculator
//
//  Created by Kyungsoo Lee on 12/30/23.
//

import SwiftUI

struct NumberPad: View {
    
    let data: [String] = [ "AC", "+/-", "%", "÷", "7", "8", "9", "x", "4", "5", "6", "-", "1", "2", "3", "+", "0", "", ".", "="]
    
    let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(data.indices, id: \.self) { index in
                if data[index].isEmpty {
                    EmptyView()
                } else {
                    ButtonCell(title: data[index])
                }
            }
        }

    }
}

#Preview {
    NumberPad()
}
