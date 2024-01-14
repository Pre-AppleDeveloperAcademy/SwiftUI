//
//  TextFieldView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct TextFieldView: View {
    @State private var idString: String = ""
    @State var pwString: String = ""
    @State var nameString: String = ""
    /*
     public / private
     public : 어느 누구나 어디에서나 접근 가능한 제어자
     private : 본인 클래스나 스트럭트나 등등... 자기자신 내부에서만 사용 가능한 제어자
     */
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
            
            HStack {
                Text("이름 : ")
                TextField("이름을 입력하세요.", text: $nameString)
            }
            
            TestView(testVar: $nameString)
        }
        .padding()
    }
}

struct TestView: View {
    @Binding var testVar: String
    
    var body: some View {
        VStack {
            Text(testVar)
            Button {
                testVar = "버튼이 눌렸습니다."
            } label: {
                Text("저는 버튼입니다")
            }
        }
        
    }
}

#Preview {
    TextFieldView()
}
