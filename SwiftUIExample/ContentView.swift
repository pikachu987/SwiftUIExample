//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var temp = "gggg ee gg"
        temp += "lllll"
        let tempView = TempView()
        return VStack {
            Text("Hello, world!")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.orange)
                .onAppear(perform: {
                    
                })
                .onDisappear(perform: {
                    
                })
            Text("Good bye")
            HStack {
                Text("aaaaa")
                    .border(Color.red, width: 2)
                    .padding(16)
                Text("bbbbb")
                    .padding(20)
                    .border(Color.red, width: 5)
                VStack {
                    Text("ccc")
                    Text("dddd")
                    Text("eeee") + Text("ffff")
                    VStack {
                        Text(temp)
                            .font(.system(size: 19))
                    }
                    TempView()
                }
                tempView
            }
            Button(action: buttonPressedAction) {
                Text("click!")
            }
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button(action: {
                
            }, label: {
                Text("Button!!!!")
            })
            MyVStack {
                Text("T1")
                Text("T2")
                HStack {
                    Text("T3")
                    Text("T4")
                }
            }
        }
    }
    
    func buttonPressedAction() {
        
    }
}

struct TempView: View {
    var body: some View {
        HStack {
            Text("aaa")
            Text("bbb")
            Text("cccc")
                .modifier(DefaultTitle())
            VStack {
                Text("ddd")
                Text("eee")
                Text("fff")
            }
        }
    }
}

struct DefaultTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .shadow(color: .green, radius: 2, x: 2, y: 0.1)
            .background(Color.yellow)
            .foregroundColor(.orange)
    }
}

struct MyVStack<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12, content: {
            content()
        })
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
                .environment(\.colorScheme, .dark)

            ContentView()
                .previewDevice("iPhone SE (2nd generation)")
                .previewDisplayName("iPhone SE")
        }
    }
}
