//
//  models.swift
//  TaskTracker
//
//  Created by FCI on 28/10/26.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false

}
