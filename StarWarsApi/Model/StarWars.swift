//
//  StarWars.swift
//  MovieApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import Foundation


struct CharacterResult: Decodable {
   let count: Int?
   let results:[Character]?
}

struct Character: Decodable{
   let name: String?
   let height: String?
   let mass: String?
   let hair_color: String?
   let skin_color: String?
   let eye_color: String?
   let birth_year: String?
   let gender: String?
   let homeworld:String?
   let films:[String]?
   let species:[String]?
   let vehicles: [String]?
   let starships: [String]?
   let created: String?
   let edited: String?
   let url: String?
}

struct HomeWorld: Decodable {
    let name: String
    let rotation_period: String
    let orbital_period: String
    let diameter: String
    let climate: String
    let gravity: String
    let terrain: String
    let surface_water: String
    let population: String
    let residents: [String]
    let films: [String]
    let created: String
    let edited: String
    let url:String
}
