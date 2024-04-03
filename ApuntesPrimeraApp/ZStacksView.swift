//
//  ZStacksView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 27/3/24.
//

import SwiftUI

struct ZStacksView: View {
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                 VStack {
                    ZStack(alignment: .bottomTrailing){
                        Image(.jobs)
                            .resizable()
                            .scaledToFit()
                        Rectangle()
                            .fill(.white.opacity(0.5))
                            .frame(height: 50)
                        Text("Steve Jobs")
                            .font(.largeTitle)
                            .bold()
                            .padding(.trailing)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
                    .padding()
                     
                     JobsCardView()
                     JobsCardView()
                     JobsCardView()
                     JobsCardView()

                }
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                }
                .font(.largeTitle)
                .symbolVariant(.fill)
                .symbolVariant(.circle)
                .buttonStyle(.plain)
                .opacity(0.3)
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ZStacksView()
}


