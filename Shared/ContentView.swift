//
//  ContentView.swift
//  Shared
//
//  Created by Lauryn Anderson on 2020-09-02.
//

import SwiftUI

struct ContentView: View {
    var data = Data()
    
    var body: some View {
        NavigationView {
            List(data.goals) { goal in
                NavigationLink(destination: GoalDetailView(data: data, goal: goal)) {
                    GoalView(data: data, goal: goal)
                }
            }
            .navigationBarTitle("Today")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
