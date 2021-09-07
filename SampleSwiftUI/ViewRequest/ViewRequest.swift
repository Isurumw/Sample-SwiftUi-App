//
//  ViewRequest.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-05.
//

import SwiftUI

struct ViewRequest: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var viewModel: ViewRequestViewModel
    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 10) {
                Text("Reported on \(viewModel.request.reportedAt.formattedDate(.format02))")
                    .font(.Subtext)
                    .foregroundColor(.Pewter)
                Text("\(viewModel.request.area.name) - \(viewModel.request.problem.name)")
                    .font(.H4)
                    .foregroundColor(.Satin)
                if let details = viewModel.request.details {
                    Text(details)
                        .font(.Body)
                        .foregroundColor(.Satin)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.request.attachments, id: \.self) { attachment in
                            URLImage(
                                url: URL(string: attachment),
                                placeholder: ActivityIndicator(
                                    isAnimating: .constant(true),
                                    style: .medium,
                                    color: .white
                                ),
                                width: viewModel.imageSize,
                                height: viewModel.imageSize
                            )
                            .frame(width: viewModel.imageSize, height: viewModel.imageSize)
                            .background(Color.Marble)
                            .cornerRadius(8.0)
                        }
                    }
                }
            }
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
        ViewRequest()
            .environmentObject(
                ViewRequestViewModel(
                    request: MaintenanceRequest.mockObj
                )
            )
    }
}
