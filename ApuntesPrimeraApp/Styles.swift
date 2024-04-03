//
//  Styles.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 26/3/24.
//

import SwiftUI

extension Font {
    static let gsTitle = Font.custom("Game Of Squids", size: 32, relativeTo: .title)
    static let gsHeadline = Font.custom("Game Of Squids", size: 26, relativeTo: .title)

}



struct HorteraButton: ButtonStyle {
    
    var cornerRadius: CGFloat = 10.0
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .fontWeight(.black)
            .fontWidth(.expanded)
            .foregroundStyle(gradient)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: 4)
                    .fill(.red)
            }
            .background {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(.mint)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
            }
            /*.overlay {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.background.opacity(configuration.isPressed ? 0.5 : 0.0 ))
            }*/
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
        
    }
}


