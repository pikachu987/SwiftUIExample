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
            MyUILabel(text: "Hello world")
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

struct MyUILabel: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: Context) -> some UILabel {
        let label = UILabel()
        label.text = text
        return label
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
