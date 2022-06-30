//
//  ContentView.swift
//  HelloRedux
//
//  Created by Chi on 2022-06-29.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    
    struct Props {
        let counter: Int
        let onIncrement: () -> Void
    }
    private func map(state: State ) -> Props {
        Props(counter: state.counter, onIncrement: {
            store.dispatch(action: IncrementAction())
        })
    }
    var body: some View {
        
        let props = map(state: store.state)
        
        VStack {
        Text("\(props.counter)")
            .padding()
            Button("Increment"){
                props.onIncrement()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let store = Store(reducer: reducer)
        return ContentView().environmentObject(store)
    }
}
