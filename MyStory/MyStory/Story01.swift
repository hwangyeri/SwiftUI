//
//  Story01.swift
//  MyStory
//
//  Created by 황예리 on 2022/11/22.
//

import SwiftUI

struct Story01: View {
    var body: some View {
        VStack {
            Text("Page 1")
                .font(.headline)
                .padding()
            
            Spacer()
            
            Text("책 제목 들어갈 자리")
                .font(.title)
                .bold()
            Text("~ 부제 : 들어갈 자리 ~")
                .font(.title3)
                .fontWeight(.ultraLight)
                .padding()
            
            Spacer()
            Image(systemName: "cloud")
            Spacer()
        }
        
        VStack(alignment: .trailing) {
            Text("akskkandknwqjbdbcjsdnflksdklfklsdnfjksdbnfjnsfklwefmklenfkwjenfjkwenfknweklfwekfkwlefjkwlenfkmwenfnewkflnwekfkwfjkwejfkwemnfklwmflwmelkfmewklfmewlkfmlkewmfkwnfkwnflwnfklwmfklwmkfmekfmwkjopql;qwke;lqke;lqkel;w,qdmkjnfj;nerkfl;ewmf kwnfkjjwelfmklwnfklnwlfmklewmfkewnmfkewmkfmklfmklwm;lfw,el;")
                .frame(width: 300)
                .font(.body)
            Spacer()
        }
        
        NavigationLink("책장 넘기기", destination: Story02())
            .bold()
            .foregroundColor(.blue)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .cornerRadius(10)
            .opacity(0.6)
    }
}

struct Story01_Previews: PreviewProvider {
    static var previews: some View {
        Story01()
    }
}
