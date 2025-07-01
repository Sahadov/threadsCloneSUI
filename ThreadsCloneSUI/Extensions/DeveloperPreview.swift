//
//  DeveloperPreview.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 30/06/2025.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: "222", fullname: "Random Name", email: "as@mail.ru", username: "randomMan", profileImageUrl: nil, bio: "The best random man ever")
}
