//
//  AFButton.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 9/29/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Testing")
}
