//
//  ContentView.swift
//  Learn-SwiftUI
//
//  Created by Akshay Kumar on 03/06/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var user:User = User()
    var body: some View {
        NavigationView {
            VStack(alignment:.center, spacing: 10) {
                Text("username-->\(user.name)")
                TextField("UserName", text: $user.name).padding()
                NavigationLink("Navigate to second view", destination: SecondView())
            }
        }.environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
