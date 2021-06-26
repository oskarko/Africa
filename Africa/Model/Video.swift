//
//  Video.swift
//  Africa
//
//  Created by Oscar Rodriguez Garrucho on 26/6/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
