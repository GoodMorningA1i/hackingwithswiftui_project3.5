//
//  ContentView.swift
//  hackingwithswiftui_challengeDay25_project3.5
//
//  Created by Ali Syed on 2024-11-17.
//

import SwiftUI

struct ContentView: View {
    
    let choices = ["Rock", "Paper", "Scissors"]
    @State private var appChoice: Int = Int.random(in: 0...2) //want to use choices.count
    
    let results = ["Win", "Lose"]
    @State private var appResult: Int = Int.random(in: 0...1) //want to use results.count
    
    @State private var score: Int = 0
    @State private var numQuestionsAnswered: Int = 0
    
    var body: some View {
        VStack {
            Text("Score: \(score)")
            Spacer()
            Text("You are up against \(choices[appChoice])") //Remove later
                .font(.title)
            Text("And you would like to \(results[appResult].lowercased())") //Remove later
                .font(.headline)
            
            Text("What would you choose?")
                .padding(.top, 30)
            HStack(spacing: 30) {
                ForEach(0..<3) { choice in //can I use choices.count without the warning
                    Button(choices[choice]) {
                        // a choice was selected by the user
                        if choices[appChoice] == "Rock" {
                            if results[appResult] == "Win" {
                                if choices[choice] == "Paper" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            } else if results[appResult] == "Lose" {
                                if choices[choice] == "Scissors" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            }
                        }
                        
                        if choices[appChoice] == "Paper" {
                            if results[appResult] == "Win" {
                                if choices[choice] == "Scissors" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            } else if results[appResult] == "Lose" {
                                if choices[choice] == "Rock" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            }
                        }
                        
                        if choices[appChoice] == "Scissors" {
                            if results[appResult] == "Win" {
                                if choices[choice] == "Rock" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            } else if results[appResult] == "Lose" {
                                if choices[choice] == "Paper" {
                                    score += 1
                                } else {
                                    score -= 1
                                }
                            }
                        }
                        
                        numQuestionsAnswered += 1
                        
                        if numQuestionsAnswered < 10 {
                            nextRound()
                        }
                    }
                    .padding()
                    .background(.yellow)
                }
            }
            .padding(.top, 10)
            Spacer()
        }
    }
    
    func nextRound() {
        appChoice = Int.random(in: 0..<choices.count)
        
        if appResult == 0 {
            appResult = 1
        } else {
            appResult = 0
        }
    }
    
}

#Preview {
    ContentView()
}
