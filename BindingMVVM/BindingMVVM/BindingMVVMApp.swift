//
//  BindingMVVMApp.swift
//  BindingMVVM
//
//  Created by 황예리 on 2022/12/17.
//

import SwiftUI

@main
struct BindingMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(GameSettings())
        }
    }
}
