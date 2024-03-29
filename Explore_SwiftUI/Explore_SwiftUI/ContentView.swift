//
//  ContentView.swift
//  Explore_SwiftUI
//
//  Created by Akshay Kumar on 25/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("**Your time is limited**, [so don’t waste](https://www.google.com) it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don ’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
            .fontWeight(.heavy)
            .font(.largeTitle)
            .foregroundColor(.green)
            .multilineTextAlignment(.leading)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(10)
            .padding()
            .rotation3DEffect(.degrees(20), axis: (x: 1, y: 0, z: 0))
            //.shadow(color: .gray, radius: 2, x: 0, y: 15)
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
