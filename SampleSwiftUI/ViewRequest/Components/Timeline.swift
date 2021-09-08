//
//  Timeline.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-08.
//

import SwiftUI

struct Timeline: View {
    var logs: [Log]
    
    var body: some View {
        VStack {
            ForEach(logs, id: \.self) { log in
                HStack(alignment: .top, spacing: 12) {
                    VStack {
                        Image(systemName: log.icon)
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.Satin)
                            .padding(.all, 10)
                            .background(Color.Aluminum)
                            .cornerRadius(30)
                            .shadow(
                                color: Color(
                                    .sRGBLinear,
                                    white: 0,
                                    opacity: 0.2
                                ),
                                radius: 6
                            )
                        if logs.firstIndex(of: log)! < (logs.count - 1) {
                            Image("Line")
                                .resizable()
                                .frame(width: 1, height: 20)
                                .padding([.top, .bottom], 4)
                        }
                    }
                    VStack(alignment: .leading, spacing: 2) {
                        Text(log.status.capitalized)
                            .font(.BodyBold)
                            .foregroundColor(.Satin)
                        Text(log.reportedAt.formattedDate(.format02))
                            .font(.Subtext)
                            .foregroundColor(.Stone)
                    }
                    .padding(.top, 4)
                    Spacer()
                }
            }
        }
        
    }
}

struct Timeline_Previews: PreviewProvider {
    static var previews: some View {
        Timeline(logs: Log.mockLogs)
            .previewLayout(.fixed(width: 300, height: 500))
    }
}
