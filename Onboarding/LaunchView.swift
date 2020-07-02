//
//  LaunchView.swift
//  Onboarding
//
//  Created by Clément Levoux on 02/07/2020.
//  Copyright © 2020 Clement Levoux. All rights reserved.
//

import SwiftUI

struct LaunchView: View {
    @EnvironmentObject var viewlaunch: ViewLaunch

    var body: some View {
        VStack {
            if viewlaunch.currentPage == "onBoardingView" {
                OnboardingView()
            } else if viewlaunch.currentPage == "ContentView" {
                ContentView()
            }
        }
    }
}

class ViewLaunch: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "LaunchBefore") {
                currentPage = "onBoardingView"
        } else {
            currentPage = "ContentView"
        }
    }
    @Published var currentPage: String
}
