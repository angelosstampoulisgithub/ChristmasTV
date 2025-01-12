//
//  ContentView.swift
//  ChristmasTV
//
//  Created by Angelos Staboulis on 21/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Αρχική")
                }
            Chirstmas(index: 0)
                .tabItem {
                    Image("folder")
                    Text("Χριστούγεννα")
            }
            Multimedia(scene: .init())
                .tabItem {
                    Image("media")
                    Text("Πολυμέσα")
            }
            Traditions(index: 0)
                .tabItem {
                    Image("miracle")
                    Text("Εθιμα & Παραδόσεις")
            }
        }
    }
}

#Preview {
    ContentView()
}
