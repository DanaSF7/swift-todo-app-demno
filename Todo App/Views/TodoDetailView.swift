//
//  TodoDetailView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 03/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo//if private and state no one can change or access
    
    var body: some View {
        Form{
            TextField("Title", text: $todo.title)
            TextField("subtitle", text: $todo.subtitle)
            Toggle("Is completed?", isOn: $todo.isCompleted)

        }
        .navigationTitle("Todo Detail")
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{ //makre the nav tab appear
            TodoDetailView(todo: .constant(Todo(title: "Feed the cat")))
        }
    }
}
