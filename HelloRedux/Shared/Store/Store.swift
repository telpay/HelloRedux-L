//
//  Store.swift
//  HelloRedux
//
//  Created by Chi on 2022-06-29.
//

import Foundation
typealias Reducer = (_ state: State, _ action: Action) -> State

struct State   {
    var counter = 0
}

protocol Action {}

func reducer(_ state: State, _ action: Action) -> State {
    return state
}
class Store {
    var reducer:Reducer
    var state:State
    init(reducer: @escaping Reducer, state: State = State()  ) {
        self.reducer = reducer
        self.state = state
            
        }
}