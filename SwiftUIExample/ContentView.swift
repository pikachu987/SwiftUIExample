//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var offset: CGSize = .zero
    @GestureState private var longPress: Bool = false
    
    var body: some View {
        VStack {
            let longPressAndDrag = LongPressGesture(minimumDuration: 1.0)
                .updating($longPress) { value, state, transition in
                    state = value
                }
                .simultaneously(with: DragGesture())
                .updating($offset) { value, state, transition in
                    state = value.second?.translation ?? .zero
                }
            
            Image(systemName: "hand.point.right.fill")
                .foregroundColor(longPress ? .red : .blue)
                .font(.largeTitle)
                .offset(offset)
                .gesture(longPressAndDrag)
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
