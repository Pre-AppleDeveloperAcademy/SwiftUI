//
//  NumberPad.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct NumberPad: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("7")
                } label: {
                    Text("7")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("8")
                } label: {
                    Text("8")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("9")
                } label: {
                    Text("9")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
            }
            
            HStack {
                Button {
                    print("4")
                } label: {
                    Text("4")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("5")
                } label: {
                    Text("5")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("6")
                } label: {
                    Text("6")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
            }
            
            HStack {
                Button {
                    print("1")
                } label: {
                    Text("1")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("2")
                } label: {
                    Text("2")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                Button {
                    print("3")
                } label: {
                    Text("3")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
            }
            HStack {
                Button {
                    print("0")
                } label: {
                    Text("0")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 152, height: 40, alignment: .leading)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundStyle(Color.gray700)
                        }
                }
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 8))
                
                Button {
                    print(".")
                } label: {
                    Text(".")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 64)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(Color.gray700)
                        }
                }
                
            }
        }
    }
}

#Preview {
    NumberPad()
}
