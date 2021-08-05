//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .custom) {
            Rectangle()
                .foregroundColor(.green)
                .alignmentGuide(HorizontalAlignment.customHorizontal, computeValue: { dimension in
//                    dimension[.trailing]
                    dimension[.leading]
                })
                .alignmentGuide(VerticalAlignment.customVertical, computeValue: { dimension in
                    dimension[.bottom]
                })
                .frame(width: 100, height: 100)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(HorizontalAlignment.customHorizontal, computeValue: { dimension in
//                    dimension[HorizontalAlignment.center]
                    dimension[HorizontalAlignment.trailing]
                })
                .alignmentGuide(VerticalAlignment.customVertical, computeValue: { dimension in
//                    dimension[.top]
                    dimension[VerticalAlignment.center]
                })
                .frame(width: 100, height: 100)
            Circle()
                .foregroundColor(.orange)
                .alignmentGuide(HorizontalAlignment.customHorizontal, computeValue: { dimension in
                    dimension[.leading]
                })
                .alignmentGuide(VerticalAlignment.customVertical, computeValue: { dimension in
//                    dimension[.bottom]
                    dimension[.top]
                })
                .frame(width: 100, height: 100)
        }
    }
}

extension HorizontalAlignment {
    private enum CustomHorizontal: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    static let customHorizontal = HorizontalAlignment(CustomHorizontal.self)
}

extension VerticalAlignment {
    private enum CustomVertical: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.center]
        }
    }
    static let customVertical = VerticalAlignment(CustomVertical.self)
}

extension Alignment {
    static let custom = Alignment(horizontal: HorizontalAlignment.customHorizontal, vertical: VerticalAlignment.customVertical)
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
