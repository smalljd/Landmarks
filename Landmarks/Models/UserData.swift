//
//  UserData.swift
//  Landmarks
//
//  Created by Jeff on 7/6/19.
//  Copyright © 2019 Jeff Small. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()

    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }

    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }


}
