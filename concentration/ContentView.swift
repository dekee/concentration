//
//  ContentView.swift
//  concentration
//
//  Created by Derrick Johnson on 1/8/24.
//

import SwiftUI

//Struct name is ContentView
struct ContentView: View {
    var body: some View { //can also be Text but the body has to be Text
        //computed property. readonly
        HStack {
          CardView(isFaceUp: true)
          CardView()
          CardView()
          CardView()
        }
       
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false; // Every var has to have a value
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12.0).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12.0)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12.0)
            }
            
        }
    }
}
#Preview {
    ContentView()
}
