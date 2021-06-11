//
//  FrucutsApp.swift
//  Frucuts
//
//  Created by Koushik Herle on 08/06/21.
//

import SwiftUI

@main
struct FrucutsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
            OnboardingView()
        }else
            {
                ContentView()
            }
        }
    }
}
