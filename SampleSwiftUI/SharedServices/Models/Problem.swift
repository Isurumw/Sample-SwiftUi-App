//
//  Problem.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-04.
//

import Foundation

struct Problem: Codable {
    var code: String
    var name: String
    
    private var assets: [Asset]
    var asset: URL {
        URL(string: assets[0].value)!
    }
    
    static var mockProblem: Problem {
        Problem(
            code: "ELECTRICAL_ISSUE",
            name: "Electrical Issue",
            assets: [
                Asset(
                    value: "https://s3.amazonaws.com/different-app/Mobile/icons/ic_electrical.png"
                )
            ]
        )
    }
}

struct Asset: Codable {
    var value: String
}
