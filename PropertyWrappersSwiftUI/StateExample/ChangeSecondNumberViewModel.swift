//
//  ChangeSecondNumberViewModel.swift
//  PropertyWrappersSwiftUI
//
//  Created by Silouanos Nicolaou on 26/03/2021.
//

import Foundation
import Combine

class ChangeSecondNumberViewModel: ObservableObject {
    var subscriptions = Set<AnyCancellable>()

    @Published var num = 0
    
    init() {
        $num.sink { value in
            print("Value sinked \(value)")
        }
        .store(in: &subscriptions)
    }
}
