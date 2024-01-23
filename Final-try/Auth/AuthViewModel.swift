//
//  AuthViewModel.swift
//  Apollo-try
//
//  Created by Amalitech-PC-4100433 on 17/01/2024.
//

import Foundation
import ApolloAPI
import ArmsAPI

class AuthViewModel: ObservableObject {
    @Published var email: String = "";
    @Published var password: String = "password";
    @Published var name: String = "";
    @Published var success: Bool = false;
    @Published var token: String = "";
    
    func login(email: String, password: String){
       
        let userInput = UserLoginInput(email: email, password: password)
        
        let nullableUserLoginInput = GraphQLNullable(userInput)
        print("Input data: \(nullableUserLoginInput) ")
        Network.shared.apollo.perform(mutation: ArmsLoginMutation(data: nullableUserLoginInput)) { [weak self] result in
            switch result {
                case .success(let graphQLResult):
                    print("Here ...:  ")
                    if let data = graphQLResult.data {
                        self?.token = "Bearer \(data.armsLogin.token ?? "")"
                        print("token data: \(self?.token ?? "") ")
                        self?.success = data.armsLogin.success ?? false
                        self?.name = data.armsLogin.user?.first_name ?? ""
                        print("token data: \(self?.token ?? "") ")
                        print("name data: \(self?.name ?? "") ")
                        print("name data: \(data.armsLogin.user?.email ?? "") ")
                        print("main data: \(String(describing: data.armsLogin.user ?? nil)) ")
                        print("success: \(self?.success ?? false) ")
                    } else {
                        print("success fail: \(self?.success ?? false) ")
                    }
                case .failure(let error):
                    print("GraphQL mutation error: \(error.localizedDescription)")
                    
            }
        }

        
    }

}


enum LoginEnum {
    case success
    case failure(message: String)
}

struct UserInput {
var email: String = ""
var password: String = ""
}
