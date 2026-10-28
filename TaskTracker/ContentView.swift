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
        Task(title: "Learn Swift", isCompleted: false),
        Task(title: "Build an App", isCompleted: true),
        Task(title: "Deploy to App Store", isCompleted: false),
    ]
    @State private var newTaskTitle: String = ""

    var body: some View {
        VStack {
            Text("Task Tracker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)

            // Input for new task
            HStack {
                TextField("Enter new task", text: $newTaskTitle)
                    .textFieldStyle(.roundedBorder)
                Button("Add") {
                    addTask()
                }.buttonStyle(.borderedProminent)
                    .disabled(newTaskTitle.isEmpty)
            }
            .padding()

            // List of Tasks
            List {
                ForEach(tasks) { task in
                    HStack {
                        Text(task.title).strikethrough(task.isCompleted)
                        Spacer()
                        if task.isCompleted {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        }
                    }.onTapGesture {
                        toggleTask(task)
                    }
                }
            }

        }
    }

    private func addTask() {
        guard !newTaskTitle.isEmpty else { return }
        let newTask = Task(title: newTaskTitle, isCompleted: false)
        tasks.append(newTask)
        newTaskTitle = ""
    }

    private func toggleTask(_ task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }
}

#Preview {
    ContentView()
}
