//
//  TextosUIView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 25/3/24.
//

import SwiftUI

struct TextosUIView: View {
    let gradient = LinearGradient(
        gradient: Gradient(colors: [Color.red, Color.blue]),
        startPoint: .leading,
        endPoint: .trailing)
    
    let atribuido: AttributedString = {
        var string = AttributedString("Bienvenidos a Apple coding academy")
        string.foregroundColor = .blue
        string.font = .gsHeadline
        
        if let apple = string.range(of: "Apple coding") {
            string[apple].foregroundColor = .red
            string[apple].font = .gsTitle
            
        }
        
        return string
    }()
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading){
                Text("Ola k ase")
                    .font(.title)
                    .bold()
                    .italic()
                    .underline()
                    .foregroundStyle(.orange)
                Text("Hola")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .fontDesign(.rounded)
                    .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                Text("HOLA")
                    .fontWidth(.compressed)
            }
            .foregroundStyle(.green)
            HStack(alignment: .firstTextBaseline){
                Text("Ola k ase ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .fontWidth(.expanded)
                    .foregroundStyle(gradient)
                Text("Hola")
            }
            Image(systemName: "pencil.circle")
                .font(.largeTitle)
                .symbolVariant(.fill)
                .symbolVariant(.circle)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.brown, .yellow)
            
            Label("Enviar", systemImage: "paperplane")
            Label(
                title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
                icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
            )
            Text("Enviar \(Image(systemName: "paperplane.fill"))")
            
            
            
            Text("Ola k ase")
                .font(.system(.title, design: .rounded, weight: .light))
            
            Text("Ola k ase")
                .font(.system(size: 48, weight: .ultraLight, design: .monospaced))
            
            Text("Ola k ase")
                .font(.custom("Futura", size: 32, relativeTo: .title))
            
            
            Text("Ola k ase")
                .font(.custom("Game of Squids", size: 32, relativeTo: .title))
            
            Text("Ola K Aseee")
                .font(.gsTitle)
            Text("Game Of Swift")
                .font(.gsHeadline)
            
            Text("One ring to rule them. One ring to find them. One ring to bring them all in the darkness bind them.")
                .lineSpacing(15)
                .multilineTextAlignment(.center)
                .kerning(3)
                .lineLimit(3)
                .truncationMode(.head)
                .minimumScaleFactor(0.7)
            
            Text("Bienvenidos a **Apple Coding Academy** Que *Jobs* nos bendiga a ***todos***. Hay que usar `Text`. ~~Android~~. [Pulsa aquí](acoding.academy) para más información.")
            
            Text(atribuido)
            
            
        }
        

        
        
    }
}

#Preview {
    TextosUIView()
}
