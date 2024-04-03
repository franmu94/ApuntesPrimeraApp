//
//  ShapesView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 3/4/24.
//

import SwiftUI

struct ShapesView: View {
    let texture = ImagePaint(image: Image(.patron))
    var body: some View {
        VStack {
            Rectangle()
                .fill(LinearGradient(colors: [.blue, .blue.opacity(0.5)], startPoint: .top, endPoint: .bottom))
                .frame(width:  100, height: 100)
            Circle()
                .stroke(lineWidth: 10)
                .fill(.orange)
                .frame(width: 100)
                .background() {
                    Circle()
                        .fill(.blue)
                }
            Capsule(style: .continuous)
                .stroke(style: StrokeStyle(lineWidth: 15,
                                           lineCap: .round,
                                           lineJoin: .round,
                                          miterLimit: 1,
                                          dash: [50,25],
                                          dashPhase: 5))
                .frame(height: 150)
                .padding()
            HStack{
                Path { path in
                    path.move(to: .zero)
                    path.addLine(to: CGPoint(x: 150, y: 0))
                    path.addLine(to: CGPoint(x: 75, y: 150))
                }
                .frame(width: 150, height: 150)
                Triangle()
                    .fill(.linearGradient(colors: [.blue,.red,.green], startPoint: .top, endPoint: .bottom))
                Triangle()
                    .fill(texture)
            }
            .frame(height: 150)
            
        }
    }
}

#Preview {
    ShapesView()
}
