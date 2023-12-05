//
//  ButtonView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            // action(기능)
            print("버튼을 클릭했습니다.")
        } label: {
            // view(버튼을 나타낼 뷰)
            Text("Button")
        }
    }
}

#Preview {
    ButtonView()
}
