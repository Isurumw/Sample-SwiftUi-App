//
//  BaseViewModel.swift
//  SampleSwiftUI
//
//  Created by Isuru Madusanka on 2021-09-08.
//

import Foundation
import SwiftUI

class BaseViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
}
