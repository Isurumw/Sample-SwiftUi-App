//
//  Tools.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-06.
//

import SwiftUI

struct Tools: View {
    let title: String
    
    var body: some View {
        Button(
            action: {},
            label: {
                HStack {
                    Text(title)
                        .font(.H5)
                        .foregroundColor(.Satin)
                    Image(systemName: "chevron.down")
                        .resizable()
                        .foregroundColor(.Satin)
                        .frame(width: 13, height: 8)
                }
            }
        )
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing], 16)
        .background(Color.white)
        .cornerRadius(22)
        .shadow(radius: 2)
    }
}

struct Tools_Previews: PreviewProvider {
    static var previews: some View {
        Tools(title: "SwiftUI Tools")
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
