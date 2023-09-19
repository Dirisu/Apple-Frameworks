//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 19/09/2023.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    var buttonColor: Color
    var action: () -> Void  // Add this line
    
    var body: some View {
        Button(action: action) {  // Modify this line
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 250, height: 50)
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}
