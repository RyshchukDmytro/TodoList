//
//  ItemModel.swift
//  TodoList
//
//  Created by Dmytro Ryshchuk on 1/9/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
