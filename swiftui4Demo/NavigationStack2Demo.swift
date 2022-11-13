//
//  NavigationStack2Demo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct NavigationStack2Demo: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: "Text Item") {
                    Text("Text Item")
                }
                NavigationLink(value: Color.purple) {
                    Text("Purple color")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Navigation Demo")
            .navigationDestination(for: Color.self) { item in
                item.clipShape(Circle())
                    .padding()
            }
            .navigationDestination(for: String.self) { item in
                Text("This is the detail view for \(item)")
            }
        }
    }
}

struct NavigationStack2Demo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack2Demo()
    }
}
