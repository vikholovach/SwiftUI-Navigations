//
//  ModalView.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct ModalView: View {
    
    // @Environment helping to get and "action" .dismiss from main view and called in desired action
    //MARK: - available iOS 15
    @Environment(\.dismiss) var dismiss
    //MARK: - available iOS 14
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("I've been modally presented")
                .padding(24)
            Button("Dismiss") {
                //MARK: - available iOS 15
//                dismiss()
                //MARK: - available iOS 14
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
