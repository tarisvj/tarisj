//
//  ContentView.swift
//  ExpenseTrackerSwiftUI
//
//  Created by Taris Jackson on 5/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardTabView()
                .tabItem {
                    VStack {
                        Text("Expense Dashboard")
                        Image(systemName: "chart.pie")
                    }
            }
            .tag(0)
            
            LogsTabView()
                .tabItem {
                    VStack {
                        Text("Expense Logs")
                        Image(systemName: "tray")
                    }
            }
            .tag(1)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
