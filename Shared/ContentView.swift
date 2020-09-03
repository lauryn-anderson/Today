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
        List(data.goals, id: \.id) { goal in
            GoalView(goal: goal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
