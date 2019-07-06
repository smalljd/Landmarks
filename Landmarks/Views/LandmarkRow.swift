//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Jeff on 6/30/19.
//  Copyright © 2019 Jeff Small. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark
    var body: some View {
        HStack(spacing: 12) {
            landmark.image(forSize: 30)
                .cornerRadius(15)
            Text(landmark.name)
            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
            LandmarkRow(landmark: landmarkData[0])
    }
}
#endif
