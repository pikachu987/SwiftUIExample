//
//  SwiftUIView.swift
//  SwiftUIKitExample
//
//  Created by GwanhoKim on 2021/08/12.
//

import SwiftUI

struct SwiftUIView: View {
    var text: String
    
    var body: some View {
        VStack {
            Text(text)
            HStack {
                Image(systemName: "smiley")
                Text("This is a SwiftUI View")
            }
        }
        .font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Sample")
    }
}
