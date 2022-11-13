//
//  IpadTableDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/11/22.
//

import SwiftUI

/// change your sim to ipad 12.9 inch

struct IpadTableDemo: View {
    private let members: [Staff] = [
        .init(name: "Vanessa Ramos", position: "Software Engineer", phone: "2349-233-323"),
        .init(name: "Margarita Vicente", position: "Senior Software Engineer", phone: "2332-333-423"),
        .init(name: "Yara Hale", position: "Development Manager", phone: "2532-293-623"),
        .init(name: "Carlo Tyson", position: "Business Analyst", phone: "2399-633-899"),
        .init(name: "Ashwin Denton", position: "Software Engineer", phone: "2741-333-623")
    ]
    var body: some View {
        Table(members) {
            TableColumn("Name", value: \.name)
            TableColumn("Position", value: \.position)
            TableColumn("Phone", value: \.phone)
        }
        
    }
    
    
    struct Staff:Identifiable{
        var id = UUID()
        var name: String
        var position: String
        var phone: String
        
    }
}

struct IpadTableDemo_Previews: PreviewProvider {
    static var previews: some View {
        IpadTableDemo()
    }
}
