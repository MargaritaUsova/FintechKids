//
//  File.swift
//  FintechKids
//
//  Created by Михаил Прозорский on 27.03.2025.
//

import Foundation

class GoalModel: ObservableObject {
    @Published var name: String = ""
    @Published var goalSum: Int = 1
    @Published var level: Bool = false
    @Published var current: Int = 0
    @Published var image: String = "templateGoal"
    @Published var date: Date = Date.now
    
    var progress: Int {
        get {
            return Int(Double(current) / Double(goalSum) * 100)
        }
    }
    
    init(name: String = "", goalSum: Int, current: Int, level: Bool = false, image: String = "", date: Date = Date.now) {
        self.name = name
        self.goalSum = goalSum
        self.current = current
        self.level = level
        self.image = image
        self.date = date
    }
    
    init() { }
}
