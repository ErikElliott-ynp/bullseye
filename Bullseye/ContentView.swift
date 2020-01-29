    //
//  ContentView.swift
//  Bullseye
//
//  Created by Erik Elliott on 1/14/20.
//  Copyright © 2020 Erik Elliott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var knockKnockIsVisibile: Bool = false
    var body: some View {
        VStack {
            Text("Welcome to my first App!")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.orange)
            Button(action: {
                print("Button pressed!")
                self.alertIsVisible = true
            }) {
                Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.purple)
            }
            .alert(isPresented: $alertIsVisible) { () -> Alert in
                return Alert(title: Text("Hello There (;"), message: Text("This is my first Pop-up"), dismissButton: .default(Text("Jawesome!")))
            }
            
            Button(action: {
                print("Who's There? Hike. Hike Who? I didn't know you like Japanese poetry!")
                self.knockKnockIsVisibile = true
            }) {
                Text("Knock Knock!")
            }
            .alert(isPresented: $knockKnockIsVisibile) {
                () -> Alert in
                return Alert(title: "Jokes and jokes", message: "Is this it", dismissButton: <#T##Alert.Button?#>)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
