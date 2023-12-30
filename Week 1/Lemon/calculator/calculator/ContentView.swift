//
//  ContentView.swift
//  calculator
//
//  Created by Lemon on 12/26/23.
//  Only View, No Function

import SwiftUI

struct ContentView: View {
    
    @State private var result : String = "0"
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack(alignment: .trailing){
                Spacer()
                Spacer()
                
                VStack {
                    Text(String(result))
                        .foregroundStyle(Color.white)
                        .font(.system(size: 100))
                        .fontWeight(.light)
                        .padding(.trailing, 10)
                }
                // MARK: 계산기 버튼 뷰
                VStack(spacing: 20){
                    // 1줄
                    HStack(spacing: 15){
                        Button("AC"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .etc))
                        
                        Button("+/-"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .etc))
                        
                        Button("%"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .etc))
                        
                        Button("÷"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .operators))
                    }
                    // 2줄
                    HStack(spacing: 15){
                        Button("7"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("8"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("9"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("×"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .operators))
                    }
                    //3줄
                    HStack(spacing: 15){
                        Button("4"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("5"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("6"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("−"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .operators))
                    }
                    //4줄
                    HStack(spacing: 15){
                        Button("1"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("2"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("3"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("+"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .operators))
                    }
                    //5줄
                    HStack(spacing: 15){
                        Button("0"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .zero))
                        
                        Button("."){
                        }.buttonStyle(CalcButtonStyle(buttonType: .numbers))
                        
                        Button("＝"){
                        }.buttonStyle(CalcButtonStyle(buttonType: .operators))
                    }
                }
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

// MARK: ButtonStyle Custom
/// 뷰 스타일을 다르게 지정하기 위해서 ButtonStyle을 커스텀 하였음
/// 만일 Calc 기능까지 고려한다면 View자체로 커스텀 하거나, 상위 뷰에서 기능 구현을 하는 방식으로 수정해야 할 듯
struct CalcButtonStyle : ButtonStyle {
    enum ButtonType {
        case numbers
        case zero
        case operators
        case etc
    }

    var buttonType : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        switch buttonType {
        case .numbers:
            Circle()
                .frame(width: 80, height: 80)
                .foregroundStyle(Color.numberColor)
                .overlay {
                    configuration.label
                        .font(.system(size: 35))
                        .foregroundStyle(Color.white)
                }
        case .zero:
            Capsule()
                .frame(width: 175, height: 80)
                .foregroundStyle(Color.numberColor)
                .overlay(alignment: .leading, content: {
                    configuration.label
                        .font(.system(size: 35))
                        .foregroundStyle(Color.white)
                        .padding(30)
                })
        case .operators:
            Circle()
                .frame(width: 80, height: 80)
                .foregroundStyle(Color.orange)
                .overlay {
                    configuration.label
                        .font(.system(size: 35))
                        .foregroundStyle(Color.white)
                }
        case .etc:
            Circle()
                .frame(width: 80, height: 80)
                .foregroundStyle(Color.gray)
                .overlay {
                    configuration.label
                        .font(.system(size: 30))
                        .foregroundStyle(Color.black)
                }
        }
    }
}

#Preview {
    ContentView()
}
