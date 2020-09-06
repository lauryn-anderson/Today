//
//  GoalView.swift
//  Today
//
//  Created by Lauryn Anderson on 2020-09-02.
//

import SwiftUI

struct GoalView: View {
    @ObservedObject var data: Data
    var goal: Goal
    var index: Int {
        data.goals.firstIndex(where: { $0.id == goal.id })!
    }
    
    var body: some View {
        HStack {
            Toggle(isOn: $data.goals[index].isComplete) {
                Text("Complete Goal")
            }
                .labelsHidden()
            Text(goal.title)
            Spacer()
            Text(goal.time, style: .time)
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GoalView(data: Data(), goal: Data().goals[0])
        }
    }
}
