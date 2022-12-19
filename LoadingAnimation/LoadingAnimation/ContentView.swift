//
//  ContentView.swift
//  LoadingAnimation
//
//  Created by kekeli on 17/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    
    var body: some View {
        
        HStack {
           
            ForEach(0..<3) { index in
                Circle()
                    .fill(Color.red)
                    .frame(width: 25, height: 25)
                    .scaleEffect(animationAmount)
                    .opacity(Double(3 - index) / 3)
                    .animation(.easeInOut(duration: 1.5)
                        .repeatForever(autoreverses: true)
                        .delay(0.25 * Double(index)), value: animationAmount)
            }
        }
        .onAppear {
            animationAmount = 1
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
