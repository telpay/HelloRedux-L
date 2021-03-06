//
//  HelloReduxApp.swift
//  HelloRedux
//
//  Created by Chi on 2022-06-29.
//

import SwiftUI

@main
struct HelloReduxApp: App {
    var body: some Scene {
        
        let store = Store(reducer: reducer)
        
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
