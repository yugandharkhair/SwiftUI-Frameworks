//
//  safariView.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 9/30/23.
//

import SwiftUI
import SafariServices

struct safariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<safariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safariView>) {}
}
