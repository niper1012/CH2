//
//  ContentView.swift
//  broll
//
//  Created by Nicla Persico on 11/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        
            TabView {
                Tab("Explore", systemImage: "rectangle.stack.badge.play.fill") {
                    ExploreView()
                }
                
                
                Tab("Movies", systemImage: "film.stack.fill") {
                    MoviesView()
                }
                
                Tab("TV Shows", systemImage: "sparkles.tv.fill") {
                    TVShowsView()
                }
                Tab (role:.search){
                    SearchView()
                }
            }
        
         
            
            
            
        }
    }


#Preview {
    ContentView()
}
