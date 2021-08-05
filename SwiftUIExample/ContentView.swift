//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 120, height: 50)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(.leading, computeValue: { dimension in
//                    return dimension.width / 3
                    return dimension[HorizontalAlignment.trailing] + 20
                })
                .frame(width: 200, height: 50)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 180, height: 50)
        })
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
