//
//  ContentView.swift
//  MyStory
//
//  Created by 황예리 on 2022/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Story01()
    }
}

struct Story01: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Page 1")
                    .font(.headline)
                    .padding()
                
                Spacer()
                Text("일기..였던 것")
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
            }
            
            VStack(alignment: .trailing) {
                Text("akskkandknwqjbdbcjsdnflksdklfklsdnfjksdbnfjnsfklwefmklenfkwjenfjkwenfknweklfwekfkwlefjkwlenfkmwenfnewkflnwekfkwfjkwejfkwemnfklwmflwmelkfmewklfmewlkfmlkewmfkwnfkwnflwnfklwmfklwmkfmekfmwkjopql;qwke;lqke;lqkel;w,qdmkjnfj;nerkfl;ewmf")
                    .frame(width: 300)
                    .font(.body)
                Spacer()
            }
            
            NavigationLink(destination: Story02()) {
                Text("첫 장 넘기기")
            }
                .bold()
                .foregroundColor(.blue)
                .frame(width: 300, height: 60)
                .background(Color.yellow)
                .cornerRadius(10)
                .opacity(0.6)
        }
    }
}
    
struct Story02: View {
    var body: some View {
        VStack {
            Text("Page 2")
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
            
            NavigationLink(destination: Story03()) {
                Text("다음 페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
            
            NavigationLink(destination: Story01()) {
                Text("처음 페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
        }
    }
    
    struct Story03: View {
        var body: some View {
            VStack {
                Text("Page 3")
                    .font(.headline)
                    .padding()
                
                Text("~ 앙칼티즈 ~")
                    .font(.title3)
                    .fontWeight(.ultraLight)
                    .padding()
                
                Spacer()
                Image("cute2")
                    .resizable()
                    .frame(width: 300, height: 300)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("akskkandknwqjbdbcjsdnflksdklfklsdnfjksdbnfjnsfklwefmklenfkwfkmwenfnewkflnwekf")
                    .frame(width: 300)
                    .font(.body)
                    .padding()
                Spacer()
            }
            
            NavigationLink(destination: Story04()) {
                Text("다음페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
            
            NavigationLink(destination: Story02()) {
                Text("이전페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
        }
    }
    
    struct Story04: View {
        var body: some View {
            VStack {
                Text("Page 4")
                    .font(.headline)
                    .padding()
                
                Spacer()
                
                Text("~ 왕코왕귀 ~")
                    .font(.title3)
                    .fontWeight(.ultraLight)
                
                Spacer()
                Image("fun1")
                    .resizable()
                    .frame(width: 320, height: 350)
                    .padding()
            }
            
            VStack(alignment: .trailing) {
                Text("akskkandknwqjbdbcjsdnflksdklfklsdnfjksdbnfjnsfklw")
                    .frame(width: 300)
                    .font(.body)
                Spacer()
            }
            
            NavigationLink(destination: Story05()) {
                Text("다음페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
            
            NavigationLink(destination: Story03()) {
                Text("이전페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
        }
    }
    
    struct Story05: View {
        var body: some View {
            VStack {
                Text("Page 5")
                    .font(.headline)
                    .padding()
                
                Spacer()
                
                Text("~ 주인님 그 놈은 가짜예요 ~")
                    .font(.title3)
                    .fontWeight(.ultraLight)
                    .padding()
                
                Spacer()
                Image("fun4")
                    .resizable()
                    .frame(width: 310, height: 310)
                    .border(.gray)
                    .padding()
            }
            
            VStack(alignment: .trailing) {
                Text("akskkandknwqjbdklfklsdnfjksdbnfjnsfklwefmklenfkwjenfjkwenfknweklfwekfkwlenfkmwenfnewkflnwekfkfw")
                    .frame(width: 300)
                    .font(.body)
                Spacer()
            }
            
            NavigationLink(destination: Story01()) {
                Text("처음 페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
            
            NavigationLink(destination: Story04()) {
                Text("이전페이지")
            }
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
        }
    }
   
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
