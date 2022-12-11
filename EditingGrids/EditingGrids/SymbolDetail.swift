//
//  SymbolDetail.swift
//  EditingGrids
//
//  Created by 황예리 on 2022/12/05.
//

import SwiftUI

struct SymbolDetail: View {
    var symbol: Symbol
    
    var body: some View {
        VStack {
            Text(symbol.name)
                .font(.largeTitle)
            
            Image(systemName: symbol.name)
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.accentColor)
                .padding()
        }
    }
}

//struct SymbolDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        SymbolDetail(symbol: Symbol(name: "cloud"))
//    }
//}
