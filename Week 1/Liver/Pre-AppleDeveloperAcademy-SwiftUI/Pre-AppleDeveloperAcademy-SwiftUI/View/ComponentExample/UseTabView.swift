//
//  UseTabView.swift
//  Pre-AppleDeveloperAcademy-SwiftUI
//
//  Created by Kyungsoo Lee on 12/6/23.
//

import SwiftUI

struct UseTabView: View {
    @State var tabIndex: Int = 0
    var tabItemColor: [Int: Color] = [ 0: .red, 1: .blue, 2: .green]
    
    var body: some View {
        TabView(selection: $tabIndex) {
            FirstView(tabIndex: $tabIndex)
                .tabItem {
                    Image(systemName: "circle.fill")
                        .tint(.red)
                        .foregroundStyle(.red)
                    Text("red")
                }
                .tag(0)
            
            SecondView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("blue")
                }
                .tag(1)
            
            ThirdView()
                .tabItem {
                    Image(systemName: "circle.fill")
                    Text("green")
                }
                .tag(2)
        }
        // tint(_:) - iOS 15 이상부터 Viwe에 Color를 적용하는 방법.
        // 그냥 심심해서 해봤어용... 한 가지 알게된 사실은
        // SwiftUI에서 TabView의 TabItem읜 개별 색상이 지정이 되지 않습니다!..
        // 그래서 딕셔너리를 사용해서 index에 따라 색상을 직접 변경해줬습니다!..
        .tint(tabItemColor[tabIndex])
    }
}

struct FirstView: View {
    @Binding var tabIndex: Int
    
    var body: some View {
        ZStack {
            Color.red
            
            VStack {
                Text("First View")
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                Button {
                    tabIndex += 1
                } label: {
                    Text("다음")
                }
                .padding()
                .foregroundStyle(Color.white)
                .background(.black)
                
            }
        }
    }
}

struct SecondView: View {
    
    var body: some View {
        ZStack {
            Color.blue
            
            Text("Second View")
                .foregroundStyle(.white)
                .font(.system(size: 50))
        }
    }
}

struct ThirdView: View {
    
    var body: some View {
        ZStack {
            Color.green
            
            Text("Third View")
                .foregroundStyle(.white)
                .font(.system(size: 50))
        }
    }
}

#Preview {
    UseTabView()
}
