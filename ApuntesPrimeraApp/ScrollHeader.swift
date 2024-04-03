//
//  ScrollHeader.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 1/4/24.
//

import SwiftUI

struct ScrollHeader: View {
    let text: String
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        HStack {
            Text(text)
                .font(.title)
                .bold()
            Spacer()
            Button {
                action()
            } label: {
                Text(buttonText)
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .background() {
            Rectangle()
                .fill(.ultraThinMaterial)
        }
    }
}


#Preview {
    ScrollHeader(text: "Jobs Card", buttonText: "Ir a seccion 2") {}
}
