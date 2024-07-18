//
//  FrameworkViewModel.swift
//  AppleFrameWorks
//
//  Created by Akanksha Upadhyay on 7/18/24.
//

import Foundation
import SwiftUI

class FrameworkViewModel: ObservableObject {
  var selectedFrameWork: Framework? {
    didSet { isShowDetailView = true }
  }
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
  
  @Published var isShowDetailView = false
}
