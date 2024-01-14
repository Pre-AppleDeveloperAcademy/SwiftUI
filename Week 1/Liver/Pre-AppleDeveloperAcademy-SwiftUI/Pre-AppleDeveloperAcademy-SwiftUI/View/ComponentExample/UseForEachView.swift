//
//  UseForEachView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct UseForEachView: View {
    let data: [Int] = Array(1...10).map { $0 * 2 }
    let datas: [Int: Int] = [0: 1, 1: 2]
    
    var body: some View {
        ForEach(data.indices, id: \.self) { index in
            Text("\(data[index])")
        }
    }
}

#Preview {
    UseForEachView()
}
