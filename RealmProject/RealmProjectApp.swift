//
//  RealmProjectApp.swift
//  RealmProject
//
//  Created by Karin Prater on 12.03.22.
//

import SwiftUI

@main
struct RealmProjectApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                ContentView()
                    .tabItem {
                        Text("Main")
                    }
                
                ItemResultView()
                    .tabItem {
                        Text("Results")
                    }
                
            }
        }
    }
}
