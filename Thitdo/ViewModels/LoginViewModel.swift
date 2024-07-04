//
//  LoginViewModel.swift
//  Thitdo
//
//  Created by Evren Karakuş on 4.07.2024.
//

import Foundation
class LoginViewModel: ObservableObject{
    @Published var email="";
    @Published var password="";
    @Published var errorMessage="";
    
    init(){
    }
    
    func login(){
        guard validate() else{return}
        
    }
    
    
    func validate()-> Bool{
        errorMessage=""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
         else{
            errorMessage = "Please fill all text areas!"
            return false
        }
        
        guard email.contains("@") && email.contains(".")
         else{
            errorMessage = "Please enter valid an email adress."
            return false
        }
        
        return true
                
    }
    
}
