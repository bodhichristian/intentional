//
//  Intents.swift
//  Intentional
//
//  Created by christian on 2/3/25.
//

import Foundation
import AppIntents
import SwiftUI

// MARK: - App Intents
struct AddPointIntent: AppIntent {
    static var title: LocalizedStringResource = "Add a point"
    
    @AppStorage("score") private var score: Int = 0
    
    @MainActor
    func perform() async throws -> some IntentResult {
        score += 1
        return .result()
    }
}

struct SubtractPointIntent: AppIntent {
    static var title: LocalizedStringResource = "Subtract a point"
    
    @AppStorage("score") private var score: Int = 0
    
    @MainActor
    func perform() async throws -> some IntentResult {
        score -= 1
        return .result()
    }
}

// MARK: - App Shortcuts
struct IntentionalShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: AddPointIntent(),
            phrases: ["Add a point"],
            shortTitle: "Add a point",
            systemImageName: "plus.circle"
        )
        
        AppShortcut(
            intent: AddPointIntent(),
            phrases: ["Subtract a point"],
            shortTitle: "Subtract a point",
            systemImageName: "minus.circle"
        )
    }
}
