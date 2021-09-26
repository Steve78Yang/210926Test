//
//  Model.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/25.
//

import Foundation

class recipe : Identifiable, Decodable {
    
    var id : UUID?
    var name : String
    var featured : Bool
    var image : String
    var description : String
    var prepTime : String
    var cookTime : String
    var totalTime : String
    var servings : Int
    var ingredients : [String]
    var directions : [String]
    
}
