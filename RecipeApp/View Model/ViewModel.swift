//
//  ViewModel.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/25.
//

import Foundation

class recipeViewModel : ObservableObject {
    @Published var recipes = [recipe]()
    
    init() {
        self.recipes = DataService.ParsingJSON()
    }
}
