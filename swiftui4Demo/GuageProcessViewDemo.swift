//
//  GuageProcessViewDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct GuageProcessViewDemo: View {
    @State private var currentStatus:Float = 0.0
    var body: some View {
        Gauge(value: currentStatus) {
            Text("status")
                .font(.footnote)
        } currentValueLabel: {
            Text("\(currentStatus * 100, specifier: "%.1f") %")
                .lineLimit(1)
        }
        .gaugeStyle (.accessoryCircularCapacity)
        .tint(.purple)
        .scaleEffect (3.0)
        .task {
            await increaseStatus()
        }
        
        
    }
    func increaseStatusBy10(){
        var newValue = round(currentStatus * 10 + 1)/10
        guard newValue <= 1 else {return}
        DispatchQueue.main.async {
            self.currentStatus = newValue
        }
    }
    func increaseStatus()async{
        for _ in 0...10{
            increaseStatusBy10()
            try? await Task.sleep(nanoseconds: 1_000_000_000)
        }
    }
}

struct GuageProcessViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        GuageProcessViewDemo()
    }
}
