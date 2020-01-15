    //
//  ContentView.swift
//  Bullseye
//
//  Created by Erik Elliott on 1/14/20.
//  Copyright © 2020 Erik Elliott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to my first App!")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.purple)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
