//
//  ContentView.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var apController: ApexPredatorController
    
    var body: some View {
        NavigationView {
            List {
                ForEach(apController.apexPredators) { predator in
                    NavigationLink(destination: Text("TODO: Add dino destination")) {
                        Text(predator.name)
                    }
                }
            }
            .navigationTitle("Apex Predators")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ApexPredatorController())
            .preferredColorScheme(.dark)
    }
}
