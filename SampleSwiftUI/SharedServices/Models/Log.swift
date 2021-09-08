//
//  Log.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-04.
//

import Foundation

struct Log: Codable, Hashable {
    var status: String
    
    private var date: String
    var reportedAt: Date {
        date.date!
    }
    
    var icon: String {
        switch status {
        case "OPEN":
            return "plus"
        case "APPROVED":
            return "hand.thumbsup"
        case "CLOSED":
            return "checkmark.circle"
        case "ASSIGNED":
            return "person"
        case "DENIED":
            return "repeat"
        default:
            return "clock"
        }
    }
    
    static var mockLogs: [Log] {
        [
            Log(
                status: "OPEN",
                date: "2019-05-12T01:17:52.741Z"
            ),
            Log(
                status: "WAITING",
                date: "2019-05-12T01:18:58.331Z"
            ),
            Log(
                status: "APPROVED",
                date: "2019-05-12T01:19:59.778Z"
            ),
            Log(
                status: "CLOSED",
                date: "2020-01-22T22:58:13.210Z"
            )
        ]
    }
}
