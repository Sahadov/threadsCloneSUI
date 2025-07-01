//
//  ExploreViewModel.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 30/06/2025.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
