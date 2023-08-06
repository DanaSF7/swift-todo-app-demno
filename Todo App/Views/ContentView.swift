//
//  ContentView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 03/08/2023.
//

import SwiftUI

struct ContentView: View {
    
   @StateObject var todoManager = TodoManager()
    @State private var showSheet = false
    var body: some View {
        NavigationStack {
            List($todoManager.todos, editActions: [.all]) { $todo in //binding; free to change
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
                NewTodoView(sourceArray: $todoManager.todos)
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


