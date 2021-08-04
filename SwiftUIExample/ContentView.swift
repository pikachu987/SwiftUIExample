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
            Group {
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
            }
            Group {
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
                Text("Sample")
            }
            HStack {
                Image(systemName: "airplane")
                    .font(.title3)
                Text("어디로 이동합니까:")
                Text("경기도 성남시 분당구")
                    .layoutPriority(1)
            }
            .font(.title)
            .lineLimit(1)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
                .environment(\.colorScheme, .dark)

            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
                .previewDisplayName("iPhone SE")
        }
    }
}
