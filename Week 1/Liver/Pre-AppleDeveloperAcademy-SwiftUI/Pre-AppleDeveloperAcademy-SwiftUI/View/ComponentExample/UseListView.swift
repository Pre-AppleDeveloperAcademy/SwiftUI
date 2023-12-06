//
//  UseListView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct UseListView: View {
    let data: [String] = ["나기", "구밥", "리버", "라프", "허니비", "쿠키", "롭", "윤", "지나"]
    
    var body: some View {
        List {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index])")
            }
        }
    }
}

#Preview {
    UseListView()
}
