//
//  OtherView.swift
//  CalculatorPractice
//
//  Created by 김민준 on 12/4/23.
//

import SwiftUI

struct OtherView: View {
    
    var body: some View {
        
        // MARK: - C, 8, %
        HStack {
            PadButton(.others, "C")
            PadButton(.others, "±")
            PadButton(.others, "%")
        }
    }
}

#Preview {
    OtherView()
}
