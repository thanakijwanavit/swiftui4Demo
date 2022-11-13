//
//  GridDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/12/22.
//

import SwiftUI

struct GridDemo: View {
    var body: some View {
        Grid {
            GridRow {
                IconView(systemName: "trash")
                IconView(systemName: "trash")
            }

            GridRow {
                IconView(systemName: "trash")
                    .gridCellColumns(2)
            }
        }
    }
    
    struct IconView: View{
        var systemName:String
        var body: some View{
            Image(systemName: systemName)
                .resizable()
                .scaledToFit()
        }
    }
}

struct GridDemo_Previews: PreviewProvider {
    static var previews: some View {
        GridDemo()
    }
}
