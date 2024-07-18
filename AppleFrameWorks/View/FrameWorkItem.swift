//
//  FrameWorkItem.swift
//  AppleFrameWorks
//
//  Created by Akanksha Upadhyay on 7/18/24.
//

import SwiftUI

struct FrameWorkItem: View {
  var framework: Framework
  var body: some View {
    VStack (alignment: .center, spacing: 10, content: {
      Image(framework.imageName).resizable().frame(width: 90, height: 90, alignment: .leading)
      Text(framework.name)
        .font(.title2)
        .foregroundStyle(Color(.label))
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.6)
    }).padding()
  }
}

#Preview {
  FrameWorkItem(framework: MockData.sampleFramework)
}
