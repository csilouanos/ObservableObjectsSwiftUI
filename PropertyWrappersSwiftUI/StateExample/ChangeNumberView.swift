//
//  StateTestView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Silouanos Nicolaou on 26/03/2021.
//

import SwiftUI

struct ChangeNumberView: View {
    /// StateObject changes the UI based on that. (Class should inherit from observable object)
    @StateObject var changeNumberViewModel = ChangeNumberViewModel()
    
    /// EnvironentObject used (usually) from root view to create an environment variable through the hierarchy of views.
    @EnvironmentObject var appEnvironmentObject: AppEnvironment

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("From environment object: \(appEnvironmentObject.applicationInfo)")
                Text("Number \(changeNumberViewModel.num)")
                Button("Press me!") {
                    changeNumberViewModel.num += 1
                    print("Number \(changeNumberViewModel.num)")
                }
                
                NavigationLink(
                    destination: ChangeSecondNumberView(changeNumberViewModel: changeNumberViewModel),
                    isActive: $changeNumberViewModel.showNextView,
                    label: {
                        Text("Navigate")
                    })

            }
            /// On change triggers based on the changes of the provided variable
            .onChange(of: changeNumberViewModel.num) { newTestObject in
                print("State: \(newTestObject)")
            }
            .onChange(of: changeNumberViewModel.showNextView) { value in
                print("Show next view \(value)")
            }
        }
    }
}

struct StateTestView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeNumberView()
            .environmentObject(AppEnvironment())
    }
}
