//
//  ContentView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Yunki H on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var result: String = "0"
    
    let btns: [[CalculatorButton]] = [
        [.ac, .flag, .percent, .division],
        [.seven, .eight, .nine, .multiple],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .four],
        [.zero, .point, .equal]
    ]
    
    let column: [GridItem] = Array(repeating: GridItem(.flexible()), count: 4)
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                Text(result)
                    .scaleEffect(2.5)
            }
            .padding()
            
            LazyVGrid(columns: column, content: {
                ForEach(btns, id: \.self) { row in
                    ForEach(row, id: \.self) { btn in
                        CalculatorButtonView(btn: btn, result: $result)
                    }
                }
            })
        }
        .font(.largeTitle)
        .padding()
    }
}

struct CalculatorButtonView: View {
    var btn: CalculatorButton
    @Binding var result: String

    var body: some View {
        Button {
        switch btn {
        case .ac:
            return
            /// ...
        default:
            return
        }
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 50.0)
                    .frame(height: 85)
                    .foregroundStyle(.gray)
                Text(btn.rawValue)
            }
        }
        .buttonStyle(.plain)
    }
}

enum CalculatorButton: String {
    case ac = "AC"
    case flag = "+/-"
    case percent = "%"
    case division = "÷"
    case multiple = "×"
    case minus = "-"
    case plus = "+"
    case equal = "="
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case point = "."
}

#Preview {
    ContentView()
}
