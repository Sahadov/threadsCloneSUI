//
//  ProfileThreadFilter.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 14/06/2025.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable , Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"
        }
    }
    
    var id: Int { return self.rawValue }
}
