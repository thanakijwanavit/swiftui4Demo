//
//  ViewThatFitsDemo.swift
//  swiftui4Demo
//
//  Created by Thanakij Wanavit on 11/12/22.
//

import SwiftUI


struct ViewThatFitsDemo: View {
    var body: some View {
        ViewThatFits {
            VStack {
                Button(action: {}) {
                    Text("Buy")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)

                Button(action: {}) {
                    Text("Cancel")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 200)


            HStack {
                Button(action: {}) {
                    Text("Buy")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding(.leading)

                Button(action: {}) {
                    Text("Cancel")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.trailing)
            }
            .frame(maxHeight: 100)

        }
    }
}

struct ViewThatFitsDemo_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ViewThatFitsDemo()
                .frame(height: 99)
            ViewThatFitsDemo()
                .frame(height: 201)
        }
        
    }
}
