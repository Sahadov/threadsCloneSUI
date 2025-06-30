//
//  RegistrationViewModel.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 29/06/2025.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var fullName: String = ""
    @Published var userName: String = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser (
            withEmail: email,
            password: password,
            fullname: fullName,
            username: userName
        )
    }
}
