//
//  LoginView.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
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
                    TextField("Enter your email", text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(ThreadsTextFieldModifier())
                    SecureField("Enter your password", text: $password)
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
                    
                } label: {
                    Text("Login")
                        .modifier(ThreadsButtonModifier())
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    Text("Registration View")
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
