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
            Rectangle()
                .frame(width: 100, height: 100)
            
            Circle()
                .fill(Color.red)
                .frame(width: 250, height: 100)
            
            Capsule()
                .stroke(lineWidth: 10)
                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
            
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .bevel, dash: [10]))
                .foregroundColor(.blue)
                .frame(width: 200, height: 100)
            
            Ellipse()
                .stroke(style: StrokeStyle(lineWidth: 20, dash: [10, 5, 2], dashPhase: 10))
                .foregroundColor(.orange)
                .frame(width: 250, height: 100)
            
            
            Ellipse()
                .fill(Color.red)
                .overlay(Ellipse().stroke(Color.blue, lineWidth: 4).frame(width: 50, height: 30))
                .frame(width: 250, height: 100)
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
