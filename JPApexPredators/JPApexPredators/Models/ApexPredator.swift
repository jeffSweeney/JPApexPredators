//
//  ApexPredator.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import Foundation

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
