//
//  ProfileViewModel.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 30/06/2025.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG: User in view model from combine is \(self?.currentUser?.id)")
        }
        .store(in: &cancellables)
    }
}
