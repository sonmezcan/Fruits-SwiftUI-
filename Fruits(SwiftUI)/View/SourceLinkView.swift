//
//  SourceLinkView.swift
//  Fruits(SwiftUI)
//
//  Created by can on 16.12.2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
       GroupBox() {
            HStack {
               Text("Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
           }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
