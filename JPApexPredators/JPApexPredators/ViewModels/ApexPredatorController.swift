//
//  ApexPredatorController.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import Foundation

class ApexPredatorController {
    var apexPredators: [ApexPredator] = []
    
    init() {
        // Populate our apex predators
        decodeApexPredators()
    }
}

// MARK: - Data Decoding Extension
extension ApexPredatorController {
    private func decodeApexPredators() {
        guard let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") else {
            assertionFailure("Could not find jpapexpredators.json in the main bundle")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decode = JSONDecoder()
            apexPredators = try decode.decode([ApexPredator].self, from: data)
            apexPredators.shuffle() // Data is dominated by land in the beginning of the list. Shuffle to get more randomness.
        } catch {
            assertionFailure("Error decoding JSON data: \(error)")
        }
    }
}
