//
//  ContentView.swift
//  Lesson1 (Memorize)
//
//  Created by Сергей Соловьёв on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack {
      let emojis = ["👻","🎃","🕷️","😈","😈"]
      ForEach(emojis.indices, id:\.self) {index in
        CardView(content:emojis[index])
      }
    }
    
    .foregroundStyle(.orange)
    .padding()
  }
}

struct CardView :View {
  @State var isFaceUp = true
  let content: String
  var body: some View {
    ZStack {
      let base = RoundedRectangle(cornerRadius: 12)
      if isFaceUp {
        base.fill(.white)
        base.strokeBorder(lineWidth: 2)
        
        Text(content).font(.largeTitle)
      } else {
        base.fill()
      }
    }
    .onTapGesture {
      isFaceUp.toggle()
    }
  }
}























#Preview {
  ContentView()
}
