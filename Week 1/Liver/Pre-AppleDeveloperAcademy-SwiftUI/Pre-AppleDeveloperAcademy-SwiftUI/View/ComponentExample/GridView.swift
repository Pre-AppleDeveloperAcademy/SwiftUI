//
//  GridView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct GridView: View {
    
    let data: [Int] = Array(1...100)
    
    let columns: [GridItem] = [
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100)),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(data.indices, id: \.self) { index in
                    Text("\(data[index])")
                }
            }
        }
    }
}

#Preview {
    GridView()
}
