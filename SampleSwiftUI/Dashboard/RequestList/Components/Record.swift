//
//  Record.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-03.
//

import SwiftUI

struct Record: View {
    var imageUrl: URL
    var title: String
    var subTitle: String
    
    var body: some View {
        HStack {
            URLImage(
                url: imageUrl,
                placeholder: ActivityIndicator(
                    isAnimating: .constant(true),
                    style: .medium,
                    color: .Pewter
                )
            )
            .padding(.trailing, 16)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.BodyBold)
                    .foregroundColor(.Satin)
                Text(subTitle)
                    .font(.Caption)
                    .foregroundColor(.Stone)
            }
            Spacer()
        }
        .padding(.all, 16)
    }
}

struct MaintenanceRow_Previews: PreviewProvider {
    static var previews: some View {
        Record(
            imageUrl: URL(string: "https://s3.amazonaws.com/different-app/Mobile/icons/ic_electrical.png")!,
            title: "Kitchen - Appliance isn’t working",
            subTitle: "CLOSED on 4 aug 2020"
        )
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
