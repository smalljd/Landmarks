//
//  BadgeView.swift
//  Landmarks
//
//  Created by Jeff Small on 7/13/19.
//  Copyright © 2019 Jeff Small. All rights reserved.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8
    var badgeSymbols: some View {
        ForEach(0 ..< Self.rotationCount) { index in
            RotatedBadgeSymbol(angle: .init(degrees: Double(index) / Double(Self.rotationCount)) * 360)
        }
        .opacity(0.5)
    }

    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#if DEBUG
struct Badge_Previews : PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
#endif
