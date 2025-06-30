//
//  LoginViewModel.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 29/06/2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    @MainActor
    func loginUser() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
