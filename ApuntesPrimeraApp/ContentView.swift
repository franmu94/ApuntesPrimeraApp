//
//  ContentView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 25/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
                .background {
                    Color.gray.opacity(0.3)
                }
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
                .background {
                    Color.gray.opacity(0.3)
                }
            }
            .frame(maxWidth: .infinity)
            
            HStack (spacing:0) {
                Color.orange.opacity(0.3)
                Color.green.opacity(0.3)
                Color.green.opacity(0.3)

            }
            .frame(height: 200)
            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            .padding()
            .background{
                Color.gray
            }
        }
    }
}

#Preview {
    ContentView()
}
