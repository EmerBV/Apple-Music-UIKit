//
//  FeaturedPlaylistsResponse.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 8/12/22.
//

import Foundation

struct FeaturedPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}

/*
struct CategoryPlaylistsResponse: Codable {
    let playlists: PlaylistResponse
}
 */

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
 
struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
