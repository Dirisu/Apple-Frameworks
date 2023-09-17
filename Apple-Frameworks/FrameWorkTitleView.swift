//
//  FrameWorkTitleView.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 17/09/2023.
//

import SwiftUI

struct FrameWorkTitleView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

struct FrameWorkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkTitleView(name: "App Clips", imageName: "app-clip")
    }
}
