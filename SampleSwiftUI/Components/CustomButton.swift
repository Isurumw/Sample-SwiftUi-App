//
//  CustomButton.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-02.
//

import SwiftUI

struct CustomButton: View {
    @Binding var isSet: Bool
    var label: String
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            HStack {
                Spacer()
                Text(label)
                    .foregroundColor(.white)
                    .font(.Button)
                Image(systemName: "chevron.forward")
                    .resizable()
                    .frame(width: 8, height: 12)
                    .foregroundColor(.white)
                Spacer()
            }
        })
        .padding([.top, .bottom], 12)
        .background(Color.Grape)
        .cornerRadius(20)
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(isSet: .constant(false), label: "LABEL")
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
