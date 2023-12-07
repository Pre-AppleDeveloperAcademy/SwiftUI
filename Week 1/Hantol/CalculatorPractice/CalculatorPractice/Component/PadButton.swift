//
//  PadButton.swift
//  CalculatorPractice
//
//  Created by 김민준 on 12/4/23.
//

import SwiftUI

struct PadButton: View {
    
    // MARK: - 패드 타입 열거형
    enum PadType {
        case numbers // 숫자 패드
        case long // 긴 패드(0)
        case operators // 연산자 패드
        case others // 기타 패드
    }
    
    // MARK: - 프로퍼티 & 생성자
    var padType: PadType
    var label: String
    var labelColor: Color
    var backgrouondColor: Color
    var aspectRatio: CGFloat = 1.0
    
    init(_ padType: PadType, _ label: String) {
        
        // 프로퍼티 초기화
        self.padType = padType
        self.label = label
        
        // 타입에 따른 색상 지정
        switch padType {
        case .numbers:
            labelColor = .white
            backgrouondColor = Color.calculatorGray
            
        case .long:
            labelColor = .white
            backgrouondColor = Color.calculatorGray
            aspectRatio *= 2.1 // 긴 패드만 비율 조정
            
        case .operators:
            labelColor = .white
            backgrouondColor = Color.calculatorOrange
            
        case .others:
            labelColor = .black
            backgrouondColor = Color.calculatorLightGray
        }
    }
    
    // MARK: - Body
    var body: some View {
        ZStack {
            Button(action: {
                print("\(label) Tap")
            }, label: {
                ZStack {
                    Capsule()
                        .aspectRatio(aspectRatio, contentMode: .fit)
                        .foregroundStyle(backgrouondColor)
                    
                    HStack {
                        Text(label)
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundStyle(labelColor)
                            .offset(x: padType == .long ? -44 : 0)
                    }
                }
            })
            .frame(height: 80)
        }
    }
}

#Preview {
    VStack(alignment: .center) {
        PadButton(.numbers, "1")
        PadButton(.long, "1")
        PadButton(.operators, "1")
        PadButton(.others, "1")
    }
}
