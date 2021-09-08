//
//  Extensions.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-01.
//

import SwiftUI

extension Color {
    static let Satin = Color("Satin")
    static let Stone = Color("Stone")
    static let Pewter = Color("Pewter")
    static let Grape = Color("Grape")
    static let Grape40 = Color("Grape40")
    static let Background = Color("Background")
    static let Marble = Color("Marble")
    static let Aluminum = Color("Aluminum")
}

extension Font {
    static let H1 = Font.custom("Inter-ExtraBold", size: 30)
    static let H3 = Font.custom("Inter-Bold", size: 22)
    static let H4 = Font.custom("Inter-Bold", size: 20)
    static let H5 = Font.custom("Inter-Bold", size: 17)
    static let H6 = Font.custom("Inter-Medium", size: 17)
    static let Body = Font.custom("Inter-Regular", size: 14)
    static let BodyBold = Font.custom("Inter-SemiBold", size: 15)
    static let Button = Font.custom("Inter-SemiBold", size: 13)
    static let Label = Font.custom("Inter-Regular", size: 10)
    static let Caption = Font.custom("Inter-SemiBold", size: 12)
    static let Subtext = Font.custom("Inter-Regular", size: 13)
}

extension String {
    
    var date: Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-DD'T'HH:mm:ss.SSSZZ"
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter.date(from: self)
    }
    
    var time: String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        if let date = dateFormatter.date(from: self) {
            return dateFormatter.string(from: date)
        }
        return nil
    }
    
}

enum DateFormat: String {
    case format01 = "DD MMM YYYY"
    case format02 = "DD MMM YYYY h:mm a"
}

extension Date {
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD MMM YYYY"
        return dateFormatter.string(from: self)
    }
    
    func formattedDate(_ format: DateFormat) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format.rawValue
        return dateFormatter.string(from: self)
    }
    
}
