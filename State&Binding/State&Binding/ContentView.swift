//
//  ContentView.swift
//  State&Binding
//
//  Created by Akshay Kumar on 21/06/22.
//

import SwiftUI

struct ContentView: View {
  @State var placeholder = "I am a placeholder"
    var body: some View {
        Text(placeholder)
            .padding()
        
        CustomButton(placeholder: $placeholder)
        CustomButton1(placeholder: $placeholder)
    }
}

struct CustomButton: View {
    @Binding var placeholder: String
    var body: some View {
        Button(placeholder) {self.placeholder = "I am learning swiftui"}
    }
}
struct CustomButton1: View {
    @Binding var placeholder: String
    var body: some View {
        Button(placeholder) {self.placeholder = "I am flutter developer"}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
