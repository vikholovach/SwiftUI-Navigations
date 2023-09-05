//
//  PushView.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct PushView: View {
    
    @State var isPresented = false
    
    
    var body: some View {
        VStack {
            Text("This is pushedd view")
                .padding(24)
            
            Button("Present") {
                isPresented.toggle()
            }
        }
        .sheet(isPresented: $isPresented) {
            ModalView()
            //to change size of modaly presented view
            //.large - default -> fills all scree (almost)
            //.medium -> fills half of the screen
            //.fraction -> fills screen for desired size
            
            // -> you can use all three casses at once
                .presentationDetents([.medium, .large, .fraction(0.2)])
        }
    }
}

struct PushView_Previews: PreviewProvider {
    static var previews: some View {
        PushView()
    }
}
