//
//  TestObject.swift
//  PropertyWrappersSwiftUI
//
//  Created by Silouanos Nicolaou on 26/03/2021.
//

import Foundation

class ChangeNumberViewModel: ObservableObject {
    @Published var num = 0
    @Published var showNextView = false
}
