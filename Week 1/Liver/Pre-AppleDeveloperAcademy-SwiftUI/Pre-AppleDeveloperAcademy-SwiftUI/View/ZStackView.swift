//
//  ZStackView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack {
            // ZStack : Z축에 대한 스택에 뷰를 쌓는다.
            // (더 나중에 쌓인 뷰가 제일 상단에 위치한다.)
            Text("리버")
                .foregroundStyle(Color.white)
                .background(Color.gray)
            Text("나기")
                .foregroundStyle(Color.white)
                .background(Color.blue)
                .offset(x: 10, y: 10)
            Text("구밥")
                .foregroundStyle(Color.white)
                .background(Color.black)
                .offset(x: 20, y: 20)
            Text("허니비")
                .foregroundStyle(Color.white)
                .background(Color.yellow)
                .offset(x: 30, y: 30)
        }
    }
}

#Preview {
    ZStackView()
}
