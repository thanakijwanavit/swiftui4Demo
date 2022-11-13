//
//  Chart.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI
import Charts

#if canImport(Charts)
struct ChartDemo: View {
    let weekdays = Calendar.current.shortWeekdaySymbols
    let steps = [ 10531, 6019, 7200, 8311, 7403, 6503, 9230 ]
    
    var body: some View {
        Chart {
            ForEach(weekdays.indices, id: \.self){ index in
                BarMark(
                    x: .value("key", weekdays[index]),
                    y: .value("value", steps[index])
                )
                .annotation {
                    Text("\(steps[index])")
                }
                .foregroundStyle(by: .value("key", weekdays[index]))
                
                
                LineMark(
                    x: .value("key", weekdays[index]),
                    y: .value("value", steps[index])
                )
                .lineStyle (StrokeStyle(lineWidth: 4.0))
                .foregroundStyle(Color.blue)
            }
        }
        .padding()
    }
}

struct ChartDemo_Previews: PreviewProvider {
    static var previews: some View {
        ChartDemo()
    }
}
#endif
