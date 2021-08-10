//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var offset: CGSize = .zero
    @State private var dragEnabled: Bool = false
    
    var body: some View {
        VStack {
            let longPressBeforeDrag = LongPressGesture(minimumDuration: 2.0)
                .onEnded({ _ in
                    self.dragEnabled = true
                })
                .sequenced(before: DragGesture())
                .updating($offset) { value, state, transition in
                    switch value {
                    case .first(true):
                        print("Long Press in progress")
                    case .second(true, let drag):
                        state = drag?.translation ?? .zero
                    default: break
                    }
                }
                .onEnded { value in
                    self.dragEnabled = false
                }
            
            Image(systemName: "hand.point.right.fill")
                .foregroundColor(dragEnabled ? .red : .blue)
                .font(.largeTitle)
                .offset(offset)
                .gesture(longPressBeforeDrag)
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
