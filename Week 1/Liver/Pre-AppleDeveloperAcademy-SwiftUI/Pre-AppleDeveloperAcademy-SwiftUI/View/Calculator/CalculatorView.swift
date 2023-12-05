//
//  CalculatorView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct CalculatorView: View {
    @State var resultString: String = "0";
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                ResultView(resultString: $resultString)
                HStack {
                    VStack {
                        FunctionButton()
                        NumberPad()
                    }
                    OperationButton()
                }
            }
        }
    }
}

#Preview {
    CalculatorView()
}
