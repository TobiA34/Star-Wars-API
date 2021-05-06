//
//  StarWarsService.swift
//  MovieApi
//
//  Created by tobi adegoroye on 04/03/2021.
//

import Foundation
import Alamofire

class StarWarsService{
    func getCharacter(completion: @escaping (Swift.Result<Array<Character>, Error>) -> ()) {
        AF.request(Title.api).response { response in
            do {
                guard let data = response.data else { return }
                
                let decoder =  JSONDecoder()
                let character = try decoder.decode(CharacterResult.self, from: data)
                completion(.success(character.results ?? []))
                
            } catch let jsonError {
                completion(.failure(jsonError))
                
            }
        }
 
    }
 }
 
