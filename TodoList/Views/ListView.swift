//
//  ListView.swift
//  TodoList
//
//  Created by Dmytro Ryshchuk on 1/9/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items = [
        "This is the first title!",
        "This is second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                ListRowView(title: $0)
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
