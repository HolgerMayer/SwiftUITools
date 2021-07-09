//
//  ImageTextButton.swift
//  SwiftUITools
//
//  Created by Holger Mayer on 09.07.21.
//

import SwiftUI

struct ImageTextButton: View {
    var title : String = "Delete"
    var sfSymbolName : String = "trash"
    var color : Color = .white
    var backgroundColor : Color = .red
    var completion : (()->Void)? = nil
    
    var body: some View {
        Button(action: {
            guard let completion = completion else {
                return
            }
            completion()
        }) {
            HStack {
                Image(systemName: sfSymbolName)
                    .font(.title)
                if !title.isEmpty {
                    Text(title)
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .padding()
            .foregroundColor(color)
            .background(backgroundColor)
            .cornerRadius(40)
        }
    }
}

struct ImageTextButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ImageTextButton()
                ImageTextButton(title:"Add")
                ImageTextButton(title:"",sfSymbolName: "plus")
               ImageTextButton(title:"Add",sfSymbolName: "plus")
                ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green)
                ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green,completion: {
                    print("Add pressed")
                })
            }
            .preferredColorScheme(.light)
            VStack {
                ImageTextButton()
                ImageTextButton(title:"Add")
                ImageTextButton(title:"",sfSymbolName: "plus")
              ImageTextButton(title:"Add",sfSymbolName: "plus")
                ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green)
                ImageTextButton(title:"Add",sfSymbolName: "plus",backgroundColor: .green,completion: {
                    print("Add pressed")
                })
            }
            .preferredColorScheme(.dark)
        }
    }
}
