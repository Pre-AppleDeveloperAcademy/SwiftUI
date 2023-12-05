//
//  ContentView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Yunki H on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var result: String = "0"
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                Text(result)
                    .scaleEffect(2.5)
            }
            .padding()
            
            VStack {
                HStack {
                    CalculatorButton(text: "AC") {
                        result = "0"
                    }
                    CalculatorButton(text: "+/-") {
                        if result.first == "-" {
                            result.removeFirst()
                        } else {
                            result = "-" + result
                        }
                    }
                    CalculatorButton(text: "%") {
                        result = "0.0" + result
                    }
                    CalculatorButton(text: "÷") {
                        result += "÷"
                    }
                }
                
                HStack {
                    CalculatorButton(text: "7") {
                        result += "7"
                    }
                    CalculatorButton(text: "8") {
                        result += "8"
                    }
                    CalculatorButton(text: "9") {
                        result += "9"
                    }
                    CalculatorButton(text: "×") {
                        result += "×"
                    }
                }
                
                HStack {
                    CalculatorButton(text: "4") {
                        result += "4"
                    }
                    CalculatorButton(text: "5") {
                        result += "5"
                    }
                    CalculatorButton(text: "6") {
                        result += "6"
                    }
                    CalculatorButton(text: "-") {
                        result += "-"
                    }
                }
                
                HStack {
                    CalculatorButton(text: "1") {
                        result += "1"
                    }
                    CalculatorButton(text: "2") {
                        result += "2"
                    }
                    CalculatorButton(text: "3") {
                        result += "3"
                    }
                    CalculatorButton(text: "+") {
                        result += "+"
                    }
                }
                
                HStack {
                    CalculatorButton(text: "0") {
                        result += "0"
                    }
                    HStack {
                        CalculatorButton(text: ".") {
                            guard !result.contains(".") else { return }
                            result += "."
                        }
                        CalculatorButton(text: "=") {
                            result = "result"
                        }
                    }
                }
            }
        }
        .font(.largeTitle)
        .padding()
    }
}

struct CalculatorButton: View {
    var text: String // enum으로 받는게 좋을듯
    var handler: () -> ()

    var body: some View {
        Button {
            handler()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 50.0)
                    .frame(maxHeight: 85)
                    .foregroundStyle(.gray)
                Text(text)
            }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ContentView()
}
