//
//  Welcome.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-01.
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var viewModel: BaseViewModel
    
    var body: some View {
        VStack {
            Image("SwiftUI")
                .resizable()
                .frame(width: 166, height: 166)
            Text("SwiftUI Application")
                .foregroundColor(.Satin)
                .font(.H4)
                .padding(.bottom, 2)
            Text("SwiftUI helps you build great-looking apps across all Apple platforms.")
                .foregroundColor(.Pewter)
                .font(.H5).multilineTextAlignment(.leading)
            CustomButton(label: "SIGN IN", action: {
                viewModel.isAuthenticated = true
            }).padding(.top, 16)
            Spacer()
            Text("Not an user yet?")
                .font(.H6)
                .foregroundColor(.Pewter)
            Text("Sign up on our website at ")
                .font(.Body)
                .foregroundColor(.Pewter) + Text("sample.com.au")
                .font(.Body)
                .foregroundColor(.Grape)
                .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: .Grape)
        }
        .padding([.leading, .trailing], 24)
        .padding(.bottom, 8)
        .padding(.top, 33)
        .navigationBarHidden(true)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome().environmentObject(BaseViewModel())
    }
}
