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

//{
//    "name": "Tatooine",
//    "rotation_period": "23",
//    "orbital_period": "304",
//    "diameter": "10465",
//    "climate": "arid",
//    "gravity": "1 standard",
//    "terrain": "desert",
//    "surface_water": "1",
//    "population": "200000",
//    "residents": [
//        "http://swapi.dev/api/people/1/",
//        "http://swapi.dev/api/people/2/",
//        "http://swapi.dev/api/people/4/",
//        "http://swapi.dev/api/people/6/",
//        "http://swapi.dev/api/people/7/",
//        "http://swapi.dev/api/people/8/",
//        "http://swapi.dev/api/people/9/",
//        "http://swapi.dev/api/people/11/",
//        "http://swapi.dev/api/people/43/",
//        "http://swapi.dev/api/people/62/"
//    ],
//    "films": [
//        "http://swapi.dev/api/films/1/",
//        "http://swapi.dev/api/films/3/",
//        "http://swapi.dev/api/films/4/",
//        "http://swapi.dev/api/films/5/",
//        "http://swapi.dev/api/films/6/"
//    ],
//    "created": "2014-12-09T13:50:49.641000Z",
//    "edited": "2014-12-20T20:58:18.411000Z",
//    "url": "http://swapi.dev/api/planets/1/"
//}

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
