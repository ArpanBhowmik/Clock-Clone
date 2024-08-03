//
//  ContentView.swift
//  Clock
//
//  Created by Arpan Bhowmik on 2/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WorldClockView()
                .tabItem {
                    Label("World Clock", systemImage: "globe")
                }
            
            Text("Alarms")
                .tabItem {
                    Label("Alarms", systemImage: "alarm.fill")
                }
            
            Text("Stopwatch")
                .tabItem {
                    Label("Stopwatch", systemImage: "stopwatch.fill")
                }
            
            Text("Timers")
                .tabItem {
                    Label("Timers", systemImage: "timer")
                }
        }
        .accentColor(.orange)
    }
}

#Preview {
    ContentView()
}
