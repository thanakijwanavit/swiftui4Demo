//
//  ContentView.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            GuageProcessViewDemo()
                .tabItem {
                    Label("progress", systemImage: "percent")
                }
            ChartDemo()
                .tabItem {
                    Label("chart", systemImage: "chart.bar")
                }
            BottomSheetDemo()
                .tabItem {
                    Label("bottomSheet", systemImage: "newspaper")
                }
            MultiDatePickerDemo()
                .tabItem {
                    Label("date", systemImage: "calendar")
                }
            NavigationStackDemo()
                .tabItem {
                    Label("stack", systemImage: "film.stack")
                }
            NavigationStack2Demo()
                .tabItem {
                    Label("stack2", systemImage: "film.stack")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
