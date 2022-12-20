//
//  ContentView.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import SwiftUI

struct ContentView: View {
    @State private var toggleState: Bool = false
    
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            NavigationLink {
                StateView()
            } label: {
                Text("State View")
            }
            
            Spacer()
            
            NavigationLink {
                BadStateView()
            } label: {
                Text("BadState View")
            }
            
            Spacer()
            
            
            NavigationLink {
                ObservableView()
            } label: {
                Text("Observable View")
            }
            
            Spacer()
            
            NavigationLink {
                EnvironmentView()
            } label: {
                Text("Environment View")
            }
        }
        .navigationTitle("Main")    //  왜 안보이는 티비..?
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
