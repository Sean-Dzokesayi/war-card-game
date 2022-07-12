//
//  ContentView.swift
//  warchallenge
//
//  Created by Sean Dzokesayi on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(){
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                    
                    
               
                } label:{
                    Image("dealbutton")
                }
                
            
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 20.0) {
                        Text("Player")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    VStack(spacing: 20.0) {
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.321, saturation: 0.884, brightness: 0.44)/*@END_MENU_TOKEN@*/)
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
