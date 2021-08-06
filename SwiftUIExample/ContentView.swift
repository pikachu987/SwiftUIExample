//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "trash.circle.fill")
                Text("List Test 1")
            }
            HStack {
                Image(systemName: "person.2.fill")
                Text("List Test 2")
            }
            HStack {
                Image(systemName: "car.fill")
                Text("List Test 3")
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
