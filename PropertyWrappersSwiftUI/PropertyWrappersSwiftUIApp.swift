//
//  PropertyWrappersSwiftUIApp.swift
//  PropertyWrappersSwiftUI
//
//  Created by Silouanos Nicolaou on 26/03/2021.
//
//  Followed explanations from this url:
//  https://purple.telstra.com/blog/swiftui---state-vs--stateobject-vs--observedobject-vs--environme

import SwiftUI

@main
struct PropertyWrappersSwiftUIApp: App {
    @StateObject var environmentObject = AppEnvironment()
    
    var body: some Scene {
        WindowGroup {
            ChangeNumberView().environmentObject(environmentObject)
        }
    }
}
