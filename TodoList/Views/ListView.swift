//
//  ListView.swift
//  TodoList
//
//  Created by Dmytro Ryshchuk on 1/9/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is second!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
