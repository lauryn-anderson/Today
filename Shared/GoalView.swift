//
//  GoalView.swift
//  Today
//
//  Created by Lauryn Anderson on 2020-09-02.
//

import SwiftUI

struct GoalView: View {
    @ObservedObject var goal: Goal
    
    var body: some View {
        HStack {
            Text(goal.title)
            Spacer()
            Text(goal.time.description)
            Toggle(isOn: $goal.isComplete) {
                Text("Complete Goal")
            }
                .labelsHidden()
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GoalView(goal: Goal())
        }
    }
}
