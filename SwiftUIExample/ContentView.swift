//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        VStack {
            let drag = DragGesture()
                .updating($offset) { dragValue, state, transaction in
                    state = dragValue.translation
                }
            
            Image(systemName: "hand.point.right.fill")
                .font(.largeTitle)
                .offset(offset)
                .gesture(drag)
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
