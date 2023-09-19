//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 19/09/2023.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        // sets button in Hstack to move alignment
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
                print("here")
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
