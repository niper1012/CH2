//
//  ExploreCardView.swift
//  broll
//
//  Created by Nicla Persico on 12/11/25.
//

import SwiftUI

struct ExploreCardView: View {

    //variabili per rendere la card riutilizzabile
    //ricordati di metterle sempre prima del BODYYY
    var movie: Movie

    var body: some View {

        
        VStack(alignment: .leading) {

            
                Image(movie.movieImage)
                
                    .resizable()
                    .scaledToFill()
                
                    .frame(width: 150, height: 230, alignment: .leading)
                
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .glassEffect(.clear, in: .rect(cornerRadius: 10))
            
               
                

            Text(movie.movieName)
                .bold()
                .font(.subheadline)
                .padding(.top)

        }
      
    }
}

#Preview {
    ExploreCardView(
        movie: Movie(
            movieImage: "High School Musical",
            movieName: "High School Musical", 
            category: "Film",
            description: ""
        )
    )
}
