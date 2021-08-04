//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.title)
                .frame(width: 100, height: 100, alignment: .center)
                .border(Color.black)
            Text("Hello World")
                .font(.title)
                .frame(minWidth: 100, maxWidth: 160, minHeight: 100, maxHeight: 140, alignment: .center)
                .border(Color.black)
            Text("Hello World")
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .border(Color.black)
        }
        .edgesIgnoringSafeArea(.all)
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
