//
//  RegistrationView.swift
//  ThreadsCloneSUI
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var fullName: String = ""
    @State var userName: String = ""
    
    var body: some View {
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
                TextField("Enter your full name", text: $fullName)
                    .modifier(ThreadsTextFieldModifier())
                TextField("Enter your username", text: $userName)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .modifier(ThreadsButtonModifier())
            }
                    
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
