//
//  ContentView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 03/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Feed the cat"),
        Todo(title: "Buy groceries"),
        Todo(title: "Finish project"),
        Todo(title: "Call mom", isCompleted: true),
        Todo(title: "Go for a run"),
        Todo (title: "Read a book")
    ]
    var body: some View {
        List (todos) { todo in
            Text(todo.title)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
