//
//  ContentView.swift
//  MobileWeather
//
//  Created by Akshay Kumar on 06/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var location: String = ""
    var body: some View {
        NavigationView {
        VStack {
        HStack() {
            TextField("Enter Location", text: $location)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button {
              getWeatherForecast(for: location)
            }label: {
               Image(systemName: "magnifyingglass.circle.fill")
            }
         } // End of Hstack
        .padding()
            Spacer()
            
        } //end of vstack
        .padding(.horizontal)
        .navigationTitle("Weather App")
        }
    }
    func getWeatherForecast(for location: String) {
        
         Geocoder.getCordinates(cityName: location)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
