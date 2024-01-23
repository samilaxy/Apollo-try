//
//  LoginView.swift
//  Apollo-try
//
//  Created by Amalitech-PC-4100433 on 17/01/2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var vm = AuthViewModel()
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedin = false
    
    var body: some View {
        NavigationView {
            VStack {
           
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.bottom, 20)
                
                Button(action: {
                        // Add your authentication logic here
                        // For simplicity, let's just toggle the login status
                    vm.login(email: username, password: password)
                    isLoggedin.toggle()
                }) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(isLoggedin ? Color.green : Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 50)
                NavigationLink(destination: HomeView(name: vm.name), isActive: $vm.success) {
                    EmptyView()
                }
                .hidden()
                Spacer()
            }
            .padding()
            .navigationBarTitle("Login")
        }
    }
}

#Preview {
    LoginView()
}
