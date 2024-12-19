//
//  SettingsRowView.swift
//  Fruits(SwiftUI)
//
//  Created by can on 19.12.2024.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    // MARK: - BODY

    var body: some View {
      VStack {
        Divider().padding(.vertical, 4)
        
        HStack {
          Text(name).foregroundColor(Color.gray)
          Spacer()
          if (content != nil) {
            Text(content!)
          } else if (linkLabel != nil && linkDestination != nil) {
            Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
            Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
          }
          else {
            EmptyView()
          }
        }
      }
    }
  }


#Preview {
    Group {
      SettingsRowView(name: "Developer", content: "Uraz")
        
        .padding()
      SettingsRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "hackertyper.com")
        .preferredColorScheme(.dark)
        
        .padding()
    }
}
