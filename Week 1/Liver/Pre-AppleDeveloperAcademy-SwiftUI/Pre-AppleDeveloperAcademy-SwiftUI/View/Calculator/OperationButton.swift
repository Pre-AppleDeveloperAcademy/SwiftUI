//
//  OperationButton.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct OperationButton: View {
    var body: some View {
        VStack {
            Button {
                print("÷")
            } label: {
                Text("÷")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.orange)
                    }
            }
            
            Button {
                print("×")
            } label: {
                Text("×")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.orange)
                    }
            }
            
            Button {
                print("-")
            } label: {
                Text("-")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.orange)
                    }
            }
            
            Button {
                print("+")
            } label: {
                Text("+")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.orange)
                    }
            }
            
            Button {
                print("=")
            } label: {
                Text("=")
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.orange)
                    }
            }
        }
    }
}

#Preview {
    OperationButton()
}
