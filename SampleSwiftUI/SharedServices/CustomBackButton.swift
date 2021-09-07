//
//  CustomBackButton.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-07.
//

import SwiftUI

struct CustomBackButton: View {
    var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left") // set image here
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.Satin)
        }
    }
}
