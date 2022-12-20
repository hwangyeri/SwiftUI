//
//  ObservableView.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import SwiftUI

struct ObservableView: View {
    @State var nameField: String = ""
    @ObservedObject var foodStore: FoodStore = FoodStore()
    // @ObservedObject -> 넘겨 받아서 뷰를 다시 그리는, 알림을 받는 애
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text(foodStore.storeName)
                .font(.title).bold()
            
            TextField("가게 이름을 입력해주세요!", text: $nameField)
            
            Button("가게 이름 수정하기") {
                foodStore.storeName = nameField
            }
            
            Button("이름 확인하기") {
                print("가게 이름: ", foodStore.storeName)
            }
            
            NavigationLink {
                ObservableDetailView(foodStore: foodStore)
            } label: {
                Text("자세히 확인하기")
            }

        }
        .padding()
    }
}

struct ObservableDetailView: View {
    @ObservedObject var foodStore: FoodStore
    
    var body: some View {
        VStack(alignment : .leading, spacing : 20) {
            
            Text("냉장고")
                .font(.largeTitle).bold()
            
            Text("이름: \(foodStore.food.name)")
                .font(.title).bold()
            
            Group {
                Text("카테고리: \(foodStore.food.category)")
                
                Text("보유 여부: \(foodStore.food.isHave ? "보유중" : "없음")")
                
                Text("냉동 여부: \(foodStore.food.isHave ? "냉동" : "냉장")")
                
                Text("가지고 있는 개수: \(foodStore.food.quantity)")
            }
            .font(.title2)
            
            NavigationLink {
                ObservableBuyView(foodStore: foodStore)
            } label: {
                Text("구매하러 가기")
            }
        }
    }
}

struct ObservableBuyView: View {
    @ObservedObject var foodStore: FoodStore
    @State var quantityField: String = ""
    
    var body: some View {
        VStack(alignment : .leading, spacing: 20) {
            
            Text("현재 보유 수량: \(foodStore.food.quantity)")
                .font(.title).bold()
            
            HStack {
                TextField("구매할 개수을 입력해주세요!", text: $quantityField)
                    .textFieldStyle(.roundedBorder)
                
                Button("개 구매하기") {
                    foodStore.buyFood(quantity: quantityField)
                }
            }
        }
        .padding()
    }
}

struct ObservableView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableView()
    }
}
