//
//  StateView.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import SwiftUI

struct StateView: View {
    @State private var toggleState: Bool = false
    // @State -> View를 새로 그림
    // 값을 내부에서 결정해서 private
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Text("State View")
                .font(.largeTitle)
            
            // 꼭 State var 필요한 것들 -> Toggle, .SheetView, TapView-tag(0), TextField-text
            Toggle(isOn: $toggleState) {
                Text("toggleState")
                    .font(.title2).bold()
            }
            
            Text(String(toggleState)) // Bool 타입을 그냥 문자로 바꿔서 보여줌
            
            Spacer()
            
            StateSecondView(toggleState2: toggleState, toggleBinding2: $toggleState)
            
            Spacer()
        }
        .padding()
    }
}

struct StateSecondView: View {
    @State var toggleState2: Bool
    @Binding var toggleBinding2: Bool
    // @Binding -> 초기값을 못받는, private 못붙임
    
    var body: some View {
        Group {
            Text("Binding View")
                .font(.largeTitle)
            
            Toggle(isOn: $toggleState2) {
                Text("toggleState2")
                    .font(.title2).bold()
            }
            
            Text(String(toggleState2))
            
            Toggle(isOn: $toggleBinding2) {
                Text("toggleBinding2")
                    .font(.title2).bold()
            }
            
            Text(String(toggleBinding2))
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
