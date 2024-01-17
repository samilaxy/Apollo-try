//
//  AuthViewModel.swift
//  Apollo-try
//
//  Created by Amalitech-PC-4100433 on 17/01/2024.
//

import Foundation

class AuthViewModel: ObservableObject {
    @Published var email: String = "email";
    @Published var password: String = "password";
    
    func login(email: String, password: String){
       print("\(email) and \(password)")
        
    }

}


enum LoginEnum {
    case success
    case failure(message: String)
}
