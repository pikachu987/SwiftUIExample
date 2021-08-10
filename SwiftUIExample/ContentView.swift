//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @State private var visibility = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $visibility.animation(.linear), label: {
                Text("Toggle Text Views")
            })
            .padding()
            
            if visibility {
                Text("Hello World")
                    .font(.largeTitle)
            } else {
                Text("Goodbye World")
                    .font(.largeTitle)
            }
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
