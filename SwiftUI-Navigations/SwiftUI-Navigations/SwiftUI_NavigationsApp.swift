//
//  SwiftUI_NavigationsApp.swift
//  SwiftUI-Navigations
//
//  Created by Viktor Golovach on 05.09.2023.
//

import SwiftUI

@main
struct SwiftUI_NavigationsApp: App {
    
    //in case if we want to show Stack tab first
    // we creating 2 casses with tabName
    enum Tabs: Hashable {
        case push, stack
    }
    
    //based on selectedTab rootView will redraw
    @State var selectedTab: Tabs = .stack
    
    var body: some Scene {
        WindowGroup {
            //creating tabbar && initializing tabItems
            //will show selected tab in selection, by desired case in $selectedTab
            TabView(selection: $selectedTab) {
                PushContentView()
                    .tabItem {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
                        Text("Push")
                    }
                //adding badge on top of Image with desired count
                    .badge(4)
                //applying tag to determine which tab is related to selected Tabs.case
                    .tag(Tabs.push)
                NavigationStackContentView()
                    .tabItem {
                        Image(systemName: "arrow.right.doc.on.clipboard")
                        Text("Stack")
                    }
                //applying tag to determine which tab is related to selected Tabs.case
                    .tag(Tabs.stack)
            }
        }
    }
}
