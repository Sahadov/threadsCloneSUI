//
//  UserService.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 30/06/2025.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseFirestore

class UserService {
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    init() {
        Task { try await fetchCurrentUser() }
    }
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let shapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try shapshot.data(as: User.self)
        self.currentUser = user
        
        print("DEBUG: the current user.......")
    }
}
