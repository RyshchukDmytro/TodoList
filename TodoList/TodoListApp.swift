//
//  TodoListApp.swift
//  TodoList
//
//  Created by Dmytro Ryshchuk on 1/9/25.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
