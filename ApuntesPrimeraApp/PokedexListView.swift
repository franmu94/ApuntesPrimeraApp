//
//  PokedexListView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 3/4/24.
//

import SwiftUI

struct PokedexListView: View {
    let pokemons = getPokemons()
    
    var body: some View {
        NavigationView {
            List(pokemons) { pokemon in
                HStack {
                    VStack(alignment: .leading) {
                        Text(pokemon.name)
                            .font(.title)
                            .bold()
                        Text(pokemon.types)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    AsyncImage(url: pokemon.imageURL) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100)
                    } placeholder: {
                        ProgressView()
                            .controlSize(.extraLarge)
                    }
                    .background {
                        Color(white: 0.9)
                    }
                    .clipShape(Circle())
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: 10, x: 0, y: 10)
                }
            }
            .navigationTitle("Pokemons")

        }
    }
}

#Preview {
    PokedexListView()
}
