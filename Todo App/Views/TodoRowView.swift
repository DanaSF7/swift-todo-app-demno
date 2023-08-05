//
//  TodoRowView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 05/08/2023.
//

import SwiftUI

struct TodoRowView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        NavigationLink {
            // The View to open when tapped
            TodoDetailView(todo: $todo)
            
        }label:{
            // Howthe link appears visually
            
            HStack {
                Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle" )
                    .onTapGesture {
                        todo.isCompleted.toggle()
                    }
                VStack(alignment: .leading, spacing: 5) {
                    Text(todo.title)
                        .strikethrough(todo.isCompleted)
                    if !todo.subtitle.isEmpty{
                        Text(todo.subtitle)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .strikethrough(todo.isCompleted)
                        
                    }
                }
            }
        }
    }
}


struct TodoRowView_Previews: PreviewProvider {
    static var previews: some View {
        TodoRowView(todo: .constant(Todo(title: "Demo todo")))
    }
}
