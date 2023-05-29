//
//  ApexPredatorDetail.swift
//  JPApexPredators
//
//  Created by Jeffrey Sweeney on 5/29/23.
//

import SwiftUI

struct ApexPredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    predator.backgroundImage
                        .resizable()
                        .scaledToFit()
                    
                    predator.image
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width/1.5,
                               height: UIScreen.main.bounds.height/4
                        )
                }
                
                VStack(alignment: .leading) {
                    Text(predator.name)
                        .font(.largeTitle)
                        .padding(.bottom, 5)
                    
                    VStack(alignment: .leading) {
                        Text("Appears In:")
                            .font(.title3)
                        
                        ForEach(predator.movies, id: \.self) { movie in
                            HStack(alignment: .top, spacing: 8) {
                                Text("\u{2022}") // Bullet character
                                    .font(.headline)
                                Text(movie)
                                    .font(.body)
                            }
                        }
                    }
                    .padding(.bottom, 5)
                    
                    Text("Movie Moments")
                        .font(.title)
                        .padding(.bottom, 5)
                    
                    ForEach(predator.movieScenes, id: \.self.id) { movieScene in
                        Text(movieScene.movie)
                            .font(.title3)
                            .padding(.bottom, 2.5)
                        
                        Text(movieScene.sceneDescription)
                            .font(.subheadline)
                            .padding(.bottom, 10)
                    }
                }
                .padding()
            }
        }
        .ignoresSafeArea()
    }
}

struct ApexPredatorDetail_Previews: PreviewProvider {
    static var previews: some View {
        let controller = ApexPredatorController()
        // Pick Mosasaurus (id 11) so we have multiple scenes and movies
        let predator = controller.apexPredators.first { $0.id == 1 }!
        
        ApexPredatorDetail(predator: predator)
            .preferredColorScheme(.dark)
    }
}
