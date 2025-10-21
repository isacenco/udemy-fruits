//
//  FructusApp.swift
//  Fructus
//
//  Created by Ghenadie Isacenco on 21/10/2025.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }            
        }
    }
}
