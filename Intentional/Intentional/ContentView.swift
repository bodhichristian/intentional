//
//  ContentView.swift
//  Intentional
//
//  Created by christian on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("score") var score: Int = 0
    
    var body: some View {
        VStack {
            Text("\(score)")
                .font(.system(size: 100))
                .fontDesign(.monospaced)
            
            HStack {
                Button {
                    score += 1
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.title)
                }
                .buttonStyle(.bordered)
                
                Button {
                    score -= 1
                } label: {
                    Image(systemName: "minus.circle")
                        .font(.title)
                }
                .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
