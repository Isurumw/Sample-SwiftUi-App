//
//  RequestListViewModel.swift
//  SampleSwiftUI
//
//  Created by Aravindi on 2021-09-04.
//

import Foundation
import Combine

final class RequestListViewModel: ObservableObject {
    @Published var requests = [MaintenanceRequest]()
    
    func fetchRequests() {
        let response: Response = load("MaintenanceData.json")
        requests = response.data.property.maintenances
    }
}
