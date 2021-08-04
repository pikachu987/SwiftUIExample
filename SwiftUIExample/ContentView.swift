//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Hello world")
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 4)
                
                Text("Hello world")
                    .frame(width: geometry.size.width / 2, height: geometry.size.height / 2)
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
