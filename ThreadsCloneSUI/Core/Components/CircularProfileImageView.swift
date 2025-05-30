//
//  CircularProfileImageView.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 29/05/2025.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("AvatarImage")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
