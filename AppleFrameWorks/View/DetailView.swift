//
//  DetailView.swift
//  AppleFrameWorks
//
//  Created by Akanksha Upadhyay on 7/18/24.
//

import SwiftUI

struct DetailView: View {
  @State private var isShowSafari: Bool = false
  var framework: Framework
    var body: some View {
      VStack {
        //close button
        Spacer()

        // Image
        FrameWorkItem(framework: framework)
        // detail desc
        Text(framework.description)
          .font(.body)
          .foregroundStyle(.gray)
          .padding()
        Spacer()
        // button
        Button {
          isShowSafari.toggle()
        } label: {
          Text("Learn More")
            .frame(width: 100, height: 50)
            .background(.red)
            .cornerRadius(5.0)
            .foregroundStyle(.white)
        }
      }
      .fullScreenCover(isPresented: $isShowSafari) {
        SafariView(url: URL(string: framework.urlString) ??  URL(string: "https://google.come")!)
      }
    }
}

#Preview {
  DetailView(framework: MockData.sampleFramework)
}
