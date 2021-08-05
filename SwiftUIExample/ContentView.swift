//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .oneThird, content: {
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(.oneThird, computeValue: { dimension in
                    dimension[VerticalAlignment.top]
                })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.blue)
                .alignmentGuide(.oneThird, computeValue: { dimension in
                    dimension[VerticalAlignment.bottom]
                })
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.orange)
                .alignmentGuide(.oneThird, computeValue: { dimension in
                    dimension[VerticalAlignment.top]
                })
                .frame(width: 50, height: 200)
        })
    }
}

extension VerticalAlignment {
    private enum OneThird: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context.height / 3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
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
