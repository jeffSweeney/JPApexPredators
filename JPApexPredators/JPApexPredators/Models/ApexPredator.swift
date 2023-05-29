//
//  ApexPredator.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import Foundation
import SwiftUI

struct ApexPredator: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, type, movies, link
        case movieScenes = "movie_scenes"
    }
    
    var image: Image {
        let imageName = name.lowercased().replacingOccurrences(of: " ", with: "")
        return Image(imageName)
    }
    
    var backgroundColor: Color {
        switch type.lowercased() {
        case "land":
            return .brown
        case "sea":
            return .blue
        case "air":
            return .teal
        default:
            assertionFailure("Unexpected 'type': \(type)")
            return .white
        }
    }
}

struct MovieScene: Codable {
    let id: Int
    let movie: String
    let sceneDescription: String
    
    enum CodingKeys: String, CodingKey {
        case id, movie
        case sceneDescription = "scene_description"
    }
}
