//
//  ButtonView.swift
//  Thitdo
//
//  Created by Evren Karakuş on 4.07.2024.
//

import SwiftUI

struct ButtonView: View {
    
    let label:String

    let action:()->Void
    
    var body: some View {
        Button(action: action, label:  {
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .foregroundColor(.blue)
                Text(label)
                    .foregroundStyle(.white)
            }
            .frame(height: 50)
            .padding(.horizontal)
            
        })
    }
}

#Preview {
    ButtonView(label: "Test Button", action: {})
}
