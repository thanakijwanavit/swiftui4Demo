//
//  ColorfulSymbolDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/12/22.
//

import SwiftUI

struct ColorfulSymbolDemo: View {
    var body: some View {
        
        Image(systemName: "trash")
            .frame(width: 100, height: 100)
            .background(in: Circle())
            .backgroundStyle(.purple.gradient)
            .foregroundStyle(.white.shadow(.drop(radius: 1, y: 3.0)))
            .font(.system(size: 50))
    }
}

struct ColorfulSymbolDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorfulSymbolDemo()
            .previewLayout(.sizeThatFits)
    }
}
