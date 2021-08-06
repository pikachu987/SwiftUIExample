//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

var listData: [ToDoItem] = [
    ToDoItem(task: "List Test 1", imageName: "trash.circle.fill"),
    ToDoItem(task: "List Test 2", imageName: "person.2.fill"),
    ToDoItem(task: "List Test 3", imageName: "car.fill"),
]

struct ContentView: View {
    @State var toggleStatus = true
    
    var body: some View {
        List {
            Toggle(isOn: $toggleStatus, label: {
                Text("Allow Notification")
            })
            ForEach(listData) { item in
                HStack {
                    Image(systemName: item.imageName)
                    Text(item.task)
                }
            }
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
