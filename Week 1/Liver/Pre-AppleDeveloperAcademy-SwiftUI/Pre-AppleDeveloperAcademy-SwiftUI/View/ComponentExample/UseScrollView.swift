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
        ScrollView(.horizontal) {
            HStack {
            ForEach(data.indices, id: \.self) { index in
                    Spacer()
                    Text("\(data[index])")
                    Spacer()
                }
            }
        }
        ScrollView(.vertical) {
            ForEach(data, id: \.self) { num in
                HStack {
                    Spacer()
                    Text("\(num)")
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    UseScrollView()
}
