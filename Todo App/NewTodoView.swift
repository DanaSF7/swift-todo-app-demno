//
//  NewTodoView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 04/08/2023.
//

import SwiftUI

struct NewTodoView: View {
    
    @State private var title = ""
    @State private var subtitle = ""
    @Binding var sourceArray: [Todo]
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        Form {
            Section{
                TextField("Title", text:$title)
                TextField("subtitle", text:$subtitle)
            }
            Section{
                Button("Save"){
                    let todo = Todo(title: title, subtitle: subtitle)
                    sourceArray.append(todo)
                    dismiss()
                    
                }
                Button("Cancel", role: .destructive){
                    dismiss()
                }
            }
        }
    }
    
    struct NewTodoView_Previews: PreviewProvider {
        static var previews: some View {
            NewTodoView(sourceArray: .constant([]))
        }
    }
}
