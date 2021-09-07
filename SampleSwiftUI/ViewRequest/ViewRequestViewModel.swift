//
//  ViewRequestViewModel.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-07.
//

import Foundation
import SwiftUI

final class ViewRequestViewModel: ObservableObject {
    @Published var request: MaintenanceRequest
    var imageSize: CGFloat = 80.0
    
    init(request: MaintenanceRequest) {
        self.request = request
    }
}
