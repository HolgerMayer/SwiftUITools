//
//  ButtonsView.swift
//  SwiftUITools
//
//  Created by Holger Mayer on 09.07.21.
//

import SwiftUI

struct ButtonsView: View {
    let possibleColors  : [Color] = [.white,.red,.blue,.orange]
    @State var currentColor : Int = 0
    @State var bgColor : Color = .white
    
    var body: some View {
        HStack {
            VStack {
                ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green,completion: {
                    print("Add pressed")
                })
                ImageTextButton(title:"",sfSymbolName: "plus",backgroundColor: .green,completion: {
                    print("Add pressed")
                })
                ImageTextButton(title:"Bookmark",sfSymbolName: "bookmark.fill",color:.green,backgroundColor: .clear,completion: {
                    print("Bookmark pressed")
                }).overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 2.0).foregroundColor(.green)
                )
                ImageTextButton(title:"",sfSymbolName: "plus",color:.green,backgroundColor: .clear,completion: {
                    print("Add pressed")
                })
                
                Spacer()
                ImageTextButton(title:"Next color",sfSymbolName: "eyedropper",backgroundColor: .green,completion: {
                    currentColor = currentColor + 1
                    if currentColor >= possibleColors.count {
                        currentColor = 0
                    }
                    bgColor = possibleColors[currentColor]
                })
                
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        ).background(bgColor)
        .navigationTitle("Buttons")
        
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
