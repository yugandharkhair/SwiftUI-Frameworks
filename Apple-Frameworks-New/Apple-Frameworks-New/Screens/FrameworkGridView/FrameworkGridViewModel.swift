//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks-New
//
//  Created by Yugandhar Khair on 9/30/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
