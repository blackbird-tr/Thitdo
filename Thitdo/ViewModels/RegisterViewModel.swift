//
//  RegisterViewModel.swift
//  Thitdo
//
//  Created by Evren Karakuş on 4.07.2024.
//

import Foundation
class RegisterViewModel: ObservableObject{
    @Published var ad="";
    @Published var soyad="";
    @Published var email="";
    @Published var password="";
    @Published var passwordAgain="";
    @Published var errorMessage="";
    
    init(){
    }
    
    func register(){
    }
    
    
    func validate()-> Bool{
        errorMessage=""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !passwordAgain.trimmingCharacters(in: .whitespaces).isEmpty
         else{
            errorMessage = "Please fill all text areas!"
            return false
        }
        
        guard email.contains("@") && email.contains(".")
         else{
            errorMessage = "Please enter valid an email adress."
            return false
        }
        
        guard password.elementsEqual(passwordAgain)
         else{
            errorMessage = "Passwords don't match"
            return false
        }
        return true
                
    }
    
}
