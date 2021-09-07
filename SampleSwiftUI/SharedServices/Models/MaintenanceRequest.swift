//
//  MaintenanceRequest.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-04.
//

import Foundation

struct MaintenanceRequest: Codable, Identifiable {
    var id: String
    var status: String
    var area: Area
    var problem: Problem
    var log: [Log]
    var details: String?
    var attachments: [String]
    
    private var createdAt: String
    var reportedAt: Date {
        createdAt.date!
    }
    
    static var mockObj: MaintenanceRequest {
        MaintenanceRequest(
            id: "5cd7744075ef967e927b1480",
            status: "CLOSED",
            area: Area(
                code: "BATHROOM",
                name: "Bathroom"
            ),
            problem: Problem.mockProblem,
            log: [
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
            ],
            details: "Mould has been building up in a specific corner, we’ve cleaned it twice but keeps coming back.",
            attachments: [
                "https://different-app.s3.amazonaws.com/TenantAPI%2Fqa%2Fmaintenance%2Frequest%2Fimages%2Fc23c9a90-7453-11e9-87b7-4dd8285661e1-IMG_1.jpg",
                "https://different-app.s3.amazonaws.com/TenantAPI%2Fqa%2Fmaintenance%2Frequest%2Fimages%2F78c29810-803d-11e9-8f4e-578ca29c222b-IMG_1.jpg"
            ],
            createdAt: "2019-05-27T05:08:34.748Z"
        )
    }
}
