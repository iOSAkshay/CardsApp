//
//  ContentView.swift
//  CardsGame
//
//  Created by Akshay Nandane on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "card2"
    @State private var cpuCard = "card4"
    @State private var playerScore = 1
    @State private var cpuScore = 0
    @State var showLoginView: Bool = false
    
    var body: some View {
        NavigationView(content: {
            ZStack {
                
                Image("background").ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("logo")
                    Spacer()
                    HStack {
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink("hello", destination: {
                            DetailsView()
                        })
                        Spacer()
                        Button(action: {
                            showLoginView = true
                        }, label: {
                            Text("Click Here")
                        }).navigationDestination(isPresented: $showLoginView, destination: {
                            LoginView()
                        })
                        Spacer()
                    }
                    Spacer()
                    Button(action: {
                        //Generate random number between 2 and 12
                        let playerRandom = Int.random(in: 2...12)
                        let cpuRandom = Int.random(in: 2...12)
                        // Update card
                        playerCard = "card"+String(playerRandom)
                        cpuCard = "card"+String(cpuRandom)
                        // Update score
                        playerScore += 1
                        cpuScore += 1
                        
                    }, label: {
                        Image("dealbutton")
                    })
                    Spacer()
                    HStack {
                        Spacer()
                        VStack {
                            Text("Player")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(playerScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        VStack {
                            Text("CPU")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                            Text(String(cpuScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                }
            }
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
