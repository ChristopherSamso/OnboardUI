//
//  Onboarding.swift
//  OnboardUI
//
//  Created by Christopher Samso on 10/24/22.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboard: Bool
    var body: some View {
        TabView {
            PageView(title: "Push Notifications", subtitle: "Enable notifications to stay up to date with friends.", imageName: "bell", showDismiss: false, showOnboard: $showOnboard)
            
            PageView(title: "Bookmarks", subtitle: "Save your favorite pieces of content", imageName: "bookmark", showDismiss: false, showOnboard: $showOnboard)
            
            PageView(title: "Flights", subtitle: "Book flights with ease.", imageName: "airplane", showDismiss: false, showOnboard: $showOnboard)
            
            PageView(title: "Home", subtitle: "Go home wherever you might be", imageName: "house", showDismiss: true, showOnboard: $showOnboard)
        }
        .tabViewStyle(.page)
    }
}

struct PageView: View {
    
    let title: String
    let subtitle: String
    let imageName: String
    let showDismiss: Bool
    @Binding var showOnboard: Bool
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .padding()
            
            Text(title)
                .font(.system(size: 32))
                .padding()
            
            Text(subtitle)
                .font(.system(size: 24))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showDismiss {
                Button {
                    showOnboard.toggle()
                } label: {
                    Text("Get started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                }
            }
        }
    }
}

