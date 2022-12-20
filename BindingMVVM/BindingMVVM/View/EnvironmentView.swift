//
//  EnvironmentView.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/18.
//

import SwiftUI

class GameSettings: ObservableObject {
    // 마찬가지로 ObservableObject 프로토콜을 따른다.
    @Published var score = 0 // 구독할 변수
}

struct EnvironmentView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Score: \(settings.score)")
            
            Button("Increase Score") {
                settings.score += 1
            }
            
            NavigationLink(destination: FirstView()) {
                Text("Show First View")
            }
            
            NavigationLink(destination: SecondView()) {
                Text("Show Second View")
            }
        }
    }
}

struct FirstView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct SecondView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        Text("Score: \(settings.score)")

    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView().environmentObject(GameSettings())
    }
}
