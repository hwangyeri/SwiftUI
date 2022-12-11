//
//  ContentView.swift
//  EditingGrids
//
//  Created by 황예리 on 2022/11/30.
//

import SwiftUI

struct ContentView: View {
    @State private var isAddingSymbol = false
    @State private var isEditing = false
    
    let gridColumns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @State private var symbols = [
        Symbol(name: "tshirt"),
        Symbol(name: "eyes"),
        Symbol(name: "eyebrow"),
        Symbol(name: "nose"),
        Symbol(name: "mustache"),
        Symbol(name: "mouth"),
        Symbol(name: "eyeglasses"),
        Symbol(name: "facemask"),
        Symbol(name: "brain.head.profile"),
        Symbol(name: "brain"),
        Symbol(name: "icloud"),
        Symbol(name: "theatermasks.fill"),
        Symbol(name: "moon.stars"),
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(symbols) { symbol in
                        NavigationLink {
                            SymbolDetail(symbol: symbol)
                        } label: {
                            Image(systemName: symbol.name)
                                .resizable()
                                .scaledToFit()
                                .symbolRenderingMode(.hierarchical)
                                .foregroundColor(.accentColor)
                                .padding()
                                .overlay(alignment: .topTrailing) {
                                    if isEditing {
                                        Button {
                                            // remove
                                        } label: {
                                            Image(systemName: "xmark.square.fill")
                                                .font(.title)
                                                .symbolRenderingMode(.palette)
                                                .foregroundStyle(.white, Color.red)
                                        }
                                    }
                                }
                        }
                    }
                }
                .navigationTitle("My Symbol")
                .navigationBarTitleDisplayMode(.inline)
                
            }.toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isAddingSymbol = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(isEditing ? "Done" : "Edit") {
                        withAnimation {
                            isEditing.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView()
        }
    }
}
