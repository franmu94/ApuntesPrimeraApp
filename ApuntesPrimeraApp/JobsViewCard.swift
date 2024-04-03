//
//  JobsViewCard.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 1/4/24.
//

import Foundation


import SwiftUI


struct JobsCardView: View {
    var body: some View {
        Image(.jobs)
            .resizable()
            .scaledToFit()
            .overlay (alignment: .bottom){
                Rectangle()
                    .fill(.white.opacity(0.5))
                    .frame(height: 50)
                    .overlay (alignment: .trailing){
                        Text("Steve Jobs")
                            .font(.largeTitle)
                            .bold()
                            .padding(.trailing)
                    }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.5), radius: 10, x: 0, y: 10)
            .padding()
    }
}
