//
//  ButtonsView.swift
//  SwiftUITools
//
//  Created by Holger Mayer on 09.07.21.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        VStack {
            ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green,completion: {
                print("Add pressed")
            })
            ImageTextButton(title:"",sfSymbolName: "plus",backgroundColor: .green,completion: {
                print("Add pressed")
            })
            ImageTextButton(title:"Bookmark",sfSymbolName: "bookmark.fill",color:.green,backgroundColor: .white,completion: {
                print("Bookmark pressed")
            }).overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 2.0).foregroundColor(.green)
            )
            ImageTextButton(title:"",sfSymbolName: "plus",color:.green,backgroundColor: .white,completion: {
                print("Add pressed")
            })

            Spacer()
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
