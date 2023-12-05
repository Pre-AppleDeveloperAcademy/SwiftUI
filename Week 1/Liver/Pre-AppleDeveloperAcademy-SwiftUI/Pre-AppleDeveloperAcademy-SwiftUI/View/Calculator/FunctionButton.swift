//
//  FunctionButton.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct FunctionButton: View {
    var body: some View {
        HStack {
            Button {
                print("AC")
            } label: {
                Text("AC")
                    .font(.system(size: 32))
                    .foregroundStyle(.black)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.gray)
                    }
            }
            
            Button {
                print("+/-")
            } label: {
                Text("+/-")
                    .font(.system(size: 32))
                    .foregroundStyle(.black)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.gray)
                    }
            }
            
            Button {
                print("%")
            } label: {
                Text("%")
                    .font(.system(size: 32))
                    .foregroundStyle(.black)
                    .frame(width: 64)
                    .padding()
                    .background {
                        Circle()
                            .foregroundStyle(Color.gray)
                    }
            }
        }
    }
}

#Preview {
    FunctionButton()
}
