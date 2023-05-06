//
//  trekrApp.swift
//  trekr
//
//  Created by Jai  on 05/05/23.
//

import SwiftUI

@main
struct trekrApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location : Locations().primary)
                }
                .tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Disvcover")
                }
                NavigationView{
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Location")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
            
        }
    }
}
