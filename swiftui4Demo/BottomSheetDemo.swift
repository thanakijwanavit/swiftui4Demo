//
//  BottomSheetDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import Foundation
import SwiftUI

struct BottomSheetDemo: View {
    @State private var showSheet = false
    var body: some View {
        VStack {
            Text("bottom sheet demo")
                .font(.title)
                .padding()
            Button("Show Bottom Sheet") {
                showSheet.toggle()
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                Text("This is the resizable bottom sheet.")
                    .presentationDetents([.medium, .large, .fraction(0.75), .fraction(0.25)])
                    .presentationDragIndicator(.visible)

            }
            Spacer()
        }
    }
}
struct BottomSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetDemo()
    }
}
