//
//  Movie.swift
//  broll
//
//  Created by Nicla Persico on 12/11/25.
//

import Foundation

struct Movie: Identifiable {
    var id: UUID = UUID()
    var movieImage: String
    var movieName: String
    var category: String  //Film or TV Series
    var description: String
    
}
