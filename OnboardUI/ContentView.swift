//
//  ContentView.swift
//  OnboardUI
//
//  Created by Christopher Samso on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showOnboard") var showOnboard: Bool = true
    var body: some View {
      MapView(showOnboard: $showOnboard)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
