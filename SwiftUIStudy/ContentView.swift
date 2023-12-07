//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by Jiwon Im on 2023/11/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("0")
                .frame(width: 320, height: 250, alignment: .bottomTrailing)
                .font(.system(size: 90, weight: .thin))
                .foregroundColor(.white)
            HStack(spacing: 15){
                VStack(spacing: 15){
                    HStack(spacing: 15){
                        Button("AC") {}
                            .font(.title)
                            .buttonStyle(ACOperaterButtonStyle())
                        Button("+/-") {}
                            .buttonStyle(ACOperaterButtonStyle())
                        Button("%") {}
                            .buttonStyle(ACOperaterButtonStyle())
                    }
                    VStack(spacing: 15){
                        HStack(spacing: 15){
                            Button("7") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("8") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("9") {}
                                .buttonStyle(CircleButtonStyle())
                        }
                        HStack(spacing: 15){
                            Button("4") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("5") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("6") {}
                                .buttonStyle(CircleButtonStyle())
                        }
                        HStack(spacing: 15){
                            Button("1") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("2") {}
                                .buttonStyle(CircleButtonStyle())
                            Button("3") {}
                                .buttonStyle(CircleButtonStyle())
                        }
                        HStack(spacing: 15){
                            Button("0") {}
                                .buttonStyle(CircleButtonStyle())
                                .frame(width: 171, height: 82)
                                .background{RoundedRectangle(cornerRadius: 50)
                                        .foregroundColor(Color("darkGray"))
                                }
                            Button(".") {}
                                .buttonStyle(CircleButtonStyle())
                        }
                    }
                }
                VStack(spacing: 15){
                    Button("÷") {}
                        .buttonStyle(OperatorButtonStyle())
                    Button("×") {}
                        .buttonStyle(OperatorButtonStyle())
                    Button("―") {}
                        .buttonStyle(OperatorButtonStyle())
                    Button("+") {}
                        .buttonStyle(OperatorButtonStyle())
                    Button("=") {}
                        .buttonStyle(OperatorButtonStyle())
                }
            }
        }
        .frame(width:1000, height:1000)
        .background(Color(.black))
    }
}


struct CircleButtonStyle: ButtonStyle
{
    var backgroundColor: Color = Color("darkGray")
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size:37, weight: .regular))
            .frame(width:45, height: 45)
            .foregroundColor(.white)
            .padding()
            .background(Circle() .fill(backgroundColor))
    }
}

struct OperatorButtonStyle: ButtonStyle
{
    var backgroundColor: Color = Color("orange")
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size:40, weight: .regular))
            .frame(width: 45, height: 45)
            .foregroundColor(.white)
            .padding()
            .background(Circle().fill(backgroundColor))
    }
}

struct ACOperaterButtonStyle: ButtonStyle
{
    var backgroundColor: Color = .gray
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size:32, weight: .semibold))
            .frame(width:45, height:45)
            .foregroundColor(.black)
            .padding()
            .background(Circle().fill(backgroundColor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
