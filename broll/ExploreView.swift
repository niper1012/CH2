//
//  ExploreView.swift
//  broll
//
//  Created by Nicla Persico on 11/11/25.
//

import SwiftUI

struct ExploreView: View {

    //VAR TO ESTABLISH THE CURRENT FILTERING
    @State private var selectedFilter = "All"

    //DCOMS ARRAY
    var dcoms: [Movie] = [
        Movie(
            movieImage: "High School Musical",
            movieName: "High School Musical",
            category: "Film",
            description:
                "A group of high school students balances friendship, romance, and their love of singing as they audition for and perform in their school musical."
        ),
        Movie(
            movieImage: "Lemonade Mouth",
            movieName: "Lemonade Mouth",
            category: "Film",
            description:
                "Five high school students meet in detention, form a band, and use their music to find confidence and challenge the status quo."
        ),

        Movie(
            movieImage: "Camp Rock",
            movieName: "Camp Rock",
            category: "Film",
            description:
                "A young singer gets the chance of a lifetime when she joins a famous summer music camp — but she must navigate rivalry, self-doubt, and big-stage dreams."
        ),

        Movie(
            movieImage: "High School Musical 2",
            movieName: "High School Musical 2",
            category: "Film",
            description:
                "The students return for summer vacation, juggling jobs, friendships, and the pressure to prove themselves — all while keeping the music alive.",

        ),
    ]

    //MUSICALS ARRAY

    var musicals: [Movie] = [
        Movie(
            movieImage: "Hamilton",
            movieName: "Hamilton",
            category: "Film",
            description:
                "A revolutionary story about America’s founding father Alexander Hamilton, told through hip-hop, R&B, and traditional musical theater."
        ),
        Movie(
            movieImage: "La La Land",
            movieName: "La La Land",
            category: "Film",
            description:
                "Two ambitious artists — a jazz musician and an aspiring actress — fall in love in Los Angeles, but struggle to balance their dreams and their relationship."
        ),
        Movie(
            movieImage: "Chicago",
            movieName: "Chicago",
            category: "Film",
            description:
                "In Prohibition-era Chicago, a jazz singer on death row and her lawyer exploit the media circus around her crime to get acquitted."
        ),
        Movie(
            movieImage: "West Side Story",
            movieName: "West Side Story",
            category: "Film",
            description:
                "A retelling of Romeo and Juliet set in 1950s New York, where rival street gangs clash and young love blossoms."
        ),
    ]

    //LATEST SHOWS ARRAY

    var latesttvshows: [Movie] = [

        Movie(
            movieImage: "A man on the inside",
            movieName: "A man on the inside",
            category: "Serie",
            description:
                "A gripping drama about a man navigating the treacherous world of crime, politics, and revenge from the inside out."
        ),
        Movie(
            movieImage: "Only murders in the building",
            movieName: "Only Murders",
            category: "Serie",
            description:
                "Three strangers who share an obsession with true crime suddenly find themselves wrapped up in one — and they decide to start their own podcast to solve the mystery."
        ),
        Movie(
            movieImage: "The good place",
            movieName: "The good place",
            category: "Serie",
            description:
                "A woman mistakenly ends up in “the Good Place” – a heavenly afterlife – but realizes she doesn’t belong there and must become a better person to avoid being discovered."
        ),
        Movie(
            movieImage: "Stranger Things",
            movieName: "Stranger Things",
            category: "Serie",
            description:
                "A group of kids in the 1980s investigates the disappearance of their friend, uncovering supernatural forces, government secrets, and a terrifying parallel dimension known as the “Upside Down.”"
        ),

    ]

    // ART HOUSE TV ARRAY
    var arthousetv: [Movie] = [

        Movie(
            movieImage: "Fleabag",
            movieName: "Fleabag",
            category: "Serie",
            description:
                "A clever, troubled woman in London navigates love, grief, and her own self-destructive behavior in this darkly comedic and deeply emotional story."
        ),
        Movie(
            movieImage: "Normal People",
            movieName: "Normal people",
            category: "Serie",
            description:
                "Two teenagers from a small Irish town form an intense bond in school, and their relationship evolves as they navigate university, identity, and heartbreak."
        ),
        Movie(
            movieImage: "My briliant firend",
            movieName: "My brilliant firend",
            category: "Serie",
            description:
                "Based on Elena Ferrante’s novel, this series follows the complex friendship between two girls over decades, growing up in Naples and navigating class, family, and ambition."
        ),

    ]

    // INDIE GEMS ARRAY
    var indiegems: [Movie] = [

        Movie(
            movieImage: "Ama gloria",
            movieName: "Ama Gloria",
            category: "Film",
            description:
                "Cleo is six years old, has a myopic look and has been madly in love with Gloria, her nanny, since she was born. When Gloria receives a call and must urgently return to her home in Cape Verde to care for her two children, whom she has not raised, Cleo makes her the promise to meetone last time. Gloria accepts and invites Cleo to spend summer vacations on her island."
        ),
        Movie(
            movieImage: "Surviving earth",
            movieName: "Surviving earth",
            category: "Film",
            description:
                "Years after fleeing military conscription during Yugoslav conflict, Vlad is building a community in Bristol, working as a drugs counsellor and pursuing success with his rioutus Balkan band. But integration isn't easy as he hoped and the trauma of his past life is difficult to repress."
        ),
        Movie(
            movieImage: "Summer Brother",
            movieName: "Summer brother",
            category: "Film",
            description:
                "As Brian cares for his severely mentally disabled brother over a sweltering summer holiday he is forced to grow up, and finds unexpected love and affection. "
        ),
        Movie(
            movieImage: "Kneecap",
            movieName: "Kneecap",
            category: "Film",
            description:
                "When fate brings Belfast teacher JJ into the orbit of self-confessed ''low life scrum'' Naoise and Liam Og, the needle drops on an hip hop act like no other. Rapping in their native irish, they lead a movement to save their mother tongue."
        ),

    ]

    var body: some View {

        //my outer container
        ZStack {
            NavigationStack {

                //how the screen works in the container
                ScrollView(.vertical) {

                    //the ''box'' containing the content
                    VStack(alignment: .leading, spacing: 20) {

                        //INDIE GEMS SECTION
                        if selectedFilter == "All" || selectedFilter == "Movies"
                        {
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
                                        NavigationLink(
                                            destination: DetailView(
                                                selectedMovie: movie
                                            )
                                        ) {
                                            ExploreCardView(movie: movie)
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
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
                                        NavigationLink(
                                            destination: DetailView(
                                                selectedMovie: movie
                                            )
                                        ) {
                                            ExploreCardView(movie: movie)
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())

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
                                        NavigationLink(
                                            destination: DetailView(
                                                selectedMovie: movie
                                            )
                                        ) {
                                            ExploreCardView(movie: movie)
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }

                            }
                        }
                        
                        

                        //LATEST SHOWS SECTION

                        if selectedFilter == "All"
                            || selectedFilter == "TV Shows"
                        {
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
                                        NavigationLink(
                                            destination: DetailView(
                                                selectedMovie: movie
                                            )
                                        ) {
                                            ExploreCardView(movie: movie)
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
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
                                        NavigationLink(
                                            destination: DetailView(
                                                selectedMovie: movie
                                            )
                                        ) {
                                            ExploreCardView(movie: movie)
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
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
                        Menu {

                            Text("Filter by content type")
                                .font(.caption)
                            Button(action: { selectedFilter = "All" }) {
                                HStack {
                                    Image(
                                        systemName: selectedFilter == "All"
                                            ? "checkmark.circle.fill" : ""
                                    )
                                    Text("All")
                                }
                            }

                            Button(action: { selectedFilter = "Movies" }) {
                                HStack {
                                    Image(
                                        systemName: selectedFilter == "Movies"
                                            ? "checkmark.circle.fill" : ""
                                    )
                                    Text("Movies")
                                }
                            }

                            Button(action: { selectedFilter = "TV Shows" }) {
                                HStack {
                                    Image(
                                        systemName: selectedFilter == "TV Shows"
                                            ? "checkmark.circle.fill" : ""
                                    )
                                    Text("TV Shows")
                                }
                            }
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

}

#Preview {
    ExploreView()
}
