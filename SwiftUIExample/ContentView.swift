//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .crossAlignment) {
            Circle()
                .foregroundColor(.purple)
                .alignmentGuide(.crossAlignment, computeValue: { dimension in
                    dimension[VerticalAlignment.center]
                })
                .frame(width: 100, height: 100)
            VStack(alignment: .center, content: {
                Rectangle()
                    .foregroundColor(.green)
                    .alignmentGuide(.crossAlignment, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
            })
        }
    }
}

extension VerticalAlignment {
    private enum CrossAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
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
