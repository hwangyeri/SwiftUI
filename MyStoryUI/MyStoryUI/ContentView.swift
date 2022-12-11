//
//  ContentView.swift
//  MyStoryUI
//
//  Created by 황예리 on 2022/11/21.
//

import SwiftUI

struct ContentView: View {
    @State var stack = NavigationPath()
    
    var body: some View {
        // Page 1
        NavigationStack(path: $stack) {
            Text("Page 1")
                .font(.headline)
                .padding()
            
            Spacer()
            Text("힐링힐링 짤 모음집")
                .font(.title)
                .bold()
            Text("~ 처음꺼 다 날라가서 눈물을 머금고 다시 try...🤗 ~")
                .font(.subheadline)
                .fontWeight(.ultraLight)
                .padding()
            Image("meat")
                .resizable()
                .frame(width: 300, height: 200)
                .padding()
            
            VStack(alignment: .trailing) {
                Text("akskkandknwqjbdbcjsdnflksdklfklsdnfjksdbnfjnsfklwefmklenfkwjenfjkwenfknweklfwekfkwlefjkwlenfkmwenfnewkflnwekfkwfjkwejfkwemnfklwmflwmelkfmewklfmewlkfmlkewmfkwnfkwnflwnfklwmfklwmkfmekfmwkjopql;qwke;lqke;lqkel;w,qdmkjnfj;nerkfl;ewm")
                    .frame(width: 300)
                    .font(.body)
                Spacer()
            }
            
            // Page 2
            NavigationLink("첫 장 넘기기", value: "2")
                .bold()
                .font(.callout)
                .foregroundColor(.blue)
                .frame(width: 300, height: 60)
                .background(Color.yellow)
                .cornerRadius(10)
                .opacity(0.6)
                .navigationDestination(for: String.self) { value in
                    VStack {
                        Text("Page \(value)")
                            .font(.headline)
                            .padding()
                        
                        Text("~ 셀카고영이 ~")
                            .font(.title3)
                            .fontWeight(.ultraLight)
                            .padding()
                        
                        Image("cute1")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .padding()
                        
                        VStack(alignment: .trailing) {
                            Text("dbhfhsdkjfnlksdfklsndklfnlsdnflksdnklfdsnlkffsdklfnkldsnfkldsklfsdlkf")
                                .frame(width: 300)
                                .font(.body)
                                Spacer()
                        }
                        
                        NavigationLink("다음 페이지", value: "3")
                            .bold()
                            .font(.callout)
                            .foregroundColor(.blue)
                            .frame(width: 300, height: 50)
                            .background(Color.yellow)
                            .cornerRadius(10)
                            .opacity(0.6)
                        
                        Button("이전 페이지") {
                            stack.removeLast()
                        }
                        .bold()
                        .font(.callout)
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .opacity(0.6)
                        
                        Button("첫 장으로 돌아가기") {
                            stack = .init()
                        }
                        .bold()
                        .font(.callout)
                        .foregroundColor(.blue)
                        .frame(width: 300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .opacity(0.6)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
