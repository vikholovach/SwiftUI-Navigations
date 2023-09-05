//
//  ContentView.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct PushContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: {
                    PushView()
                }, label: {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PushContentView()
    }
}
