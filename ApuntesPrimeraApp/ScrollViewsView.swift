//
//  ScrollViewsView.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 1/4/24.
//

import SwiftUI

struct ScrollViewsView: View {
    var body: some View {
        ScrollView {
            ScrollViewReader { reader in
                LazyVStack (pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(1..<5) { _ in
                            JobsCardView()
                            Divider()
                        }
                    } header: {
                        ScrollHeader(text: "Jobs Card",
                                     buttonText: "Ir a seccion Colors") {
                            reader.scrollTo("Colors", anchor: .center)
                        }
                    }
                    .id("Jobs Card")
                    Section {
                        ForEach(1..<20) { _ in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.orange)
                                .frame(maxWidth: .infinity)
                                .frame(height: 150)
                                .padding()
                        }
                    } header: {
                        ScrollHeader(text: "Colors",
                                     buttonText: "Ir a seccion Jobs Card") {
                            withAnimation (.bouncy){
                                reader.scrollTo("Jobs Card", anchor: .top)
                            }
                        }
                    }
                    .id("Colors")
                }
            }
        }
        .scrollBounceBehavior(.basedOnSize)
        .safeAreaInset(edge: .top, spacing: 0) {
            Rectangle()
                .fill(.background)
                .frame(height: UIDevice.topInsetSize)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ScrollViewsView()
}


