//
//  SecondView.swift
//  SwiftUIExample
//
//  Created by GwanhoKim on 2021/08/05.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(timerData: TimerData())
    }
}
