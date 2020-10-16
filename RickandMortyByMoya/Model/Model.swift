//
//  Model.swift
//  RickandMortyByMoya
//
//  Created by Akkarin Phain on 14/10/2563 BE.
//

import Foundation

struct rickData :Decodable {
  let results : [rickAndMortyData]
}

struct rickAndMortyData: Codable {
  let id : Int
  let name : String
  let gender : String
  let status : String
  let species : String
  let image : String
  
}
