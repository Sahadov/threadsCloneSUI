//
//  ThreadsButtonModifier.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 22/04/2025.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
