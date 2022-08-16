//
//  main.swift
//  ToDoList
//
//  Created by Simeon on 29.07.22.
//

import Foundation


struct Task {
    
    var description: String
    var priority: Int
    var isDone: Bool
}

struct ListOfTasks {
    
    var listOfTasks: [Task] = []
    
    mutating func addTasks(task: Task) {
        listOfTasks.append(task)
    }
    mutating func removeTask(at id: Int) {
        listOfTasks.remove(at: id - 1)
    }
    mutating func printMyList() {
        for index in listOfTasks.startIndex..<listOfTasks.count {
            print(listOfTasks[index])
            print("")
            print("-----------------")
            print("")
        }
    }
}
var task = Task(description: "programming", priority: 1, isDone: true)
var task2 = Task(description: "cycling", priority: 2, isDone: false)
var task3 = Task(description: "BJJ", priority: 3, isDone: false)

var newList = ListOfTasks()
newList.addTasks(task: task2)
newList.addTasks(task: task3)
newList.addTasks(task: task)

newList.printMyList()
newList.removeTask(at: 2)
newList.printMyList()











    
    
 

