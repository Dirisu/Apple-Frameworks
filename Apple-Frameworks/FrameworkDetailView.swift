//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 17/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameWorkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                //isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More", buttonColor: Color.red, action: {
                    // Your action here
                    isShowingSafariView = true
                })
            }

        }
//        .sheet(isPresented: $isShowingSafariView, content: {
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//            
//        })
        
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

struct FrameWorkDetailView: View {
    
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
            Text(framework.description)
        }
        .padding()
    }
}
