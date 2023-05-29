//
//  ApexPredatorRow.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/25/23.
//

import SwiftUI

struct ApexPredatorRow: View {
    @State var predator: ApexPredator
    
    var body: some View {
        HStack {
            predator.image
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 75)
                .shadow(color: .white, radius: 1.5, x: 0, y: 0)
            
            VStack(alignment: .leading) {
                Text(predator.name.capitalized)
                    .font(.headline)
                
                Text(predator.type.capitalized)
                    .font(.subheadline)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(predator.backgroundColor.opacity(0.67))
                    )
            }
            .fontWeight(.bold)
            .padding()
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 100)
    }
}

struct ApexPredatorRow_Previews: PreviewProvider {
    static var previews: some View {
        let controller = ApexPredatorController()
        ApexPredatorRow(predator: controller.apexPredators.first!)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
