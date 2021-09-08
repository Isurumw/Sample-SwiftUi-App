//
//  SampleSwiftUIApp.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-01.
//

import SwiftUI

@main
struct SampleSwiftUIApp: App {
    @ObservedObject var viewModel = BaseViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = navLargeTitleTextAttributes
        UINavigationBar.appearance().titleTextAttributes = navTitleTextAttributes
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Group {
                    if viewModel.isAuthenticated {
                        MainTab()
                    } else {
                        Welcome().environmentObject(viewModel)
                    }
                }
            }
        }
    }
}
