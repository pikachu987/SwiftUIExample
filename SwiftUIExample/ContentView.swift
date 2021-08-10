//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State private var isSpinning: Bool = true
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
                    .frame(width: 360, height: 360)
                
                Image(systemName: "forward.fill")
                    .font(.largeTitle)
                    .offset(y: -180)
                    .rotationEffect(.degrees(isSpinning ? 0 : 360))
                    .animation(.linear(duration: 5).repeatForever(autoreverses: false))
            }
            .onAppear(perform: {
                self.isSpinning.toggle()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
        }
    }
}
