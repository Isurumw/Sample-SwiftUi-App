//
//  Media.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-08.
//

import SwiftUI

struct Media: View {
    var size: CGFloat
    var attachments: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(attachments, id: \.self) { attachment in
                    URLImage(
                        url: URL(string: attachment),
                        placeholder: ActivityIndicator(
                            isAnimating: .constant(true),
                            style: .medium,
                            color: .white
                        ),
                        width: size,
                        height: size
                    )
                    .frame(width: size, height: size)
                    .background(Color.Marble)
                    .cornerRadius(8.0)
                }
            }
        }
    }
}

struct Media_Previews: PreviewProvider {
    static var previews: some View {
        Media(
            size: 80.0,
            attachments: [
                "https://different-app.s3.amazonaws.com/TenantAPI%2Fqa%2Fmaintenance%2Frequest%2Fimages%2Fc23c9a90-7453-11e9-87b7-4dd8285661e1-IMG_1.jpg",
                "https://different-app.s3.amazonaws.com/TenantAPI%2Fqa%2Fmaintenance%2Frequest%2Fimages%2F78c29810-803d-11e9-8f4e-578ca29c222b-IMG_1.jpg"
            ]
        )
        .previewLayout(.fixed(width: 300, height: 90))
    }
}
