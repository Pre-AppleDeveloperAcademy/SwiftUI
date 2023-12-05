//
//  VStackView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            // Vertical Stack : 세로 스택에 뷰를 쌓는다.
            // alignment(optional) : 스택에서 어떻게 정렬할지 정해주는 옵션.
            // spacing : 스택 내부의 각 컴포넌트끼리 얼마만큼 간격을 설정할지 정해주는 옵션.
            Text("나기")
            Text("구밥")
            Text("리버")
            Text("라프")
            Text("허니비")
            Text("쿠키")
            Text("롭")
            Text("윤")
            Text("지나")
        }
    }
}

#Preview {
    VStackView()
}
