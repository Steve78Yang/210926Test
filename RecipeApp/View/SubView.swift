//
//  SubView.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/26.
//

import SwiftUI

struct SubView: View {
    
    var eachRecipe : recipe
    
    var body: some View {
        
        ScrollView {
            VStack(alignment:.leading){
                // name
                Text(eachRecipe.name)
                    .font(.title2)
                    .fontWeight(.bold)
                // image
                Image(eachRecipe.image).resizable().clipped().frame(height: 200.0)
                // ingredients
                Text("Ingredients")
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                ForEach(eachRecipe.ingredients, id: \.self){r in
                    Text("  • \(r)")
                }
                
                // directions
                Text("Directions")
                    .fontWeight(.bold)
                    .padding(.top,5)
                    .foregroundColor(Color.blue)
                ForEach(eachRecipe.directions, id: \.self){r in
                    Text(r)
                        .font(.subheadline)
                        .padding(.leading, 5.0)
                }
            }.padding()
        }
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        let PreviewRecipe = recipeViewModel()
        SubView(eachRecipe: PreviewRecipe.recipes[0])
    }
}
