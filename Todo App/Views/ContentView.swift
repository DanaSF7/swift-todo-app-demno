//
//  ContentView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 03/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Feed the chat"),
        Todo(title: "Buy groceries", subtitle: "Bananas,eggs,milk,potatoes"),
        Todo(title: "Finish project"),
        Todo(title: "Call mom", isCompleted: true),
        Todo(title: "Go for a run",subtitle: "2km"),
        Todo (title: "Read a book")
    ]
    @State private var showSheet = false
    var body: some View {
        NavigationStack {
            List($todos, editActions: [.all]) { $todo in //binding; free to change
                TodoRowView(todo: $todo)
            }
            .navigationTitle("Todos")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    EditButton()
                }
            
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    showSheet = true
                }label: {
                    Image(systemName: "plus")
                }
            }
        }
            
            .sheet(isPresented: $showSheet) {
                NewTodoView(sourceArray: $todos)
                    .presentationDetents([.medium])
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


