//
//  Extension.swift
//  ApuntesPrimeraApp
//
//  Created by Fran Malo on 1/4/24.
//

import SwiftUI

extension UIDevice {
    static var topInsetSize: CGFloat {
        UIApplication
            .shared
            .connectedScenes
            .compactMap { $0  as? UIWindowScene }
            .flatMap(\.windows)
            .first { $0.isKeyWindow }?
            .safeAreaInsets
            .top ?? 0

    }
    static var bottomInsetSize: CGFloat {
        UIApplication
            .shared
            .connectedScenes
            .compactMap { $0  as? UIWindowScene }
            .flatMap(\.windows)
            .first { $0.isKeyWindow }?
            .safeAreaInsets
            .top ?? 0

    }
}
