//
//  Todo.swift
//  Todo App
//
//  Created by Dana Al Fanek on 03/08/2023.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID()
    var title: String
    var subtitle = ""
    var isCompleted = false
    
}
