//
//  SecondView.swift
//  Learn-SwiftUI
//
//  Created by Akshay Kumar on 03/06/22.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
      NavigationLink("Navigate to third view", destination: ThirdView())
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
