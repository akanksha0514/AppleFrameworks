//
//  SafariView.swift
//  AppleFrameWorks
//
//  Created by Akanksha Upadhyay on 7/18/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
  
  let url: URL
  func makeUIViewController(context: Context) -> some UIViewController {
    SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
  }
}
