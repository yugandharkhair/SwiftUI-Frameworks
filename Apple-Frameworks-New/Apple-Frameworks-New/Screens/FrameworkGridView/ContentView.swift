//
//  ContentView.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 9/29/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self, destination: { framework in
                FrameworksDetailedView(framework: framework, isShowingSafariView: false)
            })
        }
    }
}

#Preview {
    ContentView()
}



