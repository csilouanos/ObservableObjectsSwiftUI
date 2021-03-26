//
//  ChangeSecondNumberView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Silouanos Nicolaou on 26/03/2021.
//

import SwiftUI

struct ChangeSecondNumberView: View {
    
    /// StateObject changes the UI based on that. (Class should inherit from observable object)
    @StateObject var viewModel = ChangeSecondNumberViewModel()
    
    /// A way to pass data from one view to another
    @ObservedObject var changeNumberViewModel: ChangeNumberViewModel
    
    var body: some View {
        VStack {
            Text("Second variable \(viewModel.num)")
            Button("Hit me twice") {
                print("Hitted")
                viewModel.num += 2
                changeNumberViewModel.num += 3
            }
        }.onChange(of: viewModel.num) { value in
            print("Value change \(value)")
        }
    }
}

struct ChangeSecondNumberView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeSecondNumberView(changeNumberViewModel: ChangeNumberViewModel())
    }
}
