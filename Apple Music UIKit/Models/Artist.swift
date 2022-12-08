//
//  Artist.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 21/11/22.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
