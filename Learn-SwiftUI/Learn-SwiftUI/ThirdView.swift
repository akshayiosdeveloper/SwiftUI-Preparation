//
//  ThirdView.swift
//  Learn-SwiftUI
//
//  Created by Akshay Kumar on 03/06/22.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user: User
    var body: some View {
        Text("logged user\(user.name)")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
