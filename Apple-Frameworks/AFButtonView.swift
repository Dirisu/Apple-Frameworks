//
//  AFButtonView.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 17/09/2023.
//

import SwiftUI

struct AFButtonView: View {
    
    var title: String
    var buttonColor: Color
    
    var body: some View {
        Button {
            
        } label: {
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

struct AFButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AFButtonView(title: "Text Title", buttonColor: Color.red)
    }
}
