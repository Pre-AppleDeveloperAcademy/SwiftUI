//
//  UseScrollView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct UseScrollView: View {
    let data: [Int] = Array(1...100)
    
    var body: some View {
        ScrollView(.vertical) {
            ForEach(data.indices, id: \.self) { index in
                HStack {
                    Spacer()
                    Text("\(data[index])")
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    UseScrollView()
}
