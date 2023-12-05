//
//  ResultView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct ResultView: View {
    @Binding var resultString: String;
    var body: some View {
        HStack {
            Spacer()
            Text("\(resultString)")
                .font(.system(size: 80))
                .foregroundStyle(.white)
                .padding()
        }
    }
}

#Preview {
    ResultView(resultString: .constant("0"))
}
