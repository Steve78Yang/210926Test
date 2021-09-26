//
//  ContentView.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var recipeView = recipeViewModel()
    
    var body: some View {
        NavigationView {
            List(recipeView.recipes){ r in
                NavigationLink(
                    destination: SubView(eachRecipe: r),label: {
                        HStack(spacing :20){
                            Image(r.image).frame(width: 50.0, height: 50.0).clipped()
                            Text(r.name)
                        }
                })
            }.navigationTitle("Home Restaurant")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
