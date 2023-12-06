//
//  UseForEachView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct UseForEachView: View {
    let data: [Int] = Array(1...10).map { $0 * 2 }
    
    var body: some View {
        ForEach(data, id: \.self) { num in
            Text("\(num)")
        }
    }
}

#Preview {
    UseForEachView()
}
