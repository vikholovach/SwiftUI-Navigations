//
//  NavigationStackView.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct NavigationStackContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                //everything that goes to valus SHOULD be Hashable
                NavigationLink(value: User()) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, Jobs!")
                }
                
                NavigationLink(value: User(name: "Steve", surname: "Vozniak")) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, Vozniak !")
                }
            }
            .padding()
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                NavigationStackView(user: user)
            }
        }
    }
}

struct NavigationStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackContentView()
    }
}

//MARK: - Test Struct

struct User: Hashable {
    var name = "Steve"
    var surname = "Jobs"
}
