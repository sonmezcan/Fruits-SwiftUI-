//
//  Fruits_SwiftUI_App.swift
//  Fruits(SwiftUI)
//
//  Created by can on 12.12.2024.
//

import SwiftUI

@main
struct Fruits_SwiftUI_App: App {
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
                
            }
        }
    }
}
