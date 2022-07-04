//
//  StarTrekAdventuresApp.swift
//  Shared
//
//  Created by James Emselle on 5/7/2022.
//

import SwiftUI

@main
struct StarTrekAdventuresApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(noOfDice: 1, division: .command)
        }
    }
}
