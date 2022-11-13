//
//  MultiDatePickerDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct MultiDatePickerDemo: View {
    @State private var selectedDates: Set<DateComponents> = []
    var body: some View {
        MultiDatePicker("Choose your preferred dates", selection: $selectedDates)
            .frame(height: 300)
    }
}

struct MultiDatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        MultiDatePickerDemo()
    }
}
