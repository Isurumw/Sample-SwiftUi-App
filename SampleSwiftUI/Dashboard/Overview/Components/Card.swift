//
//  Card.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-06.
//

import SwiftUI

struct Card: View {
    var card: OverviewCard
    
    var body: some View {
        HStack {
            Image(card.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading, spacing: 3) {
                Text(card.title)
                    .font(.H5)
                    .foregroundColor(.Satin)
                Divider()
                    .background(Color.Marble)
                Text(card.description)
                    .font(.Body)
                    .foregroundColor(.Pewter)
            }
            Spacer()
        }
        .padding(.all, 8)
        .background(Color.white)
        .cornerRadius(8.0)
        .overlay(
            RoundedRectangle(cornerRadius: 8.0)
                .stroke(Color.Marble, lineWidth: 1.0)
        )
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(card:
                OverviewCard(
                    id: 1001,
                    title: "Advanced app experiences",
                    description: "Enhance your apps with new features, such as improved list views, better search experiences, and support for control focus areas. Enhance your apps with new features, such as improved list views, better search experiences, and support for control focus areas.",
                    imageName: "Card_01"
                )
        ).previewLayout(.fixed(width: 500, height: 200))
    }
}
