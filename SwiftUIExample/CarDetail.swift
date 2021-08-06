//
//  CarDetail.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/06.
//

import SwiftUI

struct CarDetail: View {
    let selectedCar: Car
    
    var body: some View {
        Text("Hello, world")
    }
}

struct CarDetail_Previews: PreviewProvider {
    static var previews: some View {
        CarDetail(selectedCar: carData[0])
    }
}
