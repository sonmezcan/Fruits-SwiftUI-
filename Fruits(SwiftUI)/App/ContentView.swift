//
//  ContentView.swift
//  Fruits(SwiftUI)
//
//  Created by can on 12.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings = false
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
      NavigationView {
        List {
          ForEach(fruits.shuffled()) { item in
            NavigationLink(destination: FruitDetailView(fruit: item)) {
              FruitRowView(fruit: item)
                .padding(.vertical, 4)
            }
          }
        }
        .navigationTitle("Fruits")
        .navigationBarItems(
          trailing:
            Button(action: {
              isShowingSettings = true
            }) {
              Image(systemName: "slider.horizontal.3")
            } //: BUTTON
            .sheet(isPresented: $isShowingSettings) {
              SettingsView()
            }
        )
      } //: NAVIGATION
      .navigationViewStyle(StackNavigationViewStyle())
    }
  }

#Preview {
    ContentView(fruits: fruitsData)
}
