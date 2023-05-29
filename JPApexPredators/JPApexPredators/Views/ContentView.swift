//
//  ContentView.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    let apController = ApexPredatorController()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(apController.apexPredators) { predator in
                    NavigationLink(destination: ApexPredatorDetail(predator: predator)) {
                        ApexPredatorRow(predator: predator)
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
            .preferredColorScheme(.dark)
    }
}
