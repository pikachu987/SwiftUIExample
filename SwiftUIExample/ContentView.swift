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
            Path { path in
                path.move(to: .init(x: 10, y: 0))
                path.addLine(to: CGPoint(x: 10, y: 350))
                path.addLine(to: CGPoint(x: 300, y: 300))
                path.closeSubpath()
            }
            
            Path { path in
                path.move(to: .init(x: 10, y: 0))
                path.addLine(to: CGPoint(x: 10, y: 350))
                path.addLine(to: CGPoint(x: 300, y: 300))
            }
            .fill(Color.blue)
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
