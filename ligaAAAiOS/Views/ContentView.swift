//
//  ContentView.swift
//  ligaAAAiOS
//
//  Created by IGNACIO HERNAIZ IZQUIERDO on 21/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("home", systemImage: "house.fill")
                }
            
            CalendarView()
                .tabItem {
                    Label("calendar", systemImage: "calendar")
                }
            
            StatisticsView()
                .tabItem {
                    Label("statistics", systemImage: "figure.soccer")
                }
            
            InfoView()
                .tabItem {
                    Label("info", systemImage: "info.bubble")
                }
        }
    }
}

#Preview {
    ContentView()
}
