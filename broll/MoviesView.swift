//
//  MoviesView.swift
//  broll
//
//  Created by Nicla Persico on 11/11/25.
//

import SwiftUI

struct MoviesView: View {
    var body: some View {
        
        //my outer container
        NavigationStack {
            
            //how the screen works in the container
            ScrollView(.vertical) {
                VStack (alignment: .leading, spacing: 20){
                    
                    ScrollView(.horizontal, showsIndicators: false){
                    
                        HStack (){
                            Button("Watchlist")
                            {} .buttonStyle(.glassProminent)
                            
                            
                            Button("Seen")
                            {}.buttonStyle(.glassProminent)
                            
                        }
                        .padding()
                    }
                }
                
            }
            
        
            
        .navigationTitle("Movies")
        .navigationBarTitleDisplayMode(.inline)
        
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("Left icon tapped")
                }) {
                    Image(systemName: "arrow.up.arrow.down")
                    
                }
            }
            
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    print("Right icon tapped")
                }) {
                    Image(systemName: "gear")
                        .glassEffect()
                }
                    }
                }
            }
            
        }
        
    }

    
    
    
    
    #Preview {
        MoviesView()
    }

