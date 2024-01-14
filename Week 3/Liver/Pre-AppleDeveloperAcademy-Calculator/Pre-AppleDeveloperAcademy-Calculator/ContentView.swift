import SwiftUI

struct CalculatorView: View {
    let buttons: [String] = [
        "AC", "+/-", "%", "÷",
        "7", "8", "9", "x",
        "4", "5", "6", "-",
        "1", "2", "3", "+",
        "0", ".", "="
    ]

    // 그리드 열 구성 정의
    let columns: [GridItem] = Array(repeating: .init(.adaptive(minimum: 80)), count: 4)
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(buttons, id: \.self) { button in
                Button(action: {
                    // 버튼 액션 처리
                }) {
                    Text(button)
                        .font(.system(size: 32))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 80)
                        .background(button == "0" ? Color.orange : Color.gray)
                        .foregroundColor(Color.white)
                        .cornerRadius(40)
                }
                .frame(minWidth: button == "0" ? (UIScreen.main.bounds.width - (5 * 10)) / 2 : 0, maxWidth: .infinity)
            }
        }
        .padding(.horizontal)
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
