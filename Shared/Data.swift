//
//  Data.swift
//  Today
//
//  Created by Lauryn Anderson on 2020-09-02.
//

import Foundation

class Goal: ObservableObject, Identifiable {
    var title = "Goal"
    var time = 0
    var isComplete = false
}

class Data: ObservableObject {
    @Published var goals = [Goal(), Goal()]
}
