//
//  ContentView.swift
//  CalculatorPractice
//
//  Created by 김민준 on 12/4/23.
//

import SwiftUI

struct CalculatorView: View {
    
    var body: some View {
        
        // MARK: - 최상위 ZStack
        ZStack {
            Color(uiColor: .black)
                .ignoresSafeArea()
            
            VStack(alignment: .trailing, spacing: 16) {
                Spacer()
                
                // MARK: - 숫자 텍스트
                Text("0")
                    .foregroundStyle(.white)
                    .font(.system(size: 88, weight: .regular))
                    .offset(x: -8)
                
                // MARK: - 패드 뷰
                HStack {
                    VStack(spacing: 16) {
                        OtherView()
                        NumberPadView()
                    }
                    OperatorView()
                }
            }
        }
    }
}

#Preview {
    CalculatorView()
}
