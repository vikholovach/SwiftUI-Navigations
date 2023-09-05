//
//  NavigationStackView.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

struct NavigationStackView: View {
    let user: User
    
    var body: some View {
        HStack {
            Text("Hello, \(user.name)")
            Text(user.surname)
        }
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView(user: User(
            name: "baz",
            surname: "bar"))
    }
}
