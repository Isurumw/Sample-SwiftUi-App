//
//  SampleSwiftUIApp.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-01.
//

import SwiftUI

@main
struct SampleSwiftUIApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = navLargeTitleTextAttributes
        UINavigationBar.appearance().titleTextAttributes = navTitleTextAttributes
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Welcome()
            }
        }
    }
}
