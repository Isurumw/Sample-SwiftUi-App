//
//  DashboardViewModel.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-06.
//

import Foundation
import Combine

final class DashboardViewModel: ObservableObject {
    @Published var requests = [MaintenanceRequest]()
    @Published var overviewCards = [OverviewCard]()
    
    func fetchRequests() {
        DispatchQueue.main.async {
            let response: Response = load("MaintenanceData.json")
            self.requests = response.data.property.maintenances
        }
    }
    
    func fetchCards() {
        DispatchQueue.main.async {
            self.overviewCards = load("OverviewData.json")
        }
    }
}
