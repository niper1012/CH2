//
//  ExploreView.swift
//  broll
//
//  Created by Nicla Persico on 11/11/25.
//

import SwiftUI

struct ExploreView: View {
  
    
    //SHOULD THE POPOVER BE VISIBLE?
    @State var showPopover = false
    
    //WHICH FILTER OPTION IS ACTIVE?
    @State private var selectedFilter = "All"
    
//DCOMS ARRAY
    var dcoms: [Movie] = [
        Movie(
            movieImage: "High School Musical",
            movieName: "High School Musical",
            category: "Film"
        ),
        Movie(
            movieImage: "Lemonade Mouth",
            movieName: "Lemonade Mouth",
            category: "Film"
        ),

        Movie(
            movieImage: "Camp Rock",
            movieName: "Camp Rock",
            category: "Film"
        ),

        Movie(
            movieImage: "High School Musical 2",
            movieName: "High School Musical 2",
            category: "Film",

        ),
    ]
    
    //MUSICALS ARRAY

    var musicals: [Movie] = [
        Movie(
            movieImage: "Hamilton",
            movieName: "Hamilton",
            category: "Film"
        ),
        Movie(
            movieImage: "La La Land",
            movieName: "La La Land",
            category: "Film"
        ),
        Movie(movieImage: "Chicago", movieName: "Chicago", category: "Film"),
        Movie(
            movieImage: "West Side Story",
            movieName: "West Side Story",
            category: "Film"
        ),
    ]
    
    //LATEST SHOWS ARRAY

    var latesttvshows: [Movie] = [
        
        Movie(
            movieImage: "A man on the inside",
            movieName: "A man on the inside",
            category: "Serie"
        ),
        Movie(
            movieImage: "Only murders in the building",
            movieName: "Only Murders",
            category: "Serie"
        ),
        Movie(
            movieImage: "The good place",
            movieName: "The good place",
            category: "Serie"
        ),
        Movie(movieImage: "Stranger Things", movieName: "Stranger Things", category: "Serie"),
        
    ]
    
    // ART HOUSE TV ARRAY
    var arthousetv: [Movie] = [
        
        Movie(
            movieImage: "Fleabag",
            movieName: "Fleabag",
            category: "Serie"
        ),
        Movie(
            movieImage: "Normal People",
            movieName: "Normal people",
            category: "Serie"
        ),
        Movie(
            movieImage: "My briliant firend",
            movieName: "My brilliant firend",
            category: "Serie"
        ),
      
    ]
    
    
    
    // INDIE GEMS ARRAY
    var indiegems: [Movie] = [
        
        Movie(
            movieImage: "Ama gloria",
            movieName: "Ama Gloria",
            category: "Film"
        ),
        Movie(
            movieImage: "Surviving earth",
            movieName: "Surviving earth",
            category: "Film"
        ),
        Movie(
            movieImage: "Summer Brother",
            movieName: "Summer brother",
            category: "Serie"
        ),
        Movie(
            movieImage: "Kneecap",
            movieName: "Kneecap",
            category: "Serie"
        ),
      
    ]

    var body: some View {

        //my outer container
        NavigationStack {

            //how the screen works in the container
            ScrollView(.vertical) {

                //the ''box'' containing the content
                VStack(alignment: .leading, spacing: 20) {
                   
                    
                    
                    //INDIE GEMS SECTION
                    HStack {
                        Button(action: {
                            print("Right icon tapped")
                        }) {
                            Text("Indie Gems")
                                .font(.title).bold()
                                .foregroundStyle((Color(.white)))
                            Image(systemName: "chevron.right")
                                .bold().foregroundStyle(Color.gray)
                        }
                    }

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 20) {

                            ForEach(indiegems) { movie in
                                ExploreCardView(movie: movie)
                            }
                        }

                    }

                    //DCOMs SECTION
                    HStack {
                        Button(action: {
                            print("Right icon tapped")
                        }) {
                            Text("DCOMs")
                                .font(.title).bold()
                                .foregroundStyle((Color(.white)))
                            Image(systemName: "chevron.right")
                                .bold().foregroundStyle(Color.gray)
                        }
                    }

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 20) {

                            ForEach(dcoms) { movie in
                                ExploreCardView(movie: movie)
                            }
                        }

                    }
                    //MUSICALS SECTION

                    HStack {
                        Button(action: {
                            print("Right icon tapped")
                        }) {
                            Text("Musicals")
                                .font(.title).bold()
                                .foregroundStyle((Color(.white)))
                            Image(systemName: "chevron.right")
                                .bold().foregroundStyle(Color.gray)
                        }
                    }

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 20) {

                            ForEach(musicals) { movie in
                                ExploreCardView(movie: movie)
                            }
                        }

                    }

                    //LATEST SHOWS SECTION

                    HStack {
                        Button(action: {
                            print("Right icon tapped")
                        }) {
                            Text("Latest Shows")
                                .font(.title).bold()
                                .foregroundStyle((Color(.white)))
                            Image(systemName: "chevron.right")
                                .bold().foregroundStyle(Color.gray)
                        }
                    }

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 20) {

                            ForEach(latesttvshows) { movie in
                                ExploreCardView(movie: movie)
                            }
                        }

                    }
                    
                    //ART HOUSE TV SECTION
                    HStack {
                        Button(action: {
                            print("Right icon tapped")
                        }) {
                            Text("Art House Tv")
                                .font(.title).bold()
                                .foregroundStyle((Color(.white)))
                            Image(systemName: "chevron.right")
                                .bold().foregroundStyle(Color.gray)
                        }
                    }

                    ScrollView(.horizontal, showsIndicators: false) {

                        HStack(spacing: 20) {

                            ForEach(arthousetv) { movie in
                                ExploreCardView(movie: movie)
                            }
                        }

                    }

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }

            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

                // TRAILING FILTER BUTTON
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showPopover.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease")
                    }
                }

                // LEADING GEAR BUTTON
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        print("Right icon tapped")
                    } label: {
                        Image(systemName: "gear")
                            .glassEffect()
                    }
                }
            }

                }
            }

        }

    


#Preview {
    ExploreView()
}
