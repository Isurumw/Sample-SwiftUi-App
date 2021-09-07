//
//  Response.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-04.
//

import Foundation

struct Response: Codable {
    var data: DataResponse
}

struct DataResponse: Codable {
    private var properties: [Property]
    
    var property: Property {
        properties[0]
    }
}
