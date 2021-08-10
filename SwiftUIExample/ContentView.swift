//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State private var isButtonVisible: Bool = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 1)), label: {
                Text("Show/Hide Button")
            })
            .padding()
            
            if isButtonVisible {
                Button(action: {}, label: {
                    Text("Example Button")
                })
                .font(.largeTitle)
//                .transition(.fadeAndMove)
                .transition(.asymmetric(insertion: .scale, removal: .slide)) // 비대칭 전환
            }
        }
    }
}

extension AnyTransition {
    static var fadeAndMove: AnyTransition {
        .opacity.combined(with: .move(edge: .top))
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
