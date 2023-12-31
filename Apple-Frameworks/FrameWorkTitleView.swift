//
//  FrameWorkTitleView.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 19/09/2023.
//

import SwiftUI

struct FrameWorkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameWorkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameWorkTitleView(framework: MockData.sampleFramework)
    }
}
