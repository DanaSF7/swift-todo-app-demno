//
//  HowManyMoreView.swift
//  Todo App
//
//  Created by Dana Al Fanek on 15/08/2023.
//

import SwiftUI

struct HowManyMoreView: View {
    
    @ObservedObject var todoManager: TodoManager
   
    var body: some View {
        VStack{
            Text("You have completed ^[\(todoManager.numTodosDone) todos](inflect: true)!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("You have ^[\(todoManager.numTodosNotDone) todos](inflect: true) left.")
                .padding()
        }
        
    }
}

struct HowManyMoreView_Previews: PreviewProvider {
    static var previews: some View {
        HowManyMoreView(todoManager: TodoManager())
    }
}
