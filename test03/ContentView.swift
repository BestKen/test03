//
//  ContentView.swift
//  test03
//
//  Created by Ken Hsieh on 2026/3/15.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚚", "✈️", "🚡", "🛰", "🚅", "🚗", "🚕", "🚌", "🚎", "🚓", "🚑", "🚒", "🛵", "🚜", "🛴", "🏍", "🛺", "🚨", "🚃", "🛳", "🛥", "🚤", "⛵️", "🛶"]
    @State var emojiCount: Int = 12
    
    var body: some View {
        VStack {
            cardList
            Spacer()
            actionButtons
        }
        .foregroundStyle(.orange)
        .padding()
    }
    
    var cardList: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]) {
                
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
    }
    
    var actionButtons: some View {
        HStack {
            add
            Spacer()
            remove
        }
        .font(.largeTitle)
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
            
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
            
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String
    
    var body: some View {
        ZStack {
            let shap = RoundedRectangle(cornerRadius: 20)
            Group {
                shap
                    .foregroundStyle(.white)
                shap
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            shap.opacity(isFaceUp ? 0 : 1)
            
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}
