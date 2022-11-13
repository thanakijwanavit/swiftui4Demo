//
//  ShareLinkDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

struct ShareLinkDemo: View {
    private let url = URL(string: "https://www.appcoda.com")!
    var body: some View {
        ShareLink(item: url){
            Label("Share", systemImage: "link.icloud")
        }
            .presentationDetents([.medium, .large])
            .presentationDragIndicator(.visible)
    }
}

struct ShareLinkDemo_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkDemo()
    }
}
