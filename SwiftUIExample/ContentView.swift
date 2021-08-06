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
        NavigationView {
            List {
                Section(header: Text("Setting")) {
                    Toggle(isOn: $toggleStatus, label: {
                        Text("Allow Notification")
                    })
                }
                Section(header: HStack {
                    Text("To Do Task")
                    Button("Button") {
                        
                    }
                }, footer: Text("Footer")) {
                    ForEach(listData) { item in
                        HStack {
                            NavigationLink(destination: Text(item.task)) {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: { indexSet in
                        
                    })
                    .onMove(perform: { indices, newOffset in
                        
                    })
                }
            }
            .navigationTitle(Text("To Do List"))
            .navigationBarItems(trailing: Button(action: addTask, label: {
                EditButton()
            }))
        }
    }
    
    func addTask() {
        
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
