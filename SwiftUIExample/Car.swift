//
//  Car.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/06.
//

import Foundation

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}
