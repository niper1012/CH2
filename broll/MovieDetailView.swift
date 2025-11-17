//
//  MovieDetailView.swift
//  broll
//
//  Created by Nicla Persico on 16/11/25.
//
import SwiftUI

struct DetailView: View {
    var selectedMovie: Movie
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    
                    ZStack (alignment: .bottom){
                        Image(selectedMovie.movieImage)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 500)
                            .clipped()
                        
                            .overlay(
                                LinearGradient(
                                    gradient: Gradient(stops: [
                                        .init(color: .black.opacity(0.9), location: 0.0),   // bottom
                                        .init(color: .black.opacity(0.2), location: 0.37),
                                        .init(color: .black.opacity(0.1), location: 0.55),
                                        .init(color: .black, location: 1.6)                 // top
                                    ]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                )
                            )
                        
                        VStack(alignment: .center, spacing: 8) {
                            Text(selectedMovie.movieName)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                            Text(selectedMovie.category)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.bottom,20)
                    
                }
                
                // ADD BUTTON
                
                    HStack {
                        Button {
                            print("Add tapped")
                        } label: {
                            Label("Add", systemImage: "plus")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .background(.ultraThinMaterial)
                                .glassEffect()
                                .clipShape(RoundedRectangle(cornerRadius: 24))
                                .foregroundStyle(Color(.white))
                        }
                        
                        
                        // WATCH BUTTON
                        Button {
                            print("Watch tapped")
                        } label: {
                            Image(systemName: "eye")
                            
                                .padding(18)
                                .background(.ultraThinMaterial)
                            
                                .clipShape(Circle())
                                .glassEffect(.clear, in: .circle)
                                .foregroundStyle(Color(.white))
                        }
                        
                    }
                VStack(alignment: .leading, spacing: 8) {
                        Text("About")
                            .font(.title)
                            .bold()
                    Text(selectedMovie.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
            }
            
            .ignoresSafeArea(edges: .top)

            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("Menu")
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                }
                
            }
          
            
            
            
        }
        
    }
}
        
    
    
    

   
   

#Preview {
    DetailView(selectedMovie: Movie(movieImage: "Kneecap", movieName: "Kneecap", category: "Film", description: "When fate brings Belfast teacher JJ into the orbit of self-confessed ''low life scrum'' Naoise and Liam Og, the needle drops on an hip hop act like no other. Rapping in their native irish, they lead a movement to save their mother tongue."))
}
