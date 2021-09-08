//
//  MainTab.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-02.
//

import SwiftUI

struct MainTab: View {
    @ObservedObject var viewModel = DashboardViewModel()
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            Overview()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("OverView")
                        .font(.Label)
                        .foregroundColor(.Pewter)
                }
                .tag(0)
                .environmentObject(viewModel)
            RequestList()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Maintenance")
                        .font(.Label)
                        .foregroundColor(.Pewter)
                }
                .tag(1)
                .environmentObject(viewModel)
        }.onAppear() {
            UITabBar.appearance().barTintColor = .white
            UITabBar.appearance().unselectedItemTintColor = UIColor(.Pewter)
            viewModel.fetchRequests()
            viewModel.fetchCards()
        }
        .accentColor(.Grape)
        .colorMultiply(.white)
        .navigationBarBackButtonHidden(true)
        .navigationTitle(selectedIndex == 0 ? "" : "Requests")
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
