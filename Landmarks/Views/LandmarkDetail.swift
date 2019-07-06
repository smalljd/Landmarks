//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jeff on 6/30/19.
//  Copyright © 2019 Jeff Small. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130) 
            VStack(alignment: .leading, spacing: 12) {
                Text(landmark.name)
                    .font(.title)
                    .color(.primary)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                            Spacer()
                            Text(landmark.state)
                                .font(.subheadline)
                        }
                    }
                    .padding()
            Spacer()
            }
            .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
