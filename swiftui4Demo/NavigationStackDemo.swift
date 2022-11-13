//
//  NavigationStackDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct NavigationStackDemo: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(1...10, id: \.self) { index in
                    NavigationLink {
                        Text("Item #\(index) Detail")
                    } label: {
                        Text("Item #\(index)")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Navigation Demo")
        }
    }
}

struct NavigationStackDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackDemo()
    }
}
