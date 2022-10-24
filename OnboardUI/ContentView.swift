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
        NavigationStack{
            VStack {
                Text("You are in the main app now!")
                    .padding()
            }
            .padding()
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $showOnboard) {
            OnboardingView(showOnboard: $showOnboard)
                .background(Color(.systemGray5))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
