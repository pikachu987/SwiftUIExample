//
//  CarStore.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/06.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
