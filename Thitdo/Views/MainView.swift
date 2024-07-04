//
//  ContentView.swift
//  Thitdo
//
//  Created by Evren Karakuş on 3.07.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                
                NavigationLink(destination: LoginView()){
                    Text("Login")
                        .frame(width: 200,height: 50,alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    
                }
                NavigationLink(destination: RegisterView()){
                    Text("Register")
                        .frame(width: 200,height: 50,alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    
                }
            }
        }
    }  }


#Preview {
    MainView()
}
