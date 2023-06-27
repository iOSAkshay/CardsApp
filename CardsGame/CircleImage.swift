//
//  CircleImage.swift
//  CardsGame
//
//  Created by Akshay Nandane on 27/06/23.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("OrangeTree")
            .frame(width: 300.0, height: 300.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 4)
    }
}


struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
