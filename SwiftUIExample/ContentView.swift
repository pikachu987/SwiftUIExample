//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(carStore.cars) { car in
                    ListCell(car: car)
                }
                .onDelete(perform: { indexSet in
                    carStore.cars.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    carStore.cars.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(
                                    destination: AddNewCar(carStore: carStore),
                                    label: {
                                        Text("Add")
                                            .foregroundColor(.blue)
                                    }),
                                trailing: EditButton())
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

struct ListCell: View {
    var car: Car

    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack {
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
    }
}
