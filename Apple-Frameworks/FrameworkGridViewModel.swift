//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Marvellous Dirisu on 17/09/2023.
//

import SwiftUI

// class holds state... if your class is not going to be sub class, make it final
final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
