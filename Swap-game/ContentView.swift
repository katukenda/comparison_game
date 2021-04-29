//
//  ContentView.swift
//  Swap-game
//
//  Created by Janitha Katukenda on 2021-04-29.
//

import SwiftUI

struct ContentView: View {
    
    @State private var score = 100
    @State private var firstImage = 1
    @State private var secondImage = 2
    @State private var therdImage = 3
    @State private var decetionVariable = false
    @State private var count = 0
    
    
    var body: some View {
        
       
        VStack {
           
          
            
            Text("SwiftUi Slots!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("Credits " + String(score))
                .font(.largeTitle)
            
            Spacer()
            
            VStack{
                HStack{
                   
                    Image("image" + String(firstImage))
                    Image("image" + String(secondImage))
                }
                Image("image" + String(therdImage))
                
            }
         
            Spacer()
            
            Button(action: {
                
                let firstRand = Int.random(in: 1...3)
                let secondRand = Int.random(in: 1...3)
                let therdRand = Int.random(in: 1...3)
                
                firstImage = firstRand
                secondImage = secondRand
                therdImage = therdRand
                count += 1
                
                if (score >= 1) {
                    
                    if (( firstRand == secondRand) && (therdRand == secondRand) ) {
                        score += 3
                    }
                    else {
                        score -= 1
                    }
                }
                else {
                    
                    decetionVariable = true
                }
                
            }, label: {
                Text("Span")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 33.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)

                   
            })
            .padding(.horizontal, 12.0)
            .disabled(decetionVariable)
            
            Text("Number Of Swaps " + String(count))
                .font(.footnote)
                .padding(.top, 32.0)
            
            Spacer()
             
            Text("JDevop")
            
        }
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
