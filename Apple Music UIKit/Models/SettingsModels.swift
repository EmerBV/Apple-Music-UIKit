//
//  SettingsModels.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 8/12/22.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
