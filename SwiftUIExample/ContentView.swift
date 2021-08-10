//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            Button(action: {
                self.rotation = self.rotation < 360 ? self.rotation + 60 : 0
                self.scale = self.scale < 2.8 ? self.scale + 0.3 : 1
            }, label: {
                Text("Click to animate")
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear)
            })
            
            Spacer()
            
            Button(action: {
                self.rotation = self.rotation < 360 ? self.rotation + 60 : 0
                self.scale = self.scale < 2.8 ? self.scale + 0.3 : 1
            }, label: {
                Text("Click to animate")
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(rotation))
                    .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
            })
            
            Spacer()
            
            Button(action: {
                self.rotation = self.rotation < 360 ? self.rotation + 60 : 0
                self.scale = self.scale < 2.8 ? self.scale + 0.3 : 1
            }, label: {
                Text("Click to animate")
                    .scaleEffect(scale)
                    .rotationEffect(.degrees(rotation))
                    .animation(.linear.repeatCount(10))
            })
            
            Spacer()
            
            Button(action: {
                self.rotation = self.rotation < 360 ? self.rotation + 60 : 0
                self.scale = self.scale < 2.8 ? self.scale + 0.3 : 1
            }, label: {
                Text("Click to animate")
                    .rotationEffect(.degrees(rotation))
                    .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
                    .scaleEffect(scale)
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
