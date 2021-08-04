//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI
import Combine

class DemoData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        
    }
    
    func updateData() {
        
    }
}

struct ContentView: View {
    @ObservedObject var demoData: DemoData
    
    var body: some View {
        Text("\(demoData.currentUser), count: \(demoData.userCount)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(demoData: DemoData())
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
        }
    }
}
