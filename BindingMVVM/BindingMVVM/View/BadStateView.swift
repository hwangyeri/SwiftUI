//
//  BadStateView.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import SwiftUI

struct BadStateView: View {
    @State var name: String = "사과"
    @State var category: String = "과일"
    @State var isHave: Bool = false
    @State var isFrozen: Bool = false
    @State var counter: Int = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(name)
            Text(category)
            Text(isHave ? "보유중" : "없음")
            Text(isFrozen ? "냉동" : "냉장")
            Text("\(counter)")  // 왜 여기만 보간법??
            
            NavigationLink {
                BadStateDetailView(name: $name, category: $category, isHave: $isHave, isFrozen: $isFrozen, counter: $counter) // 바인딩을 걸었으면 괄호 안에 바인딩 또 걸어줘야하는?
            } label: {
                Text("상세하게 보러가기")
            }
        }
    }
}

struct BadStateDetailView: View {
    @Binding var name: String
    @Binding var category: String
    @Binding var isHave: Bool
    @Binding var isFrozen: Bool
    @Binding var counter: Int
    
    
    var body: some View {
        VStack(alignment : .leading, spacing: 20) {
            
            Text("이름: \(name)")
            Text("카테고리: \(category)")
            Text("보유 여부: \(isHave ? "보유 중" : "없음")")
            Text("냉동 여부: \(isFrozen ? "냉동" : "냉장")")
            Text("가지고 있는 개수: \(counter)")
            
            NavigationLink {
                BadStateChangeView(name: $name, category: $category, isHave: $isHave, isFrozen: $isFrozen, counter: $counter)
            } label: {
                Text("수정하러 가기")
            }
        }
    }
}

struct BadStateChangeView: View {
    @Binding var name: String
    @Binding var category: String
    @Binding var isHave: Bool
    @Binding var isFrozen: Bool
    @Binding var counter: Int
    
    @State var nameField : String = ""
    @State var categoryField : String = ""
    
    
    var body: some View {
        VStack(alignment : .leading, spacing: 20) {
            Text("이름: \(name)")
            TextField("변경할 이름을 입력해주세요!", text: $nameField)
                .textFieldStyle(.roundedBorder)
            Button {
                name = nameField
            } label: {
                Text("이름 수정하기")
            }
            
            Divider()
            
            Text("카테고리: \(category)")
            TextField("변경할 카테고리를 입력해주세요!", text: $categoryField)
                .textFieldStyle(.roundedBorder)
            Button {
                category = categoryField
            } label: {
                Text("카테고리 수정하기")
            }
            
            Divider()
            
            Group {
                Text("보유 여부: \(isHave ? "보유 중" : "없음")")
                Toggle(isOn: $isHave) {
                    Text("보유 여부 변경")
                }
                
                Divider()

                Text("냉동 여부: \(isFrozen ? "냉동" : "냉장")")
                Toggle(isOn: $isFrozen) {
                    Text("냉동 여부 변경")
                }
                
                Divider()
                
                Text("가지고 있는 개수: \(counter)")
                Stepper(value: $counter, in: 0...9) {
                    Text("갯수 변경")
                }

            }
        }
        .padding()
    }
}

struct BadStateView_Previews: PreviewProvider {
    static var previews: some View {
        BadStateView()
    }
}
