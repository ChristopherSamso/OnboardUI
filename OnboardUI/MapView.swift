//
//  MapView.swift
//  OnboardUI
//
//  Created by Christopher Samso on 10/24/22.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    @Binding var showOnboard: Bool
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        NavigationStack{
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .accentColor(Color.pink)
                .onAppear {
                    if !showOnboard {
                        viewModel.checkIfLocationServicesEnabled()
                    }
                }
        }
        .fullScreenCover(isPresented: $showOnboard, onDismiss: {
            viewModel.checkIfLocationServicesEnabled()
        }) {
            OnboardingView(showOnboard: $showOnboard)
                .background(Color(.systemGray5))
        }
    }
}
