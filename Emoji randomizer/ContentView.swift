//
//  ContentView.swift
//  Emoji randomizer
//
//  Created by Nethan on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["😇", "📳", "😣", "🙁", "👨🏾‍💻", "🍅", "🫥", "👨🏼‍🦳", "🌐", "☘️", "😘", "😟", "😡", "😱", "💀", "😺", "🤛🏿", "🦷", "👁️", "👮🏽‍♀️", "👩🏻‍🦳", "👩🏿‍🍳", "👨🏻‍🏫", "🧑🏽‍💻", "🧑🏻‍🏫"]

    @State var coordinates1 = [0, 0]
    @State var coordinates2 = [0, 0]
    @State var coordinates3 = [0, 0]
    @State var coordinates4 = [0, 0]
    @State var coordinates5 = [0, 0]
    
    @State var emoji1 = ""
    @State var emoji2 = ""
    @State var emoji3 = ""
    @State var emoji4 = ""
    @State var emoji5 = ""
    var body: some View {
        VStack {
            Spacer()
            Text("\(emojis.randomElement()!)")
                .font(.system(size: 50))
                .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
            Spacer()
            Text("\(emojis.randomElement()!)")
                .font(.system(size: 50))
                .position(x: CGFloat(coordinates2[0]), y: CGFloat(coordinates2[1]))
            Text("\(emojis.randomElement()!)")
                .font(.system(size: 50))
                .position(x: CGFloat(coordinates3[0]), y: CGFloat(coordinates3[1]))
            Text("\(emojis.randomElement()!)")
                .font(.system(size: 50))
                .position(x: CGFloat(coordinates4[0]), y: CGFloat(coordinates4[1]))
            Spacer()
            Text("\(emojis.randomElement()!)")
                .font(.system(size: 50))
                .position(x: CGFloat(coordinates5[0]), y: CGFloat(coordinates5[1]))
            Spacer()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
                
                let seconds = 0.3
             
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                   
                    coordinates1[0] = Int.random(in: 0..<350)
                    coordinates1[1] = Int.random(in: 0..<350)
                    coordinates2[0] = Int.random(in: 0..<350)
                    coordinates2[1] = Int.random(in: 0..<350)
                    coordinates3[0] = Int.random(in: 0..<350)
                    coordinates3[1] = Int.random(in: 0..<350)
                    coordinates4[0] = Int.random(in: 0..<350)
                    coordinates4[1] = Int.random(in: 0..<350)
                    coordinates5[0] = Int.random(in: 0..<350)
                    coordinates5[1] = Int.random(in: 0..<350)
                }
                
             
                
               
                
            
            
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
