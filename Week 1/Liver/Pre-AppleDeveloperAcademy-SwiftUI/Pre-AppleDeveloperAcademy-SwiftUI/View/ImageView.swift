//
//  ImageView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack(spacing: 10) {
            // Image는 보통 크게 두 가지 방법으로 많이 사용된다.
            // 1. 프로젝트 Assets에 이미 포함된 사진을 직접 불러오는 방법
            Image("왕관")
            
            // 2. SF Symbol에서 제공하는 아이콘을 불러오는 방법
            Image(systemName: "crown.fill")
            
            /*
             (번외)
             3. 네트워크를 통해 사진을 불러오는 방법
             이 때는 Image가 아닌 AsyncImage를 사용한다.
             placeholder는 이미지가 불러와지지 않았을 때를 대비한 기본 이미지이다.
             */
            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/143686031?s=96&v=4")) { image in
                image
                    .resizable()
                
            } placeholder: {
                Image(systemName: "apple.logo")
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 50)
        }
        
    }
}

#Preview {
    ImageView()
}
