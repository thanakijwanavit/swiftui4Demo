////
////  ChangeLayoutDemo.swift
////  swiftui4Demo
////
////  Created by Thanakij Wanavit on 11/12/22.
////
//
//import SwiftUI
//
//
//struct ChangeLayoutDemo: View {
// 
//    @State private var changeLayout = false
// 
//    var body: some View {
//        let layout = AnyLayout(HStack(spacing: 0){})
// 
// 
//        layout {
//            Image("macbook-1")
//                .resizable()
//                .scaledToFill()
//                .frame(maxWidth: 300, maxHeight: 200)
//                .clipped()
// 
//            Image("macbook-2")
//                .resizable()
//                .scaledToFill()
//                .frame(maxWidth: 300, maxHeight: 200)
//                .clipped()
// 
//        }
//        .animation(.default, value: changeLayout)
//        .onTapGesture {
//            changeLayout.toggle()
//        }
// 
//    }
//}
//
//struct ChangeLayoutDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        ChangeLayoutDemo()
//    }
//}
