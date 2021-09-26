//
//  ListView.swift
//  RecipeApp
//
//  Created by 양석모 on 2021/09/26.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        TabView {
            
            Text("Featured").tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("Feature")
                }
            }
            
            MainView().tabItem{
                VStack{
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
