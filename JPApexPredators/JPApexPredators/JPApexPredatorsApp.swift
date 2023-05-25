//
//  JPApexPredatorsApp.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import SwiftUI

@main
struct JPApexPredatorsApp: App {
    @StateObject private var apController = ApexPredatorController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(apController)
        }
    }
}
