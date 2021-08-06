//
//  DataInput.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/06.
//

import SwiftUI

struct DataInput: View {
    var title: String
    @Binding var userInput: String
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, content: {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        })
        .padding()
    }
}
