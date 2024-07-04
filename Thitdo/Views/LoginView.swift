//
//  LoginView.swift
//  Thitdo
//
//  Created by Evren Karakuş on 3.07.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginViewModel=LoginViewModel()
    var body: some View {
        NavigationStack{
        VStack{
             
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
             
            //Header Need
            Form{
                Section(header:Text("Login Form")){
                    if !loginViewModel.errorMessage.isEmpty
                    {
                        Text(loginViewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Enter email ",
                              text:$loginViewModel.email)
                    .autocorrectionDisabled()
                    SecureField("Enter password ",
                              text:$loginViewModel.password)
                    .autocorrectionDisabled()
                    
                
                  
                }.padding()
                 
                
            }.frame(height: 350)
            ButtonView(label: "Login", action: loginViewModel.login)
            
        }
        
            
        }
    }
}

#Preview {
    LoginView()
}
