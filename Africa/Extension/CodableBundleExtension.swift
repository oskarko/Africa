//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Oscar Rodriguez Garrucho on 25/6/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) ->  [T] {
        // 1. Localte the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to localte \(file) in bundle")
        }
        
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a ready-to-use data
        guard let loaded = try? decoder.decode([T].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // Return the ready-to-use data
        return loaded
    }
}
