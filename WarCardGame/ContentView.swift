//
//  ContentView.swift
//  WarCardGame
//
//  Created by Matt Silveria on 8/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("layout")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Text("Player")
                            .font(.title2)
                            .foregroundColor(.yellow)
                            .bold()
                        
                        Spacer()
                        
                        Text("CPU")
                            .font(.title2)
                            .foregroundColor(.yellow)
                            .bold()
                        
                        Spacer()
                        
                    }.padding(.horizontal, -45.0)
                        .padding()
                    
                    HStack {
                        
                        Spacer()
                        
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                            .bold()
                        
                        Spacer()
                        
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                            .bold()
                        Spacer()
                    }
                    .padding(.horizontal, -45.0)
                    .padding(-10)
                }
            }
            VStack {
                
                Spacer()
                
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerCard > cpuCard {
                        playerScore += 1
                    } else if cpuCard > playerCard {
                        cpuScore += 1
                    } else if cpuCard == playerCard {
                        cpuScore += 1
                        playerScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    
                }.padding(.vertical, -100.0).buttonStyle(.plain)
            }
        }
    }
    //MARK: Methods
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
