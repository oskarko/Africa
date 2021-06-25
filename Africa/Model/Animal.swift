//
//  Animal.swift
//  Africa
//
//  Created by Oscar Rodriguez Garrucho on 25/6/21.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let liunk: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
