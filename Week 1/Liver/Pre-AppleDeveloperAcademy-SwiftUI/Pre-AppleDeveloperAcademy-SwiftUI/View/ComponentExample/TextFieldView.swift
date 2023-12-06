//
//  TextFieldView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct TextFieldView: View {
    @State var idString: String = ""
    @State var pwString: String = ""
    var body: some View {
        VStack {
            HStack {
                Text("ID : ")
                TextField("아이디를 입력하세요.", text: $idString)
            }
            
            HStack {
                Text("PW : ")
                TextField("비밀번호를 입력하세요.", text: $pwString)
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldView()
}
