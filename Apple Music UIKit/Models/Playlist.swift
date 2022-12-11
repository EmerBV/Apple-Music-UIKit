//
//  Playlist.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 21/11/22.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
