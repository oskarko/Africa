//
//  ContentView.swift
//  Africa
//
//  Created by Oscar Rodriguez Garrucho on 25/6/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            } // List
            .navigationBarTitle("Africa", displayMode: .large)
        } // Nav
    }
}

// MARK: - Preview
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
