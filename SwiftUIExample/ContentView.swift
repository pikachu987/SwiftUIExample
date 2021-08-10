//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State private var magnification: CGFloat = 1
    
    var body: some View {
        VStack {
            let magnificationGesture = MagnificationGesture(minimumScaleDelta: 0)
                .onChanged { value in
                    print("Gesture Changed")
                    self.magnification = value
                }
                .onEnded { _ in
                    print("Gesture Ended")
                }
            
            Image(systemName: "hand.point.right.fill")
                .resizable()
                .font(.largeTitle)
                .scaleEffect(magnification)
                .gesture(magnificationGesture)
                .frame(width: 100, height: 100)
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
