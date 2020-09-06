//
//  Data.swift
//  Today
//
//  Created by Lauryn Anderson on 2020-09-02.
//

import Foundation

struct Goal: Identifiable {
    var title = "Goal"
    var time = Date()
    var isComplete = false
    var id = UUID()
}

class Data: ObservableObject {
    @Published var goals = [Goal(), Goal()]
}
