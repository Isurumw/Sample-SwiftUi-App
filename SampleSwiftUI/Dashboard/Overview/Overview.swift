//
//  Overview.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-02.
//

import SwiftUI

struct Overview: View {
    @EnvironmentObject var viewModel: DashboardViewModel
    
    var body: some View {
        GeometryReader { metrics in
            VStack {
                Image("Cover")
                    .resizable()
                    .frame(height: metrics.size.height * 0.3)
                Tools(title: "SwiftUI Tools")
                    .offset(y: -30)
                    .padding(.bottom, -30)
                    .frame(maxWidth: metrics.size.width * 0.8)
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.overviewCards) { card in
                            Card(card: card)
                        }
                    }
                }.padding(.all, 16)
            }
            .ignoresSafeArea(edges: .top)
        }
        .background(Color.Background)
        .onAppear {
            viewModel.fetchCards()
        }
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
            .environmentObject(DashboardViewModel())
    }
}
