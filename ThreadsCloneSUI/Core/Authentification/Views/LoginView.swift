//
//  LoginView.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("Threads-Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                VStack {
                    TextField("Enter your email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    Task {
                        try await viewModel.loginUser()
                    }
                } label: {
                    Text("Login")
                        .modifier(ThreadsButtonModifier())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
