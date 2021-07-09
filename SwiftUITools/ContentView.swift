//
//  ContentView.swift
//  SwiftUITools
//
//  Created by Holger Mayer on 09.07.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                NavigationLink("Buttons", destination: ButtonsView())
                    .padding()
            }
            .navigationTitle("SwiftUITools")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
