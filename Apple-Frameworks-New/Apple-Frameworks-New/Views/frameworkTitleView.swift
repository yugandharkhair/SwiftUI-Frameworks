//
//  frameworkTitleView.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 10/1/23.
//

import SwiftUI

struct FrameworkTitleView: View
{
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
