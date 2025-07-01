//
//  User.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 30/06/2025.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: String?
    let bio: String?
}
