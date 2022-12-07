//
//  AuthResponse.swift
//  Apple Music UIKit
//
//  Created by Emerson Balahan Varona on 7/12/22.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
