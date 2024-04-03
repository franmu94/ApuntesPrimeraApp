//
//  BotonesView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 26/3/24.
//

import SwiftUI

struct BotonesView: View {
    
    let gradient = LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
    
    
    var body: some View {
        VStack{
            Button("Tap me") {
                print("You`re taping me")
            }
            Button {
                print("Tap 2")
            } label: {
                VStack {
                    Text("Tap me, please")
                    Image(systemName: "ipad")
                }
            }
            .buttonStyle(.bordered)
            
            Button("Escribir", systemImage: "pencil") {
                print("Escribo")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            
            Button {
                
            } label: {
                Image(systemName: "tv")
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.circle)
            .controlSize(.extraLarge)
            .tint(.indigo)
            
            Button(role: .destructive){
                
            } label: {
                Image(systemName: "tv")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.circle)
            .controlSize(.extraLarge)
            
            Button {
                print("Soy un señor random")
            } label: {
                
                VStack(spacing: 0){
                    Image(.jobs)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(16/9, contentMode: .fit)
                        .frame(width: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
                        .padding()
                    Text("Tap me")
                        .padding(10)
                        .background {
                            Color(white: 0.75)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                .background {
                    Color(white: 0.85)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 5)
            }
            
            
            Group {
                Button {
                    
                } label: {
                    Text("Tap me, please")
                }
                
                Button {
                    
                } label: {
                    Text("Me too, please")
                }
            }
            .buttonStyle(HorteraButton(cornerRadius: 25))
            .padding(.vertical)
            
        }
        
    }
}

#Preview {
    BotonesView()
}
