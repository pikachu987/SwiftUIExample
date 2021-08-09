//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple])
    
    var body: some View {
        VStack {
            Circle()
                .fill(RadialGradient(gradient: colors, center: .center, startRadius: 0, endRadius: 130))
                .frame(width: 140, height: 140)
            
            Circle()
                .fill(AngularGradient(gradient: colors, center: .center))
                .frame(width: 100, height: 100)
            
            Circle()
                .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 100, height: 100)
            
            MyShape()
                .fill(RadialGradient(gradient: colors, center: .center, startRadius: 0, endRadius: 100))
                .frame(width: 100, height: 100)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

struct MyShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .init(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: .init(x: rect.minX, y: rect.maxY), control: .init(x: rect.midX, y: rect.midY))
        path.addLine(to: .init(x: rect.minX, y: rect.maxY))
        path.addLine(to: .init(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
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
