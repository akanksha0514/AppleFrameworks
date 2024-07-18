//
//  FrameworkGridView.swift
//  AppleFrameWorks
//
//  Created by Akanksha Upadhyay on 7/17/24.
//

import SwiftUI

struct FrameworkGridView: View {

  @StateObject private var viewModel = FrameworkViewModel()
    var body: some View {
      NavigationStack {
        ScrollView {
          LazyVGrid(columns: viewModel.columns) {
            ForEach(MockData.frameworks) { framework in
              NavigationLink(value: framework) {
                FrameWorkItem(framework: framework)
              }
            }
          }.padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10 ))
           .navigationTitle("Frameworks")
           .navigationDestination(for: Framework.self) { framework in
             DetailView(framework: framework)
           }
        }
      }
    }
}



#Preview {
    FrameworkGridView()
}
