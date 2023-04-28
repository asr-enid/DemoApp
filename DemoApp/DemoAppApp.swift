//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by Achim Schlosser on 27.04.23.
//

import SwiftUI

@main
struct DemoAppApp: App {
    
    @StateObject private var serviceViewModel = ServiceViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(serviceViewModel)
                .onAppear {
                    serviceViewModel.initializeNetIdService()
                }
        }
    }
}
