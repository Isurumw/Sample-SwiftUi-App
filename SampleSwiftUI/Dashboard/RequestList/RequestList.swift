//
//  Maintenance.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-02.
//

import SwiftUI

struct RequestList: View {
    @EnvironmentObject var viewModel: DashboardViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            List {
                ForEach(viewModel.requests) { request in
                    NavigationLink(
                        destination: ViewRequest()
                            .environmentObject(
                                ViewRequestViewModel(request: request)
                            )
                    ) {
                        Record(
                            imageUrl: request.problem.asset,
                            title: "\(request.area.name) - \(request.problem.name)",
                            subTitle: request.reportedAt.formattedDate
                        )
                    }
                }
            }
        }
    }
}

struct Maintenance_Previews: PreviewProvider {
    
    static var previews: some View {
        RequestList()
            .environmentObject(DashboardViewModel())
    }
}
