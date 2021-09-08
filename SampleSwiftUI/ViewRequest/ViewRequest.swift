//
//  ViewRequest.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-05.
//

import SwiftUI

struct ViewRequest: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var request: MaintenanceRequest
    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 10) {
                Text("Reported on \(request.reportedAt.formattedDate(.format02))")
                    .font(.Subtext)
                    .foregroundColor(.Pewter)
                Text("\(request.area.name) - \(request.problem.name)")
                    .font(.H4)
                    .foregroundColor(.Satin)
                if let details = request.details {
                    Text(details)
                        .font(.Body)
                        .foregroundColor(.Satin)
                }
                Media(
                    size: 80.0,
                    attachments: request.attachments
                )
            }
            .padding(.bottom, 10)
            Timeline(logs: request.log)
                .padding([.top, .bottom], 10)
        }
        .navigationTitle("Maintenance")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading: CustomBackButton(presentationMode: self.presentationMode)
        )
    }
}

struct ViewRequest_Previews: PreviewProvider {
    static var previews: some View {
        ViewRequest(request: MaintenanceRequest.mockObj)
    }
}
