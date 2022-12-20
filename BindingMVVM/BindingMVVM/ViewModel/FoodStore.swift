//
//  FoodStore.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import Foundation
import SwiftUI  // 왜 해줘야 되는건지 까먹은...죄송티비

// View에서는 View를 그리는 코드만 있고, 그 안에서 쓸 함수는 ViewModel을 시켜서 불러옴.

class FoodStore: ObservableObject { // ObservableObject -> 감지해서 이벤트를 보내주는, 알림해주는 애
    
    @Published var food: Food       // @Published -> 감지를 해야되는 값인지 알려주는, 값 바뀐거 감지하는 애
    var storeName: String = "사과 가게" // 초기화, 실제로 값을 넣는 방법
    
    // class에는 init을 만들어줘야함. 2번째 초기화 방법
    init(food: Food = Food(name: "사과", category: "과일", isHave: false, isFrozen: false, quantity: 1)) {
        self.food = food
    }
    
    func buyFood(quantity: String) {
        guard let num = Int(quantity) else {    // guard let - 조건문이 true일 때 코드가 계속 실행, 언래핑이 가능하면 num에 넘어줌.
            print("수량을 입력하세요!")             // 조건이 false 일 때 else 문이 실행되며 상위 코드 블럭을 종료하는 함수가 반드시 필요함.
            return
        }
        self.food.quantity += num
    }
    
}
