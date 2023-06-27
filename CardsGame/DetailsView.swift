//
//  DetailsView.swift
//  CardsGame
//
//  Created by Akshay Nandane on 26/06/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)


            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)


                HStack {
                    Text("Orange Trees")
                    Spacer()
                    Text("India")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)


                Divider()


                Text("About Orange Trees")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()


            Spacer()
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
