//
//  AddNewCar.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/06.
//

import SwiftUI

struct AddNewCar: View {
    @ObservedObject var carStore: CarStore
    
    @State var isHybrid = false
    @State var name: String = ""
    @State var description: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Car Details")) {
                Image(systemName: "car.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                DataInput(title: "Model", userInput: $name)
                DataInput(title: "Description", userInput: $description)
                Toggle(isOn: $isHybrid, label: {
                    Text("Hybrid")
                        .font(.headline)
                })
                .padding()
            }
            
            Button(action: {
                let newCar = Car(id: UUID().uuidString,
                                 name: name,
                                 description: description,
                                 isHybrid: isHybrid,
                                 imageName: "tesla_model_3")
                carStore.cars.append(newCar)
            }, label: {
                Text("Add Car")
            })
        }
    }
}

struct AddNewCar_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCar(carStore: CarStore(cars: carData))
    }
}
