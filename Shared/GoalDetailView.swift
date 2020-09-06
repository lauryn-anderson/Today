//
//  GoalDetailView.swift
//  Today
//
//  Created by Lauryn Anderson on 2020-09-03.
//

import SwiftUI

struct GoalDetailView: View {
    @ObservedObject var data: Data
    var goal: Goal
    var index: Int {
        data.goals.firstIndex(where: { $0.id == goal.id })!
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Title", text: $data.goals[index].title)
                    .font(.largeTitle)
                Toggle(isOn: $data.goals[index].isComplete) {
                    Text("Complete Goal")
                }
                    .labelsHidden()
            }
            DatePicker(selection: $data.goals[index].time, in: Date()..., displayedComponents: .hourAndMinute) {
                Text("Reminder time:")
            }
            Spacer()
        }
        .padding()
    }
}

struct GoalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDetailView(data: Data(), goal: Data().goals[0])
    }
}
