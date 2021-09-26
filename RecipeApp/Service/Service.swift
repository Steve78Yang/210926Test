//
//  Service.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/25.
//

import Foundation

class DataService {
    
    static func ParsingJSON() -> [recipe] {
        
        let Path = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard Path != nil else {
            return [recipe]()
        }
    
        let URL = URL(fileURLWithPath: Path!)
        
        do {
            let Data = try Data(contentsOf: URL)
            let decoder = JSONDecoder()
            let DecodedData = try decoder.decode([recipe].self, from: Data)
            
            for r in DecodedData {
                r.id = UUID()
            }
            return DecodedData
        }catch {
            print(error)
        }
        return [recipe]()
    }
}
