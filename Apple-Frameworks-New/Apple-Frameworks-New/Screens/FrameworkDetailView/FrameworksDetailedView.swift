//
//  FrameworksDetailedView.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 9/29/23.
//

import SwiftUI

struct FrameworksDetailedView: View {
    
    var framework: Framework
    @State var isShowingSafariView: Bool
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.cyan)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            safariView(url: (URL(string: framework.urlString) ?? URL(string: "www.apple.com"))!)
        })
    }
}

#Preview {
    FrameworksDetailedView(framework: MockData.sampleFramework, isShowingSafariView: false)
}
