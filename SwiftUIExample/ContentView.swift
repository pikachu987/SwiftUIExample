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
            Image(systemName: "hand.point.right.fill")
                .frame(width: 80, height: 80)
                .gesture(
                    TapGesture()
                        .onEnded { _ in
                            print("Tapped")
                        }
                )
            
            Spacer()
            
            Image(systemName: "hand.point.right.fill")
                .frame(width: 80, height: 80)
                .gesture(
                    TapGesture(count: 2)
                        .onEnded { _ in
                            print("Double Tapped")
                        }
                )
            
            Spacer()
            
            Image(systemName: "hand.point.right.fill")
                .frame(width: 80, height: 80)
                .gesture(
                    LongPressGesture()
                        .onEnded { _ in
                            print("Long Press")
                        }
                )
            
            Spacer()
            
            Image(systemName: "hand.point.right.fill")
                .frame(width: 80, height: 80)
                .gesture(
                    LongPressGesture(minimumDuration: 10, maximumDistance: 25)
                        .onEnded { _ in
                            print("Long Press Duration")
                        }
                )
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
