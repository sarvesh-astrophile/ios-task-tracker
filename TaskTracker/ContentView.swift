//
//  ContentView.swift
//  TaskTracker
//
//  Created by FCI on 28/10/26.
//

import SwiftUI

struct ContentView: View {
    @State private var taskCount: Int = 0
    @State private var tasks: [Task] = [
        Task(title: "Learn Swift"),
        Task(title: "Build an App"),
        Task(title: "Deploy to App Store"),
    ]
    @State private var newTaskTitle: String = ""

    var body: some View {
        VStack {
            Text("Task Tracker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)

            // List of Tasks
            List {
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title)
                        Spacer()
                        if task.isCompleted {
                            Image(systemName: "checkmark.ci`rcle.fill")
                                .foregroundColor(.green)
                        }
                    }
                }
            }

        }
    }
}

#Preview {
    ContentView()
}
