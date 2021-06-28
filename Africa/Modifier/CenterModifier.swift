//
//  CenterModifier.swift
//  Africa
//
//  Created by Oscar Rodriguez Garrucho on 28/6/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
